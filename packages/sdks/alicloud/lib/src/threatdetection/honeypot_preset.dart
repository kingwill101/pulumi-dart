import 'package:pulumi/pulumi.dart' as pulumi;
import 'honeypot_preset_args.dart';
import 'honeypot_preset_meta.dart';
import 'honeypot_preset_state.dart';

/// Provides a Threat Detection Honeypot Preset resource.
///
/// For information about Threat Detection Honeypot Preset and how to use it, see [What is Honeypot Preset](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-createhoneypotpreset).
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
/// const defaultHoneypotPreset = new alicloud.threatdetection.HoneypotPreset("default", {
///     presetName: name,
///     nodeId: defaultHoneypotNode.id,
///     honeypotImageName: _default.then(_default => _default.images?.[0]?.honeypotImageName),
///     meta: {
///         portraitOption: true,
///         burp: "open",
///         trojanGit: "open",
///     },
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
/// default_honeypot_preset = alicloud.threatdetection.HoneypotPreset("default",
///     preset_name=name,
///     node_id=default_honeypot_node.id,
///     honeypot_image_name=default.images[0].honeypot_image_name,
///     meta={
///         "portrait_option": True,
///         "burp": "open",
///         "trojan_git": "open",
///     })
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
///     var defaultHoneypotPreset = new AliCloud.ThreatDetection.HoneypotPreset("default", new()
///     {
///         PresetName = name,
///         NodeId = defaultHoneypotNode.Id,
///         HoneypotImageName = @default.Apply(@default => @default.Apply(getHoneypotImagesResult => getHoneypotImagesResult.Images[0]?.HoneypotImageName)),
///         Meta = new AliCloud.ThreatDetection.Inputs.HoneypotPresetMetaArgs
///         {
///             PortraitOption = true,
///             Burp = "open",
///             TrojanGit = "open",
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
/// 		_, err = threatdetection.NewHoneypotPreset(ctx, "default", &threatdetection.HoneypotPresetArgs{
/// 			PresetName:        pulumi.String(name),
/// 			NodeId:            defaultHoneypotNode.ID(),
/// 			HoneypotImageName: pulumi.String(_default.Images[0].HoneypotImageName),
/// 			Meta: &threatdetection.HoneypotPresetMetaArgs{
/// 				PortraitOption: pulumi.Bool(true),
/// 				Burp:           pulumi.String("open"),
/// 				TrojanGit:      pulumi.String("open"),
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
/// import com.pulumi.alicloud.threatdetection.ThreatdetectionFunctions;
/// import com.pulumi.alicloud.threatdetection.inputs.GetHoneypotImagesArgs;
/// import com.pulumi.alicloud.threatdetection.HoneypotNode;
/// import com.pulumi.alicloud.threatdetection.HoneypotNodeArgs;
/// import com.pulumi.alicloud.threatdetection.HoneypotPreset;
/// import com.pulumi.alicloud.threatdetection.HoneypotPresetArgs;
/// import com.pulumi.alicloud.threatdetection.inputs.HoneypotPresetMetaArgs;
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
///         var defaultHoneypotPreset = new HoneypotPreset("defaultHoneypotPreset", HoneypotPresetArgs.builder()
///             .presetName(name)
///             .nodeId(defaultHoneypotNode.id())
///             .honeypotImageName(default_.images()[0].honeypotImageName())
///             .meta(HoneypotPresetMetaArgs.builder()
///                 .portraitOption(true)
///                 .burp("open")
///                 .trojanGit("open")
///                 .build())
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
///   defaultHoneypotPreset:
///     type: alicloud:threatdetection:HoneypotPreset
///     name: default
///     properties:
///       presetName: ${name}
///       nodeId: ${defaultHoneypotNode.id}
///       honeypotImageName: ${default.images[0].honeypotImageName}
///       meta:
///         portraitOption: true
///         burp: open
///         trojanGit: open
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
/// Threat Detection Honeypot Preset can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/honeypotPreset:HoneypotPreset example <id>
/// ```
class HoneypotPreset extends pulumi.CustomResource {
  /// Honeypot mirror name
  late final pulumi.Output<String> honeypotImageName;

  /// Unique ID of honeypot Template
  late final pulumi.Output<String> honeypotPresetId;

  /// Honeypot template custom parameters. See `meta` below.
  late final pulumi.Output<HoneypotPresetMeta> meta;

  /// Unique id of management node
  late final pulumi.Output<String> nodeId;

  /// Honeypot template custom name
  late final pulumi.Output<String> presetName;

  /// Creates a new [HoneypotPreset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HoneypotPreset]. {@macro pulumi_threatdetection_honeypot_preset_honeypot_preset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HoneypotPreset(
    String name, {
    HoneypotPresetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:threatdetection/honeypotPreset:HoneypotPreset',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    honeypotImageName = registerOutput<String>('honeypotImageName');
    honeypotPresetId = registerOutput<String>('honeypotPresetId');
    meta = registerOutput<HoneypotPresetMeta>(
      'meta',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HoneypotPresetMeta.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    nodeId = registerOutput<String>('nodeId');
    presetName = registerOutput<String>('presetName');
  }

  /// Gets an existing [HoneypotPreset] resource's state with the given [name] and [id].
  static HoneypotPreset get(
    String name,
    pulumi.Input<String> id, {
    HoneypotPresetState? state,
  }) {
    return HoneypotPreset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HoneypotPreset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:threatdetection/honeypotPreset:HoneypotPreset',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    honeypotImageName = registerOutput<String>('honeypotImageName');
    honeypotPresetId = registerOutput<String>('honeypotPresetId');
    meta = registerOutput<HoneypotPresetMeta>(
      'meta',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HoneypotPresetMeta.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    nodeId = registerOutput<String>('nodeId');
    presetName = registerOutput<String>('presetName');
  }
}
