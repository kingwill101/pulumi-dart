import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_user_config_args.dart';
import 'workspace_user_config_state.dart';

/// Provides a PAI Workspace User Config resource.
///
///
///
/// For information about PAI Workspace User Config and how to use it, see [What is User Config](https://www.alibabacloud.com/help/en/pai/developer-reference/api-aiworkspace-2021-02-04-setuserconfigs).
///
/// &gt; **NOTE:** Available since v1.250.0.
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
/// const name = config.get("name") || "terraform_example";
/// const _default = new alicloud.pai.WorkspaceUserConfig("default", {
///     categoryName: "DataPrivacyConfig",
///     configKey: "customizePAIAssumedRole",
///     configValue: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default = alicloud.pai.WorkspaceUserConfig("default",
///     category_name="DataPrivacyConfig",
///     config_key="customizePAIAssumedRole",
///     config_value=name)
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
///     var name = config.Get("name") ?? "terraform_example";
///     var @default = new AliCloud.Pai.WorkspaceUserConfig("default", new()
///     {
///         CategoryName = "DataPrivacyConfig",
///         ConfigKey = "customizePAIAssumedRole",
///         ConfigValue = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pai"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := pai.NewWorkspaceUserConfig(ctx, "default", &pai.WorkspaceUserConfigArgs{
/// 			CategoryName: pulumi.String("DataPrivacyConfig"),
/// 			ConfigKey:    pulumi.String("customizePAIAssumedRole"),
/// 			ConfigValue:  pulumi.String(name),
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
/// import com.pulumi.alicloud.pai.WorkspaceUserConfig;
/// import com.pulumi.alicloud.pai.WorkspaceUserConfigArgs;
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
///         final var name = config.get("name").orElse("terraform_example");
///         var default_ = new WorkspaceUserConfig("default", WorkspaceUserConfigArgs.builder()
///             .categoryName("DataPrivacyConfig")
///             .configKey("customizePAIAssumedRole")
///             .configValue(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
/// resources:
///   default:
///     type: alicloud:pai:WorkspaceUserConfig
///     properties:
///       categoryName: DataPrivacyConfig
///       configKey: customizePAIAssumedRole
///       configValue: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// PAI Workspace User Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pai/workspaceUserConfig:WorkspaceUserConfig example <category_name>:<config_key>
/// ```
class WorkspaceUserConfig extends pulumi.CustomResource {
  /// The category. Valid values: `DataPrivacyConfig`.
  late final pulumi.Output<String> categoryName;

  /// The key of the configuration.
  late final pulumi.Output<String> configKey;

  /// The value of the configuration.
  late final pulumi.Output<String> configValue;

  /// The scope. Default value: `owner`. Valid values: `owner`, `subUser`.
  late final pulumi.Output<String> scope;

  /// Creates a new [WorkspaceUserConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceUserConfig]. {@macro pulumi_pai_workspace_user_config_workspace_user_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceUserConfig(
    String name, {
    WorkspaceUserConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:pai/workspaceUserConfig:WorkspaceUserConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    categoryName = registerOutput<String>('categoryName');
    configKey = registerOutput<String>('configKey');
    configValue = registerOutput<String>('configValue');
    scope = registerOutput<String>('scope');
  }

  /// Gets an existing [WorkspaceUserConfig] resource's state with the given [name] and [id].
  static WorkspaceUserConfig get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceUserConfigState? state,
  }) {
    return WorkspaceUserConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceUserConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:pai/workspaceUserConfig:WorkspaceUserConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    categoryName = registerOutput<String>('categoryName');
    configKey = registerOutput<String>('configKey');
    configValue = registerOutput<String>('configValue');
    scope = registerOutput<String>('scope');
  }
}
