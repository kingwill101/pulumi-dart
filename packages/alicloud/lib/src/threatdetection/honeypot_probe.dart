import 'package:pulumi/pulumi.dart' as pulumi;
import 'honeypot_probe_args.dart';
import 'honeypot_probe_honeypot_bind_list.dart';

/// Provides a Threat Detection Honeypot Probe resource.
///
/// For information about Threat Detection Honeypot Probe and how to use it, see [What is Honeypot Probe](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createhoneypotprobe).
///
/// > **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.threatdetection.HoneypotProbe("default", {
///     uuid: "032b618f-b220-4a0d-bd37-fbdc6ef58b6a",
///     probeType: "host_probe",
///     controlNodeId: "a44e1ab3-6945-444c-889d-5bacee7056e8",
///     ping: true,
///     honeypotBindLists: [{
///         bindPortLists: [{
///             startPort: 80,
///             endPort: 80,
///         }],
///         honeypotId: "ede59ccdb1b7a2e21735d4593a6eb5ed31883af320c5ab63ab33818e94307be9",
///     }],
///     displayName: "apispec",
///     arp: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.HoneypotProbe("default",
///     uuid="032b618f-b220-4a0d-bd37-fbdc6ef58b6a",
///     probe_type="host_probe",
///     control_node_id="a44e1ab3-6945-444c-889d-5bacee7056e8",
///     ping=True,
///     honeypot_bind_lists=[{
///         "bind_port_lists": [{
///             "start_port": 80,
///             "end_port": 80,
///         }],
///         "honeypot_id": "ede59ccdb1b7a2e21735d4593a6eb5ed31883af320c5ab63ab33818e94307be9",
///     }],
///     display_name="apispec",
///     arp=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.ThreatDetection.HoneypotProbe("default", new()
///     {
///         Uuid = "032b618f-b220-4a0d-bd37-fbdc6ef58b6a",
///         ProbeType = "host_probe",
///         ControlNodeId = "a44e1ab3-6945-444c-889d-5bacee7056e8",
///         Ping = true,
///         HoneypotBindLists = new[]
///         {
///             new AliCloud.ThreatDetection.Inputs.HoneypotProbeHoneypotBindListArgs
///             {
///                 BindPortLists = new[]
///                 {
///                     new AliCloud.ThreatDetection.Inputs.HoneypotProbeHoneypotBindListBindPortListArgs
///                     {
///                         StartPort = 80,
///                         EndPort = 80,
///                     },
///                 },
///                 HoneypotId = "ede59ccdb1b7a2e21735d4593a6eb5ed31883af320c5ab63ab33818e94307be9",
///             },
///         },
///         DisplayName = "apispec",
///         Arp = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := threatdetection.NewHoneypotProbe(ctx, "default", &threatdetection.HoneypotProbeArgs{
/// 			Uuid:          pulumi.String("032b618f-b220-4a0d-bd37-fbdc6ef58b6a"),
/// 			ProbeType:     pulumi.String("host_probe"),
/// 			ControlNodeId: pulumi.String("a44e1ab3-6945-444c-889d-5bacee7056e8"),
/// 			Ping:          pulumi.Bool(true),
/// 			HoneypotBindLists: threatdetection.HoneypotProbeHoneypotBindListArray{
/// 				&threatdetection.HoneypotProbeHoneypotBindListArgs{
/// 					BindPortLists: threatdetection.HoneypotProbeHoneypotBindListBindPortListArray{
/// 						&threatdetection.HoneypotProbeHoneypotBindListBindPortListArgs{
/// 							StartPort: pulumi.Int(80),
/// 							EndPort:   pulumi.Int(80),
/// 						},
/// 					},
/// 					HoneypotId: pulumi.String("ede59ccdb1b7a2e21735d4593a6eb5ed31883af320c5ab63ab33818e94307be9"),
/// 				},
/// 			},
/// 			DisplayName: pulumi.String("apispec"),
/// 			Arp:         pulumi.Bool(true),
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
/// import com.pulumi.alicloud.threatdetection.HoneypotProbe;
/// import com.pulumi.alicloud.threatdetection.HoneypotProbeArgs;
/// import com.pulumi.alicloud.threatdetection.inputs.HoneypotProbeHoneypotBindListArgs;
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
///         var default_ = new HoneypotProbe("default", HoneypotProbeArgs.builder()
///             .uuid("032b618f-b220-4a0d-bd37-fbdc6ef58b6a")
///             .probeType("host_probe")
///             .controlNodeId("a44e1ab3-6945-444c-889d-5bacee7056e8")
///             .ping(true)
///             .honeypotBindLists(HoneypotProbeHoneypotBindListArgs.builder()
///                 .bindPortLists(HoneypotProbeHoneypotBindListBindPortListArgs.builder()
///                     .startPort(80)
///                     .endPort(80)
///                     .build())
///                 .honeypotId("ede59ccdb1b7a2e21735d4593a6eb5ed31883af320c5ab63ab33818e94307be9")
///                 .build())
///             .displayName("apispec")
///             .arp(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:threatdetection:HoneypotProbe
///     properties:
///       uuid: 032b618f-b220-4a0d-bd37-fbdc6ef58b6a
///       probeType: host_probe
///       controlNodeId: a44e1ab3-6945-444c-889d-5bacee7056e8
///       ping: true
///       honeypotBindLists:
///         - bindPortLists:
///             - startPort: 80
///               endPort: 80
///           honeypotId: ede59ccdb1b7a2e21735d4593a6eb5ed31883af320c5ab63ab33818e94307be9
///       displayName: apispec
///       arp: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Honeypot Probe can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/honeypotProbe:HoneypotProbe example <id>
/// ```
class HoneypotProbe extends pulumi.CustomResource {
  /// ARP spoofing detection.**true**: Enable **false**: Disabled
  late final pulumi.Output<bool?> arp;
  /// The ID of the management node.
  late final pulumi.Output<String> controlNodeId;
  /// Probe display name.
  late final pulumi.Output<String> displayName;
  /// Configure the service.See the following `Block HoneypotBindList`.
  late final pulumi.Output<List<HoneypotProbeHoneypotBindList>?> honeypotBindLists;
  /// The first ID of the resource
  late final pulumi.Output<String> honeypotProbeId;
  /// Ping scan detection. Value: **true**: Enable **false**: Disabled
  late final pulumi.Output<bool?> ping;
  /// Probe type, support `host_probe` and `vpc_black_hole_probe`.
  late final pulumi.Output<String> probeType;
  /// The version of the probe.
  late final pulumi.Output<String> probeVersion;
  /// The IP address of the proxy.
  late final pulumi.Output<String?> proxyIp;
  /// Listen to the IP address list.
  late final pulumi.Output<List<String>> serviceIpLists;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// Machine uuid, **probe_type** is `host_probe`. This value cannot be empty.
  late final pulumi.Output<String?> uuid;
  /// The ID of the VPC. **probe_type** is `vpc_black_hole_probe`. This value cannot be empty.
  late final pulumi.Output<String?> vpcId;

  /// Creates a new [HoneypotProbe].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HoneypotProbe]. {@macro pulumi_threatdetection_honeypot_probe_honeypot_probe_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HoneypotProbe(
    String name, {
    HoneypotProbeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/honeypotProbe:HoneypotProbe',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arp = registerOutput<bool?>('arp');
    this.controlNodeId = registerOutput<String>('controlNodeId');
    this.displayName = registerOutput<String>('displayName');
    this.honeypotBindLists = registerOutput<List<HoneypotProbeHoneypotBindList>?>('honeypotBindLists');
    this.honeypotProbeId = registerOutput<String>('honeypotProbeId');
    this.ping = registerOutput<bool?>('ping');
    this.probeType = registerOutput<String>('probeType');
    this.probeVersion = registerOutput<String>('probeVersion');
    this.proxyIp = registerOutput<String?>('proxyIp');
    this.serviceIpLists = registerOutput<List<String>>('serviceIpLists');
    this.status = registerOutput<String>('status');
    this.uuid = registerOutput<String?>('uuid');
    this.vpcId = registerOutput<String?>('vpcId');
  }
}
