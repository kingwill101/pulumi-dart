import 'package:pulumi/pulumi.dart' as pulumi;
import 'video_processing_args.dart';
import 'video_processing_state.dart';

/// Provides a ESA Video Processing resource.
///
///
///
/// For information about ESA Video Processing and how to use it, see [What is Video Processing](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateVideoProcessing).
///
/// &gt; **NOTE:** Available since v1.251.0.
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
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
/// });
/// const defaultSite = new alicloud.esa.Site("default", {
///     siteName: "chenxin0116.site",
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultVideoProcessing = new alicloud.esa.VideoProcessing("default", {
///     videoSeekEnable: "on",
///     ruleEnable: "on",
///     mp4SeekEnd: "end",
///     flvSeekStart: "start",
///     rule: "(http.host eq \"video.example.com\")",
///     flvVideoSeekMode: "by_byte",
///     mp4SeekStart: "start",
///     flvSeekEnd: "end",
///     siteId: defaultSite.id,
///     sequence: 1,
///     siteVersion: 0,
///     ruleName: "example",
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
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_site = alicloud.esa.Site("default",
///     site_name="chenxin0116.site",
///     instance_id=default.sites[0].instance_id,
///     coverage="overseas",
///     access_type="NS")
/// default_video_processing = alicloud.esa.VideoProcessing("default",
///     video_seek_enable="on",
///     rule_enable="on",
///     mp4_seek_end="end",
///     flv_seek_start="start",
///     rule="(http.host eq \"video.example.com\")",
///     flv_video_seek_mode="by_byte",
///     mp4_seek_start="start",
///     flv_seek_end="end",
///     site_id=default_site.id,
///     sequence=1,
///     site_version=0,
///     rule_name="example")
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
///     var @default = AliCloud.Esa.GetSites.Invoke(new()
///     {
///         PlanSubscribeType = "enterpriseplan",
///     });
///
///     var defaultSite = new AliCloud.Esa.Site("default", new()
///     {
///         SiteName = "chenxin0116.site",
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultVideoProcessing = new AliCloud.Esa.VideoProcessing("default", new()
///     {
///         VideoSeekEnable = "on",
///         RuleEnable = "on",
///         Mp4SeekEnd = "end",
///         FlvSeekStart = "start",
///         Rule = "(http.host eq \"video.example.com\")",
///         FlvVideoSeekMode = "by_byte",
///         Mp4SeekStart = "start",
///         FlvSeekEnd = "end",
///         SiteId = defaultSite.Id,
///         Sequence = 1,
///         SiteVersion = 0,
///         RuleName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
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
/// 		_default, err := esa.GetSites(ctx, &esa.GetSitesArgs{
/// 			PlanSubscribeType: pulumi.StringRef("enterpriseplan"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSite, err := esa.NewSite(ctx, "default", &esa.SiteArgs{
/// 			SiteName:   pulumi.String("chenxin0116.site"),
/// 			InstanceId: pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewVideoProcessing(ctx, "default", &esa.VideoProcessingArgs{
/// 			VideoSeekEnable:  pulumi.String("on"),
/// 			RuleEnable:       pulumi.String("on"),
/// 			Mp4SeekEnd:       pulumi.String("end"),
/// 			FlvSeekStart:     pulumi.String("start"),
/// 			Rule:             pulumi.String("(http.host eq \"video.example.com\")"),
/// 			FlvVideoSeekMode: pulumi.String("by_byte"),
/// 			Mp4SeekStart:     pulumi.String("start"),
/// 			FlvSeekEnd:       pulumi.String("end"),
/// 			SiteId:           defaultSite.ID(),
/// 			Sequence:         pulumi.Int(1),
/// 			SiteVersion:      pulumi.Int(0),
/// 			RuleName:         pulumi.String("example"),
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
/// import com.pulumi.alicloud.esa.EsaFunctions;
/// import com.pulumi.alicloud.esa.inputs.GetSitesArgs;
/// import com.pulumi.alicloud.esa.Site;
/// import com.pulumi.alicloud.esa.SiteArgs;
/// import com.pulumi.alicloud.esa.VideoProcessing;
/// import com.pulumi.alicloud.esa.VideoProcessingArgs;
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
///         final var default = EsaFunctions.getSites(GetSitesArgs.builder()
///             .planSubscribeType("enterpriseplan")
///             .build());
///
///         var defaultSite = new Site("defaultSite", SiteArgs.builder()
///             .siteName("chenxin0116.site")
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultVideoProcessing = new VideoProcessing("defaultVideoProcessing", VideoProcessingArgs.builder()
///             .videoSeekEnable("on")
///             .ruleEnable("on")
///             .mp4SeekEnd("end")
///             .flvSeekStart("start")
///             .rule("(http.host eq \"video.example.com\")")
///             .flvVideoSeekMode("by_byte")
///             .mp4SeekStart("start")
///             .flvSeekEnd("end")
///             .siteId(defaultSite.id())
///             .sequence(1)
///             .siteVersion(0)
///             .ruleName("example")
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
///   defaultSite:
///     type: alicloud:esa:Site
///     name: default
///     properties:
///       siteName: chenxin0116.site
///       instanceId: ${default.sites[0].instanceId}
///       coverage: overseas
///       accessType: NS
///   defaultVideoProcessing:
///     type: alicloud:esa:VideoProcessing
///     name: default
///     properties:
///       videoSeekEnable: on
///       ruleEnable: on
///       mp4SeekEnd: end
///       flvSeekStart: start
///       rule: (http.host eq "video.example.com")
///       flvVideoSeekMode: by_byte
///       mp4SeekStart: start
///       flvSeekEnd: end
///       siteId: ${defaultSite.id}
///       sequence: '1'
///       siteVersion: '0'
///       ruleName: example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:esa:getSites
///       arguments:
///         planSubscribeType: enterpriseplan
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Video Processing can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/videoProcessing:VideoProcessing example <site_id>:<config_id>
/// ```
class VideoProcessing extends pulumi.CustomResource {
  /// Config Id
  late final pulumi.Output<int> configId;

  /// Custom FLV end parameters.
  late final pulumi.Output<String?> flvSeekEnd;

  /// Custom FLV start parameters.
  late final pulumi.Output<String?> flvSeekStart;

  /// FLV drag mode. Value range:
  late final pulumi.Output<String?> flvVideoSeekMode;

  /// Custom mp4 end parameters.
  late final pulumi.Output<String?> mp4SeekEnd;

  /// Custom mp4 start parameters.
  late final pulumi.Output<String?> mp4SeekStart;

  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// - Match all incoming requests: value set to true
  /// - Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  late final pulumi.Output<String?> rule;

  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  late final pulumi.Output<String?> ruleEnable;

  /// Rule name. When adding global configuration, this parameter does not need to be set.
  late final pulumi.Output<String?> ruleName;

  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  late final pulumi.Output<int?> sequence;

  /// The site ID, which can be obtained by calling the ListSites API.
  late final pulumi.Output<String> siteId;

  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  late final pulumi.Output<int?> siteVersion;

  /// Drag and drop the play function switch. Value range:
  late final pulumi.Output<String?> videoSeekEnable;

  /// Creates a new [VideoProcessing].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VideoProcessing]. {@macro pulumi_esa_video_processing_video_processing_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VideoProcessing(
    String name, {
    VideoProcessingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/videoProcessing:VideoProcessing',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configId = registerOutput<int>('configId');
    flvSeekEnd = registerOutput<String?>('flvSeekEnd');
    flvSeekStart = registerOutput<String?>('flvSeekStart');
    flvVideoSeekMode = registerOutput<String?>('flvVideoSeekMode');
    mp4SeekEnd = registerOutput<String?>('mp4SeekEnd');
    mp4SeekStart = registerOutput<String?>('mp4SeekStart');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int?>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
    videoSeekEnable = registerOutput<String?>('videoSeekEnable');
  }

  /// Gets an existing [VideoProcessing] resource's state with the given [name] and [id].
  static VideoProcessing get(
    String name,
    pulumi.Input<String> id, {
    VideoProcessingState? state,
  }) {
    return VideoProcessing._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VideoProcessing._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/videoProcessing:VideoProcessing',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configId = registerOutput<int>('configId');
    flvSeekEnd = registerOutput<String?>('flvSeekEnd');
    flvSeekStart = registerOutput<String?>('flvSeekStart');
    flvVideoSeekMode = registerOutput<String?>('flvVideoSeekMode');
    mp4SeekEnd = registerOutput<String?>('mp4SeekEnd');
    mp4SeekStart = registerOutput<String?>('mp4SeekStart');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int?>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
    videoSeekEnable = registerOutput<String?>('videoSeekEnable');
  }
}
