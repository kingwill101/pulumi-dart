import 'package:pulumi/pulumi.dart' as pulumi;
import 'caster_args.dart';
import 'caster_state.dart';

/// Provides a Live Caster resource.
///
/// Relying on Alibaba Cloud's powerful technologies such as live video broadcasting, media processing, and video AI, cloud guide integrates capabilities such as graphic packaging, real-time keying, multi-language translation, and multi-channel mixed streaming to innovate traditional guide services in the cloud. Provide easy-to-use cloud-based guide services for event performances, news reports, live events, off-site broadcasts and other scenes, without hardware, reduce user guide costs, and create a better live broadcast experience.
///
/// For information about Live Caster and how to use it, see [What is Caster](https://www.alibabacloud.com/help/en/live/developer-reference/api-live-2016-11-01-createcaster).
///
/// > **NOTE:** Available since v1.238.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.live.Caster("default", {
///     casterName: name,
///     paymentType: "PayAsYouGo",
///     normType: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.live.Caster("default",
///     caster_name=name,
///     payment_type="PayAsYouGo",
///     norm_type=1)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Live.Caster("default", new()
///     {
///         CasterName = name,
///         PaymentType = "PayAsYouGo",
///         NormType = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/live"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := live.NewCaster(ctx, "default", &live.CasterArgs{
/// 			CasterName:  pulumi.String(name),
/// 			PaymentType: pulumi.String("PayAsYouGo"),
/// 			NormType:    pulumi.Int(1),
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
/// import com.pulumi.alicloud.live.Caster;
/// import com.pulumi.alicloud.live.CasterArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Caster("default", CasterArgs.builder()
///             .casterName(name)
///             .paymentType("PayAsYouGo")
///             .normType(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:live:Caster
///     properties:
///       casterName: ${name}
///       paymentType: PayAsYouGo
///       normType: '1'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Live Caster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:live/caster:Caster example <id>
/// ```
class Caster extends pulumi.CustomResource {
  /// Automatic standby broadcast configuration. eofThres: indicates that the broadcast is automatically cut and prepared after the flow interruption time, in seconds.
  late final pulumi.Output<String?> autoSwitchUrgentConfig;
  /// Turn on the cut-off automatic switch for broadcast preparation.
  ///
  /// true: open.
  ///
  /// false: closed.
  late final pulumi.Output<bool?> autoSwitchUrgentOn;
  /// The callback address of the user. To receive Callback Notifications, enter an available address and accept the HTTP protocol. If this parameter is set to null, the callback notification from the director Station is canceled by default.
  late final pulumi.Output<String?> callbackUrl;
  /// Guide station name.
  late final pulumi.Output<String?> casterName;
  /// Creation time.
  late final pulumi.Output<String> createTime;
  /// Delayed playback. Time unit: seconds.
  late final pulumi.Output<double?> delay;
  /// Master play domain name.
  late final pulumi.Output<String?> domainName;
  /// Guide station specification type. Value:
  /// - 0: Broadcast single type.
  /// - 1: General purpose.
  late final pulumi.Output<int> normType;
  /// The paymen type of the resource
  late final pulumi.Output<String> paymentType;
  /// Carousel effective flag.
  ///
  /// 0: Not in effect.
  ///
  /// 1: Entry into force.
  late final pulumi.Output<int?> programEffect;
  /// The carousel station name, which can be configured when using the carousel function.
  late final pulumi.Output<String?> programName;
  /// Record configuration information. The format is JSON. The configuration element information is as follows:
  late final pulumi.Output<String?> recordConfig;
  /// Resource Group id
  late final pulumi.Output<String> resourceGroupId;
  /// resource type
  late final pulumi.Output<String?> resourceType;
  /// The user-defined stream ingest address corresponding to the bypass output address of the guide station. If this parameter is left blank, the streaming address corresponding to the output address automatically generated by Alibaba Cloud is used by default.
  late final pulumi.Output<String?> sideOutputUrl;
  /// The list of multiple forwarding stream addresses, which can be the CDN forwarding stream addresses of Alibaba Cloud or a third-party vendor. A guide can add up to 20 RTMP forwarding addresses.
  late final pulumi.Output<String?> sideOutputUrlList;
  /// Multi-View synchronization configuration to synchronize multiple video sources. Multi-View synchronization is divided into two modes:
  /// - `mode 0`: (In the anchor mode, multiple video sources are synchronized according to the specified mode.)
  /// - `mode 1`: (Conference mode, there is no concept of anchor video, all video sources are synchronized with each other.)
  /// - `Anchor mode`: hostResourceId: the video source of the anchor in Anchor mode.
  /// - `Conference mode`: no hostRsoureId field, only the resource ids in the resourceIds to be provided.
  late final pulumi.Output<String?> syncGroupsConfig;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// Transcoding configuration.
  ///
  /// JSON format string, Please capitalize the first letter of the internal field of the structure, hump format input. If this parameter is set to null, the transcoding configuration is cleared by default. If the transcoding template is null, an error is reported when the director starts.
  late final pulumi.Output<String?> transcodeConfig;
  /// The ID of the picture material of the media library.
  late final pulumi.Output<String?> urgentImageId;
  /// Prepare the URL of the picture material.
  late final pulumi.Output<String?> urgentImageUrl;
  /// The prepared live stream URL.
  late final pulumi.Output<String?> urgentLiveStreamUrl;
  /// Prepared video, media library material ID. If this parameter is set to null, the standby configuration is cleared by default.
  late final pulumi.Output<String?> urgentMaterialId;

  /// Creates a new [Caster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Caster]. {@macro pulumi_live_caster_caster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Caster(
    String name, {
    CasterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:live/caster:Caster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoSwitchUrgentConfig = registerOutput<String?>('autoSwitchUrgentConfig');
    this.autoSwitchUrgentOn = registerOutput<bool?>('autoSwitchUrgentOn');
    this.callbackUrl = registerOutput<String?>('callbackUrl');
    this.casterName = registerOutput<String?>('casterName');
    this.createTime = registerOutput<String>('createTime');
    this.delay = registerOutput<double?>('delay');
    this.domainName = registerOutput<String?>('domainName');
    this.normType = registerOutput<int>('normType');
    this.paymentType = registerOutput<String>('paymentType');
    this.programEffect = registerOutput<int?>('programEffect');
    this.programName = registerOutput<String?>('programName');
    this.recordConfig = registerOutput<String?>('recordConfig');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.resourceType = registerOutput<String?>('resourceType');
    this.sideOutputUrl = registerOutput<String?>('sideOutputUrl');
    this.sideOutputUrlList = registerOutput<String?>('sideOutputUrlList');
    this.syncGroupsConfig = registerOutput<String?>('syncGroupsConfig');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.transcodeConfig = registerOutput<String?>('transcodeConfig');
    this.urgentImageId = registerOutput<String?>('urgentImageId');
    this.urgentImageUrl = registerOutput<String?>('urgentImageUrl');
    this.urgentLiveStreamUrl = registerOutput<String?>('urgentLiveStreamUrl');
    this.urgentMaterialId = registerOutput<String?>('urgentMaterialId');
  }

  /// Gets an existing [Caster] resource's state with the given [name] and [id].
  static Caster get(
    String name,
    pulumi.Input<String> id, {
    CasterState? state,
  }) {
    return Caster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Caster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:live/caster:Caster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoSwitchUrgentConfig = registerOutput<String?>('autoSwitchUrgentConfig');
    this.autoSwitchUrgentOn = registerOutput<bool?>('autoSwitchUrgentOn');
    this.callbackUrl = registerOutput<String?>('callbackUrl');
    this.casterName = registerOutput<String?>('casterName');
    this.createTime = registerOutput<String>('createTime');
    this.delay = registerOutput<double?>('delay');
    this.domainName = registerOutput<String?>('domainName');
    this.normType = registerOutput<int>('normType');
    this.paymentType = registerOutput<String>('paymentType');
    this.programEffect = registerOutput<int?>('programEffect');
    this.programName = registerOutput<String?>('programName');
    this.recordConfig = registerOutput<String?>('recordConfig');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.resourceType = registerOutput<String?>('resourceType');
    this.sideOutputUrl = registerOutput<String?>('sideOutputUrl');
    this.sideOutputUrlList = registerOutput<String?>('sideOutputUrlList');
    this.syncGroupsConfig = registerOutput<String?>('syncGroupsConfig');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.transcodeConfig = registerOutput<String?>('transcodeConfig');
    this.urgentImageId = registerOutput<String?>('urgentImageId');
    this.urgentImageUrl = registerOutput<String?>('urgentImageUrl');
    this.urgentLiveStreamUrl = registerOutput<String?>('urgentLiveStreamUrl');
    this.urgentMaterialId = registerOutput<String?>('urgentMaterialId');
  }
}
