import 'package:pulumi/pulumi.dart' as pulumi;
import 'floating_ip_args.dart';

/// > **Deprecated:** DigitalOcean Floating IPs have been renamed reserved IPs. This resource will be removed in a future release. Please use `digitalocean.ReservedIp` instead.
///
/// Provides a DigitalOcean Floating IP to represent a publicly-accessible static IP addresses that can be mapped to one of your Droplets.
///
/// > **NOTE:** Floating IPs can be assigned to a Droplet either directly on the `digitalocean.FloatingIp` resource by setting a `droplet_id` or using the `digitalocean.FloatingIpAssignment` resource, but the two cannot be used together.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = new digitalocean.Droplet("foobar", {
///     name: "baz",
///     size: digitalocean.DropletSlug.DropletS1VCPU1GB,
///     image: "ubuntu-18-04-x64",
///     region: digitalocean.Region.SGP1,
///     ipv6: true,
///     privateNetworking: true,
/// });
/// const foobarFloatingIp = new digitalocean.FloatingIp("foobar", {
///     dropletId: foobar.id,
///     region: foobar.region,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.Droplet("foobar",
///     name="baz",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU1_GB,
///     image="ubuntu-18-04-x64",
///     region=digitalocean.Region.SGP1,
///     ipv6=True,
///     private_networking=True)
/// foobar_floating_ip = digitalocean.FloatingIp("foobar",
///     droplet_id=foobar.id,
///     region=foobar.region)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new DigitalOcean.Droplet("foobar", new()
///     {
///         Name = "baz",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU1GB,
///         Image = "ubuntu-18-04-x64",
///         Region = DigitalOcean.Region.SGP1,
///         Ipv6 = true,
///         PrivateNetworking = true,
///     });
///
///     var foobarFloatingIp = new DigitalOcean.FloatingIp("foobar", new()
///     {
///         DropletId = foobar.Id,
///         Region = foobar.Region,
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
/// 		foobar, err := digitalocean.NewDroplet(ctx, "foobar", &digitalocean.DropletArgs{
/// 			Name:              pulumi.String("baz"),
/// 			Size:              pulumi.String(digitalocean.DropletSlugDropletS1VCPU1GB),
/// 			Image:             pulumi.String("ubuntu-18-04-x64"),
/// 			Region:            pulumi.String(digitalocean.RegionSGP1),
/// 			Ipv6:              pulumi.Bool(true),
/// 			PrivateNetworking: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewFloatingIp(ctx, "foobar", &digitalocean.FloatingIpArgs{
/// 			DropletId: foobar.ID(),
/// 			Region:    foobar.Region,
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
/// import com.pulumi.digitalocean.Droplet;
/// import com.pulumi.digitalocean.DropletArgs;
/// import com.pulumi.digitalocean.FloatingIp;
/// import com.pulumi.digitalocean.FloatingIpArgs;
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
///         var foobar = new Droplet("foobar", DropletArgs.builder()
///             .name("baz")
///             .size("s-1vcpu-1gb")
///             .image("ubuntu-18-04-x64")
///             .region("sgp1")
///             .ipv6(true)
///             .privateNetworking(true)
///             .build());
///
///         var foobarFloatingIp = new FloatingIp("foobarFloatingIp", FloatingIpArgs.builder()
///             .dropletId(foobar.id())
///             .region(foobar.region())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:Droplet
///     properties:
///       name: baz
///       size: s-1vcpu-1gb
///       image: ubuntu-18-04-x64
///       region: sgp1
///       ipv6: true
///       privateNetworking: true
///   foobarFloatingIp:
///     type: digitalocean:FloatingIp
///     name: foobar
///     properties:
///       dropletId: ${foobar.id}
///       region: ${foobar.region}
/// ```
///
///
/// ## Import
///
/// Floating IPs can be imported using the `ip`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/floatingIp:FloatingIp myip 192.168.0.1
/// ```
class FloatingIp extends pulumi.CustomResource {
  /// The ID of Droplet that the Floating IP will be assigned to.
  late final pulumi.Output<int?> dropletId;
  /// The uniform resource name of the floating ip
  late final pulumi.Output<String> floatingIpUrn;
  /// The IP Address of the resource
  late final pulumi.Output<String> ipAddress;
  /// The region that the Floating IP is reserved to.
  late final pulumi.Output<String> region;

  /// Creates a new [FloatingIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FloatingIp]. {@macro pulumi_index_floating_ip_floating_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FloatingIp(
    String name, {
    FloatingIpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/floatingIp:FloatingIp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dropletId = registerOutput<int?>('dropletId');
    this.floatingIpUrn = registerOutput<String>('floatingIpUrn');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.region = registerOutput<String>('region');
  }
}
