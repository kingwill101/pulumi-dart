import 'package:pulumi/pulumi.dart' as pulumi;
import 'honeypot_node_args.dart';
import 'honeypot_node_state.dart';

/// Provides a Threat Detection Honeypot Node resource.
///
/// For information about Threat Detection Honeypot Node and how to use it, see [What is Honeypot Node](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createhoneypotnode).
///
/// &gt; **NOTE:** Available since v1.195.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const _default = new alicloud.threatdetection.HoneypotNode("default", {
///     nodeName: name,
///     availableProbeNum: 20,
///     securityGroupProbeIpLists: ["0.0.0.0/0"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.threatdetection.HoneypotNode("default",
///     node_name=name,
///     available_probe_num=20,
///     security_group_probe_ip_lists=["0.0.0.0/0"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var @default = new AliCloud.ThreatDetection.HoneypotNode("default", new()
///     {
///         NodeName = name,
///         AvailableProbeNum = 20,
///         SecurityGroupProbeIpLists = new[]
///         {
///             "0.0.0.0/0",
///         },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := threatdetection.NewHoneypotNode(ctx, "default", &threatdetection.HoneypotNodeArgs{
/// 			NodeName:          pulumi.String(name),
/// 			AvailableProbeNum: pulumi.Int(20),
/// 			SecurityGroupProbeIpLists: pulumi.StringArray{
/// 				pulumi.String("0.0.0.0/0"),
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
/// import com.pulumi.alicloud.threatdetection.HoneypotNode;
/// import com.pulumi.alicloud.threatdetection.HoneypotNodeArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf_example");
///         var default_ = new HoneypotNode("default", HoneypotNodeArgs.builder()
///             .nodeName(name)
///             .availableProbeNum(20)
///             .securityGroupProbeIpLists("0.0.0.0/0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   default:
///     type: alicloud:threatdetection:HoneypotNode
///     properties:
///       nodeName: ${name}
///       availableProbeNum: 20
///       securityGroupProbeIpLists:
///         - 0.0.0.0/0
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Honeypot Node can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/honeypotNode:HoneypotNode example <id>
/// ```
class HoneypotNode extends pulumi.CustomResource {
  /// Whether to allow honeypot access to the external network. Value:-**true**: Allow-**false**: Disabled
  late final pulumi.Output<bool?> allowHoneypotAccessInternet;

  /// Number of probes available.
  late final pulumi.Output<int> availableProbeNum;

  /// The creation time of the resource
  late final pulumi.Output<String> createTime;

  /// Management node name.
  late final pulumi.Output<String> nodeName;

  /// Release the collection of network segments.
  late final pulumi.Output<List<String>?> securityGroupProbeIpLists;

  /// The status of the resource
  late final pulumi.Output<int> status;

  /// Creates a new [HoneypotNode].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HoneypotNode]. {@macro pulumi_threatdetection_honeypot_node_honeypot_node_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HoneypotNode(
    String name, {
    HoneypotNodeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:threatdetection/honeypotNode:HoneypotNode',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowHoneypotAccessInternet = registerOutput<bool?>(
      'allowHoneypotAccessInternet',
    );
    availableProbeNum = registerOutput<int>('availableProbeNum');
    createTime = registerOutput<String>('createTime');
    nodeName = registerOutput<String>('nodeName');
    securityGroupProbeIpLists = registerOutput<List<String>?>(
      'securityGroupProbeIpLists',
    );
    status = registerOutput<int>('status');
  }

  /// Gets an existing [HoneypotNode] resource's state with the given [name] and [id].
  static HoneypotNode get(
    String name,
    pulumi.Input<String> id, {
    HoneypotNodeState? state,
  }) {
    return HoneypotNode._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HoneypotNode._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:threatdetection/honeypotNode:HoneypotNode',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowHoneypotAccessInternet = registerOutput<bool?>(
      'allowHoneypotAccessInternet',
    );
    availableProbeNum = registerOutput<int>('availableProbeNum');
    createTime = registerOutput<String>('createTime');
    nodeName = registerOutput<String>('nodeName');
    securityGroupProbeIpLists = registerOutput<List<String>?>(
      'securityGroupProbeIpLists',
    );
    status = registerOutput<int>('status');
  }
}
