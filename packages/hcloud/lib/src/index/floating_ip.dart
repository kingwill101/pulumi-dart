import 'package:pulumi/pulumi.dart' as pulumi;
import 'floating_ip_args.dart';

/// Provides a Hetzner Cloud Floating IP to represent a publicly-accessible static IP address that can be mapped to one of your servers.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const node1 = new hcloud.Server("node1", {
///     name: "node1",
///     image: "debian-12",
///     serverType: "cx23",
/// });
/// const master = new hcloud.FloatingIp("master", {
///     type: "ipv4",
///     serverId: node1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// node1 = hcloud.Server("node1",
///     name="node1",
///     image="debian-12",
///     server_type="cx23")
/// master = hcloud.FloatingIp("master",
///     type="ipv4",
///     server_id=node1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var node1 = new HCloud.Server("node1", new()
///     {
///         Name = "node1",
///         Image = "debian-12",
///         ServerType = "cx23",
///     });
///
///     var master = new HCloud.FloatingIp("master", new()
///     {
///         Type = "ipv4",
///         ServerId = node1.Id,
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
/// 		node1, err := hcloud.NewServer(ctx, "node1", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("node1"),
/// 			Image:      pulumi.String("debian-12"),
/// 			ServerType: pulumi.String("cx23"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewFloatingIp(ctx, "master", &hcloud.FloatingIpArgs{
/// 			Type:     pulumi.String("ipv4"),
/// 			ServerId: node1.ID(),
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
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.hcloud.FloatingIp;
/// import com.pulumi.hcloud.FloatingIpArgs;
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
///         var node1 = new Server("node1", ServerArgs.builder()
///             .name("node1")
///             .image("debian-12")
///             .serverType("cx23")
///             .build());
///
///         var master = new FloatingIp("master", FloatingIpArgs.builder()
///             .type("ipv4")
///             .serverId(node1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   node1:
///     type: hcloud:Server
///     properties:
///       name: node1
///       image: debian-12
///       serverType: cx23
///   master:
///     type: hcloud:FloatingIp
///     properties:
///       type: ipv4
///       serverId: ${node1.id}
/// ```
///
///
/// ## Import
///
/// Floating IPs can be imported using its `id`:
///
/// ```sh
/// $ pulumi import hcloud:index/floatingIp:FloatingIp example "$FLOATING_IP_ID"
/// ```
class FloatingIp extends pulumi.CustomResource {
  /// Enable or disable delete protection. See "Delete Protection" in the Provider Docs for details.
  late final pulumi.Output<bool?> deleteProtection;
  /// Description of the Floating IP.
  late final pulumi.Output<String?> description;
  /// Name of home location (routing is optimized for that location). Optional if `server_id` argument is passed.
  late final pulumi.Output<String> homeLocation;
  /// (string) IP Address of the Floating IP.
  late final pulumi.Output<String> ipAddress;
  /// (string) IPv6 subnet. (Only set if `type` is `ipv6`)
  late final pulumi.Output<String> ipNetwork;
  /// User-defined labels (key-value pairs) should be created with.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Name of the Floating IP.
  late final pulumi.Output<String> name;
  /// Server to assign the Floating IP to. Optional if `home_location` argument is passed.
  late final pulumi.Output<int> serverId;
  /// Type of the Floating IP. `ipv4` `ipv6`
  late final pulumi.Output<String> type;

  /// Creates a new [FloatingIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FloatingIp]. {@macro pulumi_index_floating_ip_floating_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FloatingIp(
    String name, {
    FloatingIpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/floatingIp:FloatingIp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deleteProtection = registerOutput<bool?>('deleteProtection');
    this.description = registerOutput<String?>('description');
    this.homeLocation = registerOutput<String>('homeLocation');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.ipNetwork = registerOutput<String>('ipNetwork');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.serverId = registerOutput<int>('serverId');
    this.type = registerOutput<String>('type');
  }
}
