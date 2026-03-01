import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_device_args.dart';

/// Manages a Linode Firewall Device.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-firewall-device).
///
/// **NOTICE:** Attaching a Linode Firewall Device to a `linode.Firewall` resource with user-defined `linodes` may cause device conflicts.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const myFirewall = new linode.Firewall("my_firewall", {
///     label: "my_firewall",
///     inbounds: [{
///         label: "http",
///         action: "ACCEPT",
///         protocol: "TCP",
///         ports: "80",
///         ipv4s: ["0.0.0.0/0"],
///         ipv6s: ["::/0"],
///     }],
///     inboundPolicy: "DROP",
///     outboundPolicy: "ACCEPT",
/// });
/// const myInstance = new linode.Instance("my_instance", {
///     label: "my_instance",
///     region: "us-southeast",
///     type: "g6-standard-1",
/// });
/// const myDevice = new linode.FirewallDevice("my_device", {
///     firewallId: myFirewall.id,
///     entityId: myInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_firewall = linode.Firewall("my_firewall",
///     label="my_firewall",
///     inbounds=[{
///         "label": "http",
///         "action": "ACCEPT",
///         "protocol": "TCP",
///         "ports": "80",
///         "ipv4s": ["0.0.0.0/0"],
///         "ipv6s": ["::/0"],
///     }],
///     inbound_policy="DROP",
///     outbound_policy="ACCEPT")
/// my_instance = linode.Instance("my_instance",
///     label="my_instance",
///     region="us-southeast",
///     type="g6-standard-1")
/// my_device = linode.FirewallDevice("my_device",
///     firewall_id=my_firewall.id,
///     entity_id=my_instance.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myFirewall = new Linode.Firewall("my_firewall", new()
///     {
///         Label = "my_firewall",
///         Inbounds = new[]
///         {
///             new Linode.Inputs.FirewallInboundArgs
///             {
///                 Label = "http",
///                 Action = "ACCEPT",
///                 Protocol = "TCP",
///                 Ports = "80",
///                 Ipv4s = new[]
///                 {
///                     "0.0.0.0/0",
///                 },
///                 Ipv6s = new[]
///                 {
///                     "::/0",
///                 },
///             },
///         },
///         InboundPolicy = "DROP",
///         OutboundPolicy = "ACCEPT",
///     });
///
///     var myInstance = new Linode.Instance("my_instance", new()
///     {
///         Label = "my_instance",
///         Region = "us-southeast",
///         Type = "g6-standard-1",
///     });
///
///     var myDevice = new Linode.FirewallDevice("my_device", new()
///     {
///         FirewallId = myFirewall.Id,
///         EntityId = myInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myFirewall, err := linode.NewFirewall(ctx, "my_firewall", &linode.FirewallArgs{
/// 			Label: pulumi.String("my_firewall"),
/// 			Inbounds: linode.FirewallInboundArray{
/// 				&linode.FirewallInboundArgs{
/// 					Label:    pulumi.String("http"),
/// 					Action:   pulumi.String("ACCEPT"),
/// 					Protocol: pulumi.String("TCP"),
/// 					Ports:    pulumi.String("80"),
/// 					Ipv4s: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 					},
/// 					Ipv6s: pulumi.StringArray{
/// 						pulumi.String("::/0"),
/// 					},
/// 				},
/// 			},
/// 			InboundPolicy:  pulumi.String("DROP"),
/// 			OutboundPolicy: pulumi.String("ACCEPT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myInstance, err := linode.NewInstance(ctx, "my_instance", &linode.InstanceArgs{
/// 			Label:  pulumi.String("my_instance"),
/// 			Region: pulumi.String("us-southeast"),
/// 			Type:   pulumi.String("g6-standard-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewFirewallDevice(ctx, "my_device", &linode.FirewallDeviceArgs{
/// 			FirewallId: myFirewall.ID(),
/// 			EntityId:   myInstance.ID(),
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
/// import com.pulumi.linode.Firewall;
/// import com.pulumi.linode.FirewallArgs;
/// import com.pulumi.linode.inputs.FirewallInboundArgs;
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.FirewallDevice;
/// import com.pulumi.linode.FirewallDeviceArgs;
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
///         var myFirewall = new Firewall("myFirewall", FirewallArgs.builder()
///             .label("my_firewall")
///             .inbounds(FirewallInboundArgs.builder()
///                 .label("http")
///                 .action("ACCEPT")
///                 .protocol("TCP")
///                 .ports("80")
///                 .ipv4s("0.0.0.0/0")
///                 .ipv6s("::/0")
///                 .build())
///             .inboundPolicy("DROP")
///             .outboundPolicy("ACCEPT")
///             .build());
///
///         var myInstance = new Instance("myInstance", InstanceArgs.builder()
///             .label("my_instance")
///             .region("us-southeast")
///             .type("g6-standard-1")
///             .build());
///
///         var myDevice = new FirewallDevice("myDevice", FirewallDeviceArgs.builder()
///             .firewallId(myFirewall.id())
///             .entityId(myInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myDevice:
///     type: linode:FirewallDevice
///     name: my_device
///     properties:
///       firewallId: ${myFirewall.id}
///       entityId: ${myInstance.id}
///   myFirewall:
///     type: linode:Firewall
///     name: my_firewall
///     properties:
///       label: my_firewall
///       inbounds:
///         - label: http
///           action: ACCEPT
///           protocol: TCP
///           ports: '80'
///           ipv4s:
///             - 0.0.0.0/0
///           ipv6s:
///             - ::/0
///       inboundPolicy: DROP
///       outboundPolicy: ACCEPT
///   myInstance:
///     type: linode:Instance
///     name: my_instance
///     properties:
///       label: my_instance
///       region: us-southeast
///       type: g6-standard-1
/// ```
///
///
/// ## Import
///
/// Firewall Device can be imported using the `firewall_id` followed by the Firewall Device `id` separated by a comma, e.g.
///
/// ```sh
/// $ pulumi import linode:index/firewallDevice:FirewallDevice my_device_duplicated 1234567,7654321
/// ```
class FirewallDeviceResource extends pulumi.CustomResource {
  /// When the Firewall Device was last created.
  late final pulumi.Output<String> created;
  /// The unique ID of the entity to attach.
  late final pulumi.Output<int> entityId;
  /// The type of the entity to attach. (default: `linode`)
  late final pulumi.Output<String> entityType;
  /// The unique ID of the target Firewall.
  late final pulumi.Output<int> firewallId;
  /// When the Firewall Device was last updated.
  late final pulumi.Output<String> updated;

  /// Creates a new [FirewallDeviceResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallDeviceResource]. {@macro pulumi_index_firewall_device_firewall_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallDeviceResource(
    String name, {
    FirewallDeviceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/firewallDevice:FirewallDevice',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.created = registerOutput<String>('created');
    this.entityId = registerOutput<int>('entityId');
    this.entityType = registerOutput<String>('entityType');
    this.firewallId = registerOutput<int>('firewallId');
    this.updated = registerOutput<String>('updated');
  }
}
