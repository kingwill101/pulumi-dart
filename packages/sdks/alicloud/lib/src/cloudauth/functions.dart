import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_face_configs_args.dart';
import 'get_face_configs_result.dart';

/// This data source provides the Cloudauth Face Configs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.137.0+.
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
/// const defaultFaceConfig = new alicloud.cloudauth.FaceConfig("default", {
///     bizName: "example-value",
///     bizType: "example-value",
/// });
/// const _default = alicloud.cloudauth.getFaceConfigsOutput({
///     ids: [defaultFaceConfig.id],
///     nameRegex: defaultFaceConfig.bizName,
/// });
/// export const faceConfig = _default.apply(_default => _default.configs?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default_face_config = alicloud.cloudauth.FaceConfig("default",
///     biz_name="example-value",
///     biz_type="example-value")
/// default = alicloud.cloudauth.get_face_configs_output(ids=[default_face_config.id],
///     name_regex=default_face_config.biz_name)
/// pulumi.export("faceConfig", default.configs[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultFaceConfig = new AliCloud.CloudAuth.FaceConfig("default", new()
///     {
///         BizName = "example-value",
///         BizType = "example-value",
///     });
///
///     var @default = AliCloud.CloudAuth.GetFaceConfigs.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultFaceConfig.Id,
///         },
///         NameRegex = defaultFaceConfig.BizName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["faceConfig"] = @default.Apply(@default => @default.Apply(getFaceConfigsResult => getFaceConfigsResult.Configs[0])),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudauth"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultFaceConfig, err := cloudauth.NewFaceConfig(ctx, "default", &cloudauth.FaceConfigArgs{
/// 			BizName: pulumi.String("example-value"),
/// 			BizType: pulumi.String("example-value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default := cloudauth.GetFaceConfigsOutput(ctx, cloudauth.GetFaceConfigsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultFaceConfig.ID(),
/// 			},
/// 			NameRegex: defaultFaceConfig.BizName,
/// 		}, nil)
/// 		ctx.Export("faceConfig", _default.ApplyT(func(_default cloudauth.GetFaceConfigsResult) (cloudauth.GetFaceConfigsConfig, error) {
/// 			return _default.Configs[0], nil
/// 		}).(cloudauth.GetFaceConfigsConfigOutput))
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
/// import com.pulumi.alicloud.cloudauth.FaceConfig;
/// import com.pulumi.alicloud.cloudauth.FaceConfigArgs;
/// import com.pulumi.alicloud.cloudauth.CloudauthFunctions;
/// import com.pulumi.alicloud.cloudauth.inputs.GetFaceConfigsArgs;
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
///         var defaultFaceConfig = new FaceConfig("defaultFaceConfig", FaceConfigArgs.builder()
///             .bizName("example-value")
///             .bizType("example-value")
///             .build());
///
///         final var default = CloudauthFunctions.getFaceConfigs(GetFaceConfigsArgs.builder()
///             .ids(defaultFaceConfig.id())
///             .nameRegex(defaultFaceConfig.bizName())
///             .build());
///
///         ctx.export("faceConfig", default_.applyValue(_default_ -> _default_.configs()[0]));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultFaceConfig:
///     type: alicloud:cloudauth:FaceConfig
///     name: default
///     properties:
///       bizName: example-value
///       bizType: example-value
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cloudauth:getFaceConfigs
///       arguments:
///         ids:
///           - ${defaultFaceConfig.id}
///         nameRegex: ${defaultFaceConfig.bizName}
/// outputs:
///   faceConfig: ${default.configs[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudauth_get_face_configs_get_face_configs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFaceConfigsResult> getFaceConfigs(
  GetFaceConfigsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudauth/getFaceConfigs:getFaceConfigs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFaceConfigsResult.fromMap(result);
}
