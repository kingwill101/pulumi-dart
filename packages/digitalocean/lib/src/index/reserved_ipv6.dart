import 'package:pulumi/pulumi.dart' as pulumi;
import 'reserved_ipv6_args.dart';

/// Provides a DigitalOcean reserved IPv6 to represent a publicly-accessible static IPv6 addresses that can be mapped to one of your Droplets.
///
/// > **NOTE:** Reserved IPv6s can be assigned to a Droplet using
/// `digitalocean.ReservedIpv6Assignment` resource only.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foobar = new digitalocean.ReservedIpv6("foobar", {regionSlug: "nyc3"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foobar = digitalocean.ReservedIpv6("foobar", region_slug="nyc3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new DigitalOcean.ReservedIpv6("foobar", new()
///     {
///         RegionSlug = "nyc3",
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
/// 		_, err := digitalocean.NewReservedIpv6(ctx, "foobar", &digitalocean.ReservedIpv6Args{
/// 			RegionSlug: pulumi.String("nyc3"),
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
/// import com.pulumi.digitalocean.ReservedIpv6;
/// import com.pulumi.digitalocean.ReservedIpv6Args;
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
///         var foobar = new ReservedIpv6("foobar", ReservedIpv6Args.builder()
///             .regionSlug("nyc3")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: digitalocean:ReservedIpv6
///     properties:
///       regionSlug: nyc3
/// ```
///
///
/// ## Import
///
/// Reserved IPv6s can be imported using the `ip`, e.g.
///
/// ```sh
/// terraform import digitalocean_reserved_ipv6.myip
/// 2409:40d0:fa:27dd:9b24:7074:7b85:eee6
/// ```
class ReservedIpv6 extends pulumi.CustomResource {
  late final pulumi.Output<int> dropletId;
  late final pulumi.Output<String> ip;
  /// The region that the reserved IPv6 needs to be reserved to.
  late final pulumi.Output<String> regionSlug;
  /// the uniform resource name for the reserved ipv6
  late final pulumi.Output<String> reservedIpv6Urn;

  /// Creates a new [ReservedIpv6].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReservedIpv6]. {@macro pulumi_index_reserved_ipv6_reserved_ipv6_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReservedIpv6(
    String name, {
    ReservedIpv6Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/reservedIpv6:ReservedIpv6',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dropletId = registerOutput<int>('dropletId');
    this.ip = registerOutput<String>('ip');
    this.regionSlug = registerOutput<String>('regionSlug');
    this.reservedIpv6Urn = registerOutput<String>('reservedIpv6Urn');
  }
}
