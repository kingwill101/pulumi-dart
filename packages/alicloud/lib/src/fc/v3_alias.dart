import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_alias_args.dart';

/// Provides a FCV3 Alias resource.
///
/// Alias for functions.
///
/// For information about FCV3 Alias and how to use it, see [What is Alias](https://www.alibabacloud.com/help/en/functioncompute/developer-reference/api-fc-2023-03-30-createalias).
///
/// > **NOTE:** Available since v1.228.0.
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
/// const functionName = config.get("functionName") || "flask-3xdg";
/// const _default = new alicloud.fc.V3Alias("default", {
///     versionId: "1",
///     functionName: functionName,
///     description: "create alias",
///     aliasName: name,
///     additionalVersionWeight: {
///         "2": 0.5,
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
///     name = "terraform-example"
/// function_name = config.get("functionName")
/// if function_name is None:
///     function_name = "flask-3xdg"
/// default = alicloud.fc.V3Alias("default",
///     version_id="1",
///     function_name=function_name,
///     description="create alias",
///     alias_name=name,
///     additional_version_weight={
///         "2": 0.5,
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
///     var name = config.Get("name") ?? "terraform-example";
///     var functionName = config.Get("functionName") ?? "flask-3xdg";
///     var @default = new AliCloud.FC.V3Alias("default", new()
///     {
///         VersionId = "1",
///         FunctionName = functionName,
///         Description = "create alias",
///         AliasName = name,
///         AdditionalVersionWeight =
///         {
///             { "2", 0.5 },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
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
/// 		functionName := "flask-3xdg"
/// 		if param := cfg.Get("functionName"); param != "" {
/// 			functionName = param
/// 		}
/// 		_, err := fc.NewV3Alias(ctx, "default", &fc.V3AliasArgs{
/// 			VersionId:    pulumi.String("1"),
/// 			FunctionName: pulumi.String(functionName),
/// 			Description:  pulumi.String("create alias"),
/// 			AliasName:    pulumi.String(name),
/// 			AdditionalVersionWeight: pulumi.Float64Map{
/// 				"2": pulumi.Float64(0.5),
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
/// import com.pulumi.alicloud.fc.V3Alias;
/// import com.pulumi.alicloud.fc.V3AliasArgs;
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
///         final var functionName = config.get("functionName").orElse("flask-3xdg");
///         var default_ = new V3Alias("default", V3AliasArgs.builder()
///             .versionId("1")
///             .functionName(functionName)
///             .description("create alias")
///             .aliasName(name)
///             .additionalVersionWeight(Map.of("2", 0.5))
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
///   functionName:
///     type: string
///     default: flask-3xdg
/// resources:
///   default:
///     type: alicloud:fc:V3Alias
///     properties:
///       versionId: '1'
///       functionName: ${functionName}
///       description: create alias
///       aliasName: ${name}
///       additionalVersionWeight:
///         '2': '0.5'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// FCV3 Alias can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fc/v3Alias:V3Alias example <function_name>:<alias_name>
/// ```
class V3Alias extends pulumi.CustomResource {
  /// Grayscale version
  late final pulumi.Output<Map<String, double>?> additionalVersionWeight;
  /// Function Alias
  late final pulumi.Output<String> aliasName;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Description
  late final pulumi.Output<String?> description;
  /// Function Name
  late final pulumi.Output<String> functionName;
  /// (Available since v1.234.0) Last modification time
  late final pulumi.Output<String> lastModifiedTime;
  /// The version that the alias points
  late final pulumi.Output<String?> versionId;

  /// Creates a new [V3Alias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V3Alias]. {@macro pulumi_fc_v3_alias_v3_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V3Alias(
    String name, {
    V3AliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/v3Alias:V3Alias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalVersionWeight = registerOutput<Map<String, double>?>('additionalVersionWeight');
    this.aliasName = registerOutput<String>('aliasName');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.functionName = registerOutput<String>('functionName');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.versionId = registerOutput<String?>('versionId');
  }
}
