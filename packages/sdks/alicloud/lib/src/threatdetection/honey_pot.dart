import 'package:pulumi/pulumi.dart' as pulumi;
import 'honey_pot_args.dart';
import 'honey_pot_state.dart';

/// Provides a Threat Detection Honey Pot resource.
///
/// For information about Threat Detection Honey Pot and how to use it, see [What is Honey Pot](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createhoneypot).
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
/// const name = config.get("name") || "tfexample";
/// const _default = alicloud.threatdetection.getHoneypotImages({
///     nameRegex: "^ruoyi",
/// });
/// const defaultHoneypotNode = new alicloud.threatdetection.HoneypotNode("default", {
///     nodeName: name,
///     availableProbeNum: 20,
///     securityGroupProbeIpLists: ["0.0.0.0/0"],
/// });
/// const defaultHoneyPot = new alicloud.threatdetection.HoneyPot("default", {
///     honeypotImageName: _default.then(_default => _default.images?.[0]?.honeypotImageName),
///     honeypotImageId: _default.then(_default => _default.images?.[0]?.honeypotImageId),
///     honeypotName: name,
///     nodeId: defaultHoneypotNode.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// default = alicloud.threatdetection.get_honeypot_images(name_regex="^ruoyi")
/// default_honeypot_node = alicloud.threatdetection.HoneypotNode("default",
///     node_name=name,
///     available_probe_num=20,
///     security_group_probe_ip_lists=["0.0.0.0/0"])
/// default_honey_pot = alicloud.threatdetection.HoneyPot("default",
///     honeypot_image_name=default.images[0].honeypot_image_name,
///     honeypot_image_id=default.images[0].honeypot_image_id,
///     honeypot_name=name,
///     node_id=default_honeypot_node.id)
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
///     var name = config.Get("name") ?? "tfexample";
///     var @default = AliCloud.ThreatDetection.GetHoneypotImages.Invoke(new()
///     {
///         NameRegex = "^ruoyi",
///     });
///
///     var defaultHoneypotNode = new AliCloud.ThreatDetection.HoneypotNode("default", new()
///     {
///         NodeName = name,
///         AvailableProbeNum = 20,
///         SecurityGroupProbeIpLists = new[]
///         {
///             "0.0.0.0/0",
///         },
///     });
///
///     var defaultHoneyPot = new AliCloud.ThreatDetection.HoneyPot("default", new()
///     {
///         HoneypotImageName = @default.Apply(@default => @default.Apply(getHoneypotImagesResult => getHoneypotImagesResult.Images[0]?.HoneypotImageName)),
///         HoneypotImageId = @default.Apply(@default => @default.Apply(getHoneypotImagesResult => getHoneypotImagesResult.Images[0]?.HoneypotImageId)),
///         HoneypotName = name,
///         NodeId = defaultHoneypotNode.Id,
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
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := threatdetection.GetHoneypotImages(ctx, &threatdetection.GetHoneypotImagesArgs{
/// 			NameRegex: pulumi.StringRef("^ruoyi"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHoneypotNode, err := threatdetection.NewHoneypotNode(ctx, "default", &threatdetection.HoneypotNodeArgs{
/// 			NodeName:          pulumi.String(name),
/// 			AvailableProbeNum: pulumi.Int(20),
/// 			SecurityGroupProbeIpLists: pulumi.StringArray{
/// 				pulumi.String("0.0.0.0/0"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = threatdetection.NewHoneyPot(ctx, "default", &threatdetection.HoneyPotArgs{
/// 			HoneypotImageName: pulumi.String(_default.Images[0].HoneypotImageName),
/// 			HoneypotImageId:   pulumi.String(_default.Images[0].HoneypotImageId),
/// 			HoneypotName:      pulumi.String(name),
/// 			NodeId:            defaultHoneypotNode.ID(),
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
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetHoneypotImagesArgs;
/// import com.pulumi.alicloud.threatdetection.HoneypotNode;
/// import com.pulumi.alicloud.threatdetection.HoneypotNodeArgs;
/// import com.pulumi.alicloud.threatdetection.HoneyPot;
/// import com.pulumi.alicloud.threatdetection.HoneyPotArgs;
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
///         final var name = config.get("name").orElse("tfexample");
///         final var default = ThreatdetectionFunctions.getHoneypotImages(GetHoneypotImagesArgs.builder()
///             .nameRegex("^ruoyi")
///             .build());
///
///         var defaultHoneypotNode = new HoneypotNode("defaultHoneypotNode", HoneypotNodeArgs.builder()
///             .nodeName(name)
///             .availableProbeNum(20)
///             .securityGroupProbeIpLists("0.0.0.0/0")
///             .build());
///
///         var defaultHoneyPot = new HoneyPot("defaultHoneyPot", HoneyPotArgs.builder()
///             .honeypotImageName(default_.images()[0].honeypotImageName())
///             .honeypotImageId(default_.images()[0].honeypotImageId())
///             .honeypotName(name)
///             .nodeId(defaultHoneypotNode.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexample
/// resources:
///   defaultHoneypotNode:
///     type: alicloud:threatdetection:HoneypotNode
///     name: default
///     properties:
///       nodeName: ${name}
///       availableProbeNum: 20
///       securityGroupProbeIpLists:
///         - 0.0.0.0/0
///   defaultHoneyPot:
///     type: alicloud:threatdetection:HoneyPot
///     name: default
///     properties:
///       honeypotImageName: ${default.images[0].honeypotImageName}
///       honeypotImageId: ${default.images[0].honeypotImageId}
///       honeypotName: ${name}
///       nodeId: ${defaultHoneypotNode.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:threatdetection:getHoneypotImages
///       arguments:
///         nameRegex: ^ruoyi
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Honey Pot can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/honeyPot:HoneyPot example <id>
/// ```
class HoneyPot extends pulumi.CustomResource {
  /// Honeypot ID.
  late final pulumi.Output<String> honeypotId;
  /// The image ID of the honeypot.
  late final pulumi.Output<String> honeypotImageId;
  /// Honeypot mirror name.
  late final pulumi.Output<String> honeypotImageName;
  /// Honeypot custom name.
  late final pulumi.Output<String> honeypotName;
  /// The ID of the honeypot management node.
  late final pulumi.Output<String> nodeId;
  /// The custom parameter ID of honeypot.
  late final pulumi.Output<String> presetId;
  /// Honeypot status.
  late final pulumi.Output<List<String>> states;
  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Creates a new [HoneyPot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HoneyPot]. {@macro pulumi_threatdetection_honey_pot_honey_pot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HoneyPot(
    String name, {
    HoneyPotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/honeyPot:HoneyPot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    honeypotId = registerOutput<String>('honeypotId');
    honeypotImageId = registerOutput<String>('honeypotImageId');
    honeypotImageName = registerOutput<String>('honeypotImageName');
    honeypotName = registerOutput<String>('honeypotName');
    nodeId = registerOutput<String>('nodeId');
    presetId = registerOutput<String>('presetId');
    states = registerOutput<List<String>>('states');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [HoneyPot] resource's state with the given [name] and [id].
  static HoneyPot get(
    String name,
    pulumi.Input<String> id, {
    HoneyPotState? state,
  }) {
    return HoneyPot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HoneyPot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/honeyPot:HoneyPot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    honeypotId = registerOutput<String>('honeypotId');
    honeypotImageId = registerOutput<String>('honeypotImageId');
    honeypotImageName = registerOutput<String>('honeypotImageName');
    honeypotName = registerOutput<String>('honeypotName');
    nodeId = registerOutput<String>('nodeId');
    presetId = registerOutput<String>('presetId');
    states = registerOutput<List<String>>('states');
    status = registerOutput<String>('status');
  }
}
