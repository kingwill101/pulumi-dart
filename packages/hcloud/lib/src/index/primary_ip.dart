import 'package:pulumi/pulumi.dart' as pulumi;
import 'primary_ip_args.dart';

/// Provides a Hetzner Cloud Primary IP to represent a publicly-accessible static IP address that can be mapped to one of your servers.
///
/// If a server is getting created, it has to have a primary ip. If a server is getting created without defining primary ips, two of them (one ipv4 and one ipv6) getting created & attached.
/// Currently, Primary IPs can be only attached to servers.
///
/// ## Deprecations
///
/// ### `datacenter` attribute
///
/// The `datacenter` attribute is deprecated, use the `location` attribute instead.
///
/// See our the [API changelog](https://docs.hetzner.cloud/changelog#2025-12-16-phasing-out-datacenters) for more details.
///
/// > Please upgrade to `v1.58.0+` of the provider to avoid issues once the Hetzner Cloud API no longer accepts
/// and returns the `datacenter` attribute. This version of the provider remains backward compatible by preserving
/// the `datacenter` value in the state and by extracting the `location` name from the `datacenter` attribute when
/// communicating with the API.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const main = new hcloud.PrimaryIp("main", {
///     name: "primary_ip_test",
///     datacenter: "fsn1-dc14",
///     type: "ipv4",
///     assigneeType: "server",
///     autoDelete: true,
///     labels: {
///         hallo: "welt",
///     },
/// });
/// // Link a server to a primary IP
/// const serverTest = new hcloud.Server("server_test", {
///     name: "test-server",
///     image: "ubuntu-24.04",
///     serverType: "cx23",
///     datacenter: "fsn1-dc14",
///     labels: {
///         test: "tessst1",
///     },
///     publicNets: [{
///         ipv4: main.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// main = hcloud.PrimaryIp("main",
///     name="primary_ip_test",
///     datacenter="fsn1-dc14",
///     type="ipv4",
///     assignee_type="server",
///     auto_delete=True,
///     labels={
///         "hallo": "welt",
///     })
/// # Link a server to a primary IP
/// server_test = hcloud.Server("server_test",
///     name="test-server",
///     image="ubuntu-24.04",
///     server_type="cx23",
///     datacenter="fsn1-dc14",
///     labels={
///         "test": "tessst1",
///     },
///     public_nets=[{
///         "ipv4": main.id,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new HCloud.PrimaryIp("main", new()
///     {
///         Name = "primary_ip_test",
///         Datacenter = "fsn1-dc14",
///         Type = "ipv4",
///         AssigneeType = "server",
///         AutoDelete = true,
///         Labels =
///         {
///             { "hallo", "welt" },
///         },
///     });
///
///     // Link a server to a primary IP
///     var serverTest = new HCloud.Server("server_test", new()
///     {
///         Name = "test-server",
///         Image = "ubuntu-24.04",
///         ServerType = "cx23",
///         Datacenter = "fsn1-dc14",
///         Labels =
///         {
///             { "test", "tessst1" },
///         },
///         PublicNets = new[]
///         {
///             new HCloud.Inputs.ServerPublicNetArgs
///             {
///                 Ipv4 = main.Id,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := hcloud.NewPrimaryIp(ctx, "main", &hcloud.PrimaryIpArgs{
/// 			Name:         pulumi.String("primary_ip_test"),
/// 			Datacenter:   pulumi.String("fsn1-dc14"),
/// 			Type:         pulumi.String("ipv4"),
/// 			AssigneeType: pulumi.String("server"),
/// 			AutoDelete:   pulumi.Bool(true),
/// 			Labels: pulumi.StringMap{
/// 				"hallo": pulumi.String("welt"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Link a server to a primary IP
/// 		_, err = hcloud.NewServer(ctx, "server_test", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("test-server"),
/// 			Image:      pulumi.String("ubuntu-24.04"),
/// 			ServerType: pulumi.String("cx23"),
/// 			Datacenter: pulumi.String("fsn1-dc14"),
/// 			Labels: pulumi.StringMap{
/// 				"test": pulumi.String("tessst1"),
/// 			},
/// 			PublicNets: hcloud.ServerPublicNetArray{
/// 				&hcloud.ServerPublicNetArgs{
/// 					Ipv4: main.ID(),
/// 				},
/// 			},
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
/// import com.pulumi.hcloud.PrimaryIp;
/// import com.pulumi.hcloud.PrimaryIpArgs;
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.hcloud.inputs.ServerPublicNetArgs;
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
///         var main = new PrimaryIp("main", PrimaryIpArgs.builder()
///             .name("primary_ip_test")
///             .datacenter("fsn1-dc14")
///             .type("ipv4")
///             .assigneeType("server")
///             .autoDelete(true)
///             .labels(Map.of("hallo", "welt"))
///             .build());
///
///         // Link a server to a primary IP
///         var serverTest = new Server("serverTest", ServerArgs.builder()
///             .name("test-server")
///             .image("ubuntu-24.04")
///             .serverType("cx23")
///             .datacenter("fsn1-dc14")
///             .labels(Map.of("test", "tessst1"))
///             .publicNets(ServerPublicNetArgs.builder()
///                 .ipv4(main.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: hcloud:PrimaryIp
///     properties:
///       name: primary_ip_test
///       datacenter: fsn1-dc14
///       type: ipv4
///       assigneeType: server
///       autoDelete: true
///       labels:
///         hallo: welt
///   # Link a server to a primary IP
///   serverTest:
///     type: hcloud:Server
///     name: server_test
///     properties:
///       name: test-server
///       image: ubuntu-24.04
///       serverType: cx23
///       datacenter: fsn1-dc14
///       labels:
///         test: tessst1
///       publicNets:
///         - ipv4: ${main.id}
/// ```
///
///
/// ## Import
///
/// Primary IPs can be imported using its `id`:
///
/// ```sh
/// $ pulumi import hcloud:index/primaryIp:PrimaryIp example "$PRIMARY_IP_ID"
/// ```
class PrimaryIp extends pulumi.CustomResource {
  /// ID of the assigned resource.
  late final pulumi.Output<int> assigneeId;
  /// The type of the assigned resource. Currently supported: `server`
  late final pulumi.Output<String> assigneeType;
  /// Whether auto delete is enabled.
  /// `Important note:`It is recommended to set `auto_delete` to `false`, because if a server assigned to the managed ip is getting deleted, it will also delete the primary IP which will break the TF state.
  late final pulumi.Output<bool> autoDelete;
  /// The datacenter name to create the resource in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  late final pulumi.Output<String> datacenter;
  /// Whether delete protection is enabled. See "Delete Protection" in the Provider Docs for details.
  ///
  /// Note: At least one of `location`, `datacenter` or `assignee_id` is required.
  late final pulumi.Output<bool?> deleteProtection;
  /// (string) IP Address of the Primary IP.
  late final pulumi.Output<String> ipAddress;
  /// (string) IPv6 subnet of the Primary IP for IPv6 addresses. (Only set if `type` is `ipv6`)
  late final pulumi.Output<String> ipNetwork;
  /// User-defined labels (key-value pairs).
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location name to create the resource in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  late final pulumi.Output<String> location;
  /// Name of the Primary IP.
  late final pulumi.Output<String> name;
  /// Type of the Primary IP. `ipv4` or `ipv6`
  late final pulumi.Output<String> type;

  /// Creates a new [PrimaryIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrimaryIp]. {@macro pulumi_index_primary_ip_primary_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrimaryIp(
    String name, {
    PrimaryIpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/primaryIp:PrimaryIp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assigneeId = registerOutput<int>('assigneeId');
    this.assigneeType = registerOutput<String>('assigneeType');
    this.autoDelete = registerOutput<bool>('autoDelete');
    this.datacenter = registerOutput<String>('datacenter');
    this.deleteProtection = registerOutput<bool?>('deleteProtection');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.ipNetwork = registerOutput<String>('ipNetwork');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
  }
}
