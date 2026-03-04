import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_group_args.dart';
import 'system_group_state.dart';

/// Provides a Video Surveillance System Group resource.
///
/// For information about Video Surveillance System Group and how to use it, see [What is Group](https://help.aliyun.com/product/108765.html).
///
/// &gt; **NOTE:** Available in v1.135.0+.
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
/// const _default = new alicloud.videosurveillance.SystemGroup("default", {
///     groupName: "your_group_name",
///     inProtocol: "rtmp",
///     outProtocol: "flv",
///     playDomain: "your_plan_domain",
///     pushDomain: "your_push_domain",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.videosurveillance.SystemGroup("default",
///     group_name="your_group_name",
///     in_protocol="rtmp",
///     out_protocol="flv",
///     play_domain="your_plan_domain",
///     push_domain="your_push_domain")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.VideoSurveillance.SystemGroup("default", new()
///     {
///         GroupName = "your_group_name",
///         InProtocol = "rtmp",
///         OutProtocol = "flv",
///         PlayDomain = "your_plan_domain",
///         PushDomain = "your_push_domain",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/videosurveillance"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := videosurveillance.NewSystemGroup(ctx, "default", &videosurveillance.SystemGroupArgs{
/// 			GroupName:   pulumi.String("your_group_name"),
/// 			InProtocol:  pulumi.String("rtmp"),
/// 			OutProtocol: pulumi.String("flv"),
/// 			PlayDomain:  pulumi.String("your_plan_domain"),
/// 			PushDomain:  pulumi.String("your_push_domain"),
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
/// import com.pulumi.alicloud.videosurveillance.SystemGroup;
/// import com.pulumi.alicloud.videosurveillance.SystemGroupArgs;
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
///         var default_ = new SystemGroup("default", SystemGroupArgs.builder()
///             .groupName("your_group_name")
///             .inProtocol("rtmp")
///             .outProtocol("flv")
///             .playDomain("your_plan_domain")
///             .pushDomain("your_push_domain")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:videosurveillance:SystemGroup
///     properties:
///       groupName: your_group_name
///       inProtocol: rtmp
///       outProtocol: flv
///       playDomain: your_plan_domain
///       pushDomain: your_push_domain
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Video Surveillance System Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:videosurveillance/systemGroup:SystemGroup example <id>
/// ```
class SystemGroup extends pulumi.CustomResource {
  /// The space within the device status update of the callback, need to start with http:// or https:// at the beginning.
  late final pulumi.Output<String?> callback;

  /// The capture image.
  late final pulumi.Output<int> captureImage;

  /// The capture interval.
  late final pulumi.Output<int> captureInterval;

  /// The capture oss bucket.
  late final pulumi.Output<String> captureOssBucket;

  /// The capture oss path.
  late final pulumi.Output<String> captureOssPath;

  /// The capture video.
  late final pulumi.Output<int> captureVideo;

  /// The description of Group.
  late final pulumi.Output<String?> description;

  /// Whether to open Group.
  late final pulumi.Output<bool> enabled;

  /// The Group Name.
  late final pulumi.Output<String> groupName;

  /// The use of the access protocol support gb28181, Real Time Messaging Protocol (rtmp). Valid values: `gb28181`, `rtmp`.
  late final pulumi.Output<String> inProtocol;

  /// Whether to enable on-demand streaming. Default value:`false`.
  late final pulumi.Output<bool> lazyPull;

  /// The playback protocol used by the space, multiple values are separated by commas (,). Valid values: `flv`,`hls`, `rtmp`.
  late final pulumi.Output<String> outProtocol;

  /// The domain name of plan streaming used by the group.
  late final pulumi.Output<String> playDomain;

  /// The domain name of push streaming used by the group.
  late final pulumi.Output<String> pushDomain;

  /// Whether to open Group. Valid values: `on`,`off`.
  late final pulumi.Output<bool> status;

  /// Creates a new [SystemGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SystemGroup]. {@macro pulumi_videosurveillance_system_group_system_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SystemGroup(
    String name, {
    SystemGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:videosurveillance/systemGroup:SystemGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    callback = registerOutput<String?>('callback');
    captureImage = registerOutput<int>('captureImage');
    captureInterval = registerOutput<int>('captureInterval');
    captureOssBucket = registerOutput<String>('captureOssBucket');
    captureOssPath = registerOutput<String>('captureOssPath');
    captureVideo = registerOutput<int>('captureVideo');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    groupName = registerOutput<String>('groupName');
    inProtocol = registerOutput<String>('inProtocol');
    lazyPull = registerOutput<bool>('lazyPull');
    outProtocol = registerOutput<String>('outProtocol');
    playDomain = registerOutput<String>('playDomain');
    pushDomain = registerOutput<String>('pushDomain');
    status = registerOutput<bool>('status');
  }

  /// Gets an existing [SystemGroup] resource's state with the given [name] and [id].
  static SystemGroup get(
    String name,
    pulumi.Input<String> id, {
    SystemGroupState? state,
  }) {
    return SystemGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SystemGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:videosurveillance/systemGroup:SystemGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    callback = registerOutput<String?>('callback');
    captureImage = registerOutput<int>('captureImage');
    captureInterval = registerOutput<int>('captureInterval');
    captureOssBucket = registerOutput<String>('captureOssBucket');
    captureOssPath = registerOutput<String>('captureOssPath');
    captureVideo = registerOutput<int>('captureVideo');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    groupName = registerOutput<String>('groupName');
    inProtocol = registerOutput<String>('inProtocol');
    lazyPull = registerOutput<bool>('lazyPull');
    outProtocol = registerOutput<String>('outProtocol');
    playDomain = registerOutput<String>('playDomain');
    pushDomain = registerOutput<String>('pushDomain');
    status = registerOutput<bool>('status');
  }
}
