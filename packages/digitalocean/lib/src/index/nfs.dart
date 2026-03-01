import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_args.dart';

/// Provides a DigitalOcean NFS share which can be mounted to Droplets to provide shared storage.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = new digitalocean.Vpc("example", {
///     name: "example-vpc",
///     region: "nyc1",
/// });
/// const exampleNfs = new digitalocean.Nfs("example", {
///     region: "nyc1",
///     name: "example-nfs",
///     size: 50,
///     vpcId: example.id,
///     performanceTier: "standard",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.Vpc("example",
///     name="example-vpc",
///     region="nyc1")
/// example_nfs = digitalocean.Nfs("example",
///     region="nyc1",
///     name="example-nfs",
///     size=50,
///     vpc_id=example.id,
///     performance_tier="standard")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new DigitalOcean.Vpc("example", new()
///     {
///         Name = "example-vpc",
///         Region = "nyc1",
///     });
///
///     var exampleNfs = new DigitalOcean.Nfs("example", new()
///     {
///         Region = "nyc1",
///         Name = "example-nfs",
///         Size = 50,
///         VpcId = example.Id,
///         PerformanceTier = "standard",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := digitalocean.NewVpc(ctx, "example", &digitalocean.VpcArgs{
/// 			Name:   pulumi.String("example-vpc"),
/// 			Region: pulumi.String("nyc1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewNfs(ctx, "example", &digitalocean.NfsArgs{
/// 			Region:          pulumi.String("nyc1"),
/// 			Name:            pulumi.String("example-nfs"),
/// 			Size:            pulumi.Int(50),
/// 			VpcId:           example.ID(),
/// 			PerformanceTier: pulumi.String("standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.Vpc;
/// import com.pulumi.digitalocean.VpcArgs;
/// import com.pulumi.digitalocean.Nfs;
/// import com.pulumi.digitalocean.NfsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Vpc("example", VpcArgs.builder()
///             .name("example-vpc")
///             .region("nyc1")
///             .build());
///
///         var exampleNfs = new Nfs("exampleNfs", NfsArgs.builder()
///             .region("nyc1")
///             .name("example-nfs")
///             .size(50)
///             .vpcId(example.id())
///             .performanceTier("standard")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:Vpc
///     properties:
///       name: example-vpc
///       region: nyc1
///   exampleNfs:
///     type: digitalocean:Nfs
///     name: example
///     properties:
///       region: nyc1
///       name: example-nfs
///       size: 50
///       vpcId: ${example.id}
///       performanceTier: standard
/// ```
///
///
/// ## Import
///
/// NFS shares can be imported using the `share id` and the `region` , e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/nfs:Nfs foobar 506f78a4-e098-11e5-ad9f-000f53306ae1,atl1
/// ```
class Nfs extends pulumi.CustomResource {
  /// The host IP of the NFS server accessible from the associated VPC.
  late final pulumi.Output<String> host;
  /// The mount path for accessing the NFS share.
  late final pulumi.Output<String> mountPath;
  /// A name for the NFS share. Must be lowercase and composed only of numbers, letters, and "-", up to a limit of 64 characters. The name must begin with a letter.
  late final pulumi.Output<String> name;
  /// The performance tier for the NFS share. Can be `standard` or `high`. Defaults to `standard`. Changing this will cause the performance tier to be switched.
  late final pulumi.Output<String?> performanceTier;
  /// The region where the NFS share will be created.
  late final pulumi.Output<String> region;
  /// The size of the NFS share in GiB. Minimum size is 50 GiB.
  late final pulumi.Output<int> size;
  /// The current status of the NFS share.
  late final pulumi.Output<String> status;
  late final pulumi.Output<List<String>?> tags;
  /// The ID of the VPC where the NFS share will be created.
  late final pulumi.Output<String> vpcId;
  late final pulumi.Output<List<String>> vpcIds;

  /// Creates a new [Nfs].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Nfs]. {@macro pulumi_index_nfs_nfs_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Nfs(
    String name, {
    NfsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/nfs:Nfs',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.host = registerOutput<String>('host');
    this.mountPath = registerOutput<String>('mountPath');
    this.name = registerOutput<String>('name');
    this.performanceTier = registerOutput<String?>('performanceTier');
    this.region = registerOutput<String>('region');
    this.size = registerOutput<int>('size');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<List<String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcIds = registerOutput<List<String>>('vpcIds');
  }
}
