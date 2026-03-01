import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_system_groups_args.dart';
import 'get_system_groups_result.dart';

/// Using this data source can open Video Surveillance System service automatically. If the service has been opened, it will return opened.
///
/// For information about Video Surveillance System and how to use it, see [What is VS](https://help.aliyun.com/product/108765.html).
///
/// > **NOTE:** Available in v1.116.0+
///
/// > **NOTE:** The Video Surveillance System service is not support in the international site.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.videosurveillance.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.videosurveillance.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.VideoSurveillance.GetService.Invoke(new()
///     {
///         Enable = "On",
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
/// 		_, err := videosurveillance.GetService(ctx, &videosurveillance.GetServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.videosurveillance.VideosurveillanceFunctions;
/// import com.pulumi.alicloud.videosurveillance.inputs.GetServiceArgs;
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
///         final var open = VideosurveillanceFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:videosurveillance:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_videosurveillance_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:videosurveillance/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides the Video Surveillance System Groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.135.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const defaultSystemGroup = new alicloud.videosurveillance.SystemGroup("default", {
///     groupName: "groupname",
///     inProtocol: "rtmp",
///     outProtocol: "flv",
///     playDomain: "your_plan_domain",
///     pushDomain: "your_push_domain",
/// });
/// const _default = alicloud.videosurveillance.getSystemGroupsOutput({
///     ids: [defaultSystemGroup.id],
/// });
/// export const vsGroup = _default.apply(_default => _default.ids?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default_system_group = alicloud.videosurveillance.SystemGroup("default",
///     group_name="groupname",
///     in_protocol="rtmp",
///     out_protocol="flv",
///     play_domain="your_plan_domain",
///     push_domain="your_push_domain")
/// default = alicloud.videosurveillance.get_system_groups_output(ids=[default_system_group.id])
/// pulumi.export("vsGroup", default.ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultSystemGroup = new AliCloud.VideoSurveillance.SystemGroup("default", new()
///     {
///         GroupName = "groupname",
///         InProtocol = "rtmp",
///         OutProtocol = "flv",
///         PlayDomain = "your_plan_domain",
///         PushDomain = "your_push_domain",
///     });
///
///     var @default = AliCloud.VideoSurveillance.GetSystemGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultSystemGroup.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vsGroup"] = @default.Apply(@default => @default.Apply(getSystemGroupsResult => getSystemGroupsResult.Ids[0])),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/videosurveillance"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// defaultSystemGroup, err := videosurveillance.NewSystemGroup(ctx, "default", &videosurveillance.SystemGroupArgs{
/// GroupName: pulumi.String("groupname"),
/// InProtocol: pulumi.String("rtmp"),
/// OutProtocol: pulumi.String("flv"),
/// PlayDomain: pulumi.String("your_plan_domain"),
/// PushDomain: pulumi.String("your_push_domain"),
/// })
/// if err != nil {
/// return err
/// }
/// _default := videosurveillance.GetSystemGroupsOutput(ctx, videosurveillance.GetSystemGroupsOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultSystemGroup.ID(),
/// },
/// }, nil);
/// ctx.Export("vsGroup", _default.ApplyT(func(_default videosurveillance.GetSystemGroupsResult) (*string, error) {
/// return &default.Ids[0], nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
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
/// import com.pulumi.alicloud.videosurveillance.VideosurveillanceFunctions;
/// import com.pulumi.alicloud.videosurveillance.inputs.GetSystemGroupsArgs;
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
///         var defaultSystemGroup = new SystemGroup("defaultSystemGroup", SystemGroupArgs.builder()
///             .groupName("groupname")
///             .inProtocol("rtmp")
///             .outProtocol("flv")
///             .playDomain("your_plan_domain")
///             .pushDomain("your_push_domain")
///             .build());
///
///         final var default = VideosurveillanceFunctions.getSystemGroups(GetSystemGroupsArgs.builder()
///             .ids(defaultSystemGroup.id())
///             .build());
///
///         ctx.export("vsGroup", default_.applyValue(_default_ -> _default_.ids()[0]));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultSystemGroup:
///     type: alicloud:videosurveillance:SystemGroup
///     name: default
///     properties:
///       groupName: groupname
///       inProtocol: rtmp
///       outProtocol: flv
///       playDomain: your_plan_domain
///       pushDomain: your_push_domain
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:videosurveillance:getSystemGroups
///       arguments:
///         ids:
///           - ${defaultSystemGroup.id}
/// outputs:
///   vsGroup: ${default.ids[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_videosurveillance_get_system_groups_get_system_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSystemGroupsResult> getSystemGroups(
  GetSystemGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:videosurveillance/getSystemGroups:getSystemGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSystemGroupsResult.fromMap(result);
}
