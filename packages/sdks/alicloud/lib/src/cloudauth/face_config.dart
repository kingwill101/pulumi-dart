import 'package:pulumi/pulumi.dart' as pulumi;
import 'face_config_args.dart';
import 'face_config_state.dart';

/// Provides a Cloudauth Face Config resource.
///
/// For information about Cloudauth Face Config and how to use it, see [What is Face Config](https://help.aliyun.com/zh/id-verification/cloudauth/product-overview/end-of-integration-announcement-on-id-verification).
///
/// &gt; **NOTE:** Available since v1.137.0.
///
/// &gt; **NOTE:** In order to provide you with more perfect product capabilities, the real person certification service has stopped access, it is recommended that you use the upgraded version of the [real person certification financial real person certification service](https://help.aliyun.com/zh/id-verification/product-overview/what-is-id-verification-for-financial-services). Users that have access to real person authentication are not affected.
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
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const example = new alicloud.cloudauth.FaceConfig("example", {
///     bizName: std.format({
///         input: "%s-biz",
///         args: [name],
///     }).then(invoke => invoke.result),
///     bizType: std.format({
///         input: "type-%s",
///         args: [_default.result],
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// example = alicloud.cloudauth.FaceConfig("example",
///     biz_name=std.format(input="%s-biz",
///         args=[name]).result,
///     biz_type=std.format(input="type-%s",
///         args=[default["result"]]).result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var example = new AliCloud.CloudAuth.FaceConfig("example", new()
///     {
///         BizName = Std.Format.Invoke(new()
///         {
///             Input = "%s-biz",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         BizType = Std.Format.Invoke(new()
///         {
///             Input = "type-%s",
///             Args = new[]
///             {
///                 @default.Result,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudauth"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s-biz",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "type-%s",
/// 			Args: []interface{}{
/// 				_default.Result,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudauth.NewFaceConfig(ctx, "example", &cloudauth.FaceConfigArgs{
/// 			BizName: pulumi.String(invokeFormat.Result),
/// 			BizType: pulumi.String(invokeFormat1.Result),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cloudauth.FaceConfig;
/// import com.pulumi.alicloud.cloudauth.FaceConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var example = new FaceConfig("example", FaceConfigArgs.builder()
///             .bizName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s-biz")
///                 .args(name)
///                 .build()).result())
///             .bizType(StdFunctions.format(FormatArgs.builder()
///                 .input("type-%s")
///                 .args(default_.result())
///                 .build()).result())
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
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   example:
///     type: alicloud:cloudauth:FaceConfig
///     properties:
///       bizName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s-biz'
///             args:
///               - ${name}
///           return: result
///       bizType:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: type-%s
///             args:
///               - ${default.result}
///           return: result
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloudauth Face Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudauth/faceConfig:FaceConfig example <lang>
/// ```
class FaceConfig extends pulumi.CustomResource {
  /// Scene name.
  late final pulumi.Output<String> bizName;
  /// Scene type. **NOTE:** The biz_type cannot exceed 32 characters and can only use English letters, numbers and dashes (-).
  late final pulumi.Output<String> bizType;
  /// Last Modified Date.
  late final pulumi.Output<String> gmtModified;

  /// Creates a new [FaceConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FaceConfig]. {@macro pulumi_cloudauth_face_config_face_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FaceConfig(
    String name, {
    FaceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudauth/faceConfig:FaceConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bizName = registerOutput<String>('bizName');
    bizType = registerOutput<String>('bizType');
    gmtModified = registerOutput<String>('gmtModified');
  }

  /// Gets an existing [FaceConfig] resource's state with the given [name] and [id].
  static FaceConfig get(
    String name,
    pulumi.Input<String> id, {
    FaceConfigState? state,
  }) {
    return FaceConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FaceConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudauth/faceConfig:FaceConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bizName = registerOutput<String>('bizName');
    bizType = registerOutput<String>('bizType');
    gmtModified = registerOutput<String>('gmtModified');
  }
}
