import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_state.dart';

/// Provides a Data Works Project resource.
///
///
///
/// For information about Data Works Project and how to use it, see [What is Project](https://www.alibabacloud.com/help/en/dataworks/developer-reference/api-dataworks-public-2024-05-18-createproject).
///
/// &gt; **NOTE:** Available since v1.229.0.
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const randint = new random.index.Integer("randint", {
///     max: 999,
///     min: 1,
/// });
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultProject = new alicloud.dataworks.Project("default", {
///     status: "Available",
///     description: "tf_desc",
///     projectName: `${name}${randint.id}`,
///     paiTaskEnabled: false,
///     displayName: "tf_new_api_display",
///     devRoleDisabled: true,
///     devEnvironmentEnabled: false,
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// randint = random.index.Integer("randint",
///     max=999,
///     min=1)
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_project = alicloud.dataworks.Project("default",
///     status="Available",
///     description="tf_desc",
///     project_name=f"{name}{randint['id']}",
///     pai_task_enabled=False,
///     display_name="tf_new_api_display",
///     dev_role_disabled=True,
///     dev_environment_enabled=False,
///     resource_group_id=default.ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var randint = new Random.Index.Integer("randint", new()
///     {
///         Max = 999,
///         Min = 1,
///     });
///
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultProject = new AliCloud.DataWorks.Project("default", new()
///     {
///         Status = "Available",
///         Description = "tf_desc",
///         ProjectName = $"{name}{randint.Id}",
///         PaiTaskEnabled = false,
///         DisplayName = "tf_new_api_display",
///         DevRoleDisabled = true,
///         DevEnvironmentEnabled = false,
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dataworks"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		randint, err := random.NewInteger(ctx, "randint", &random.IntegerArgs{
/// 			Max: 999,
/// 			Min: 1,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataworks.NewProject(ctx, "default", &dataworks.ProjectArgs{
/// 			Status:                pulumi.String("Available"),
/// 			Description:           pulumi.String("tf_desc"),
/// 			ProjectName:           pulumi.Sprintf("%v%v", name, randint.Id),
/// 			PaiTaskEnabled:        pulumi.Bool(false),
/// 			DisplayName:           pulumi.String("tf_new_api_display"),
/// 			DevRoleDisabled:       pulumi.Bool(true),
/// 			DevEnvironmentEnabled: pulumi.Bool(false),
/// 			ResourceGroupId:       pulumi.String(_default.Ids[0]),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.dataworks.Project;
/// import com.pulumi.alicloud.dataworks.ProjectArgs;
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
///         var randint = new Integer("randint", IntegerArgs.builder()
///             .max(999)
///             .min(1)
///             .build());
///
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultProject = new Project("defaultProject", ProjectArgs.builder()
///             .status("Available")
///             .description("tf_desc")
///             .projectName(String.format("%s%s", name,randint.id()))
///             .paiTaskEnabled(false)
///             .displayName("tf_new_api_display")
///             .devRoleDisabled(true)
///             .devEnvironmentEnabled(false)
///             .resourceGroupId(default_.ids()[0])
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
///   randint:
///     type: random:Integer
///     properties:
///       max: 999
///       min: 1
///   defaultProject:
///     type: alicloud:dataworks:Project
///     name: default
///     properties:
///       status: Available
///       description: tf_desc
///       projectName: ${name}${randint.id}
///       paiTaskEnabled: 'false'
///       displayName: tf_new_api_display
///       devRoleDisabled: 'true'
///       devEnvironmentEnabled: 'false'
///       resourceGroupId: ${default.ids[0]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Data Works Project can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dataworks/project:Project example <id>
/// ```
class Project extends pulumi.CustomResource {
  /// Workspace Description
  late final pulumi.Output<String?> description;

  /// Is Development Environment Enabled
  late final pulumi.Output<bool> devEnvironmentEnabled;

  /// Is Development Role Disabled
  late final pulumi.Output<bool> devRoleDisabled;

  /// Workspace Display Name
  late final pulumi.Output<String> displayName;

  /// Create PAI Workspace Together
  late final pulumi.Output<bool> paiTaskEnabled;

  /// Workspace Name
  late final pulumi.Output<String> projectName;

  /// Aliyun Resource Group Id
  late final pulumi.Output<String> resourceGroupId;

  /// Workspace Status
  late final pulumi.Output<String> status;

  /// Aliyun Resource Tag
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_dataworks_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dataworks/project:Project',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    devEnvironmentEnabled = registerOutput<bool>('devEnvironmentEnabled');
    devRoleDisabled = registerOutput<bool>('devRoleDisabled');
    displayName = registerOutput<String>('displayName');
    paiTaskEnabled = registerOutput<bool>('paiTaskEnabled');
    projectName = registerOutput<String>('projectName');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Project] resource's state with the given [name] and [id].
  static Project get(
    String name,
    pulumi.Input<String> id, {
    ProjectState? state,
  }) {
    return Project._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Project._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dataworks/project:Project',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    devEnvironmentEnabled = registerOutput<bool>('devEnvironmentEnabled');
    devRoleDisabled = registerOutput<bool>('devRoleDisabled');
    displayName = registerOutput<String>('displayName');
    paiTaskEnabled = registerOutput<bool>('paiTaskEnabled');
    projectName = registerOutput<String>('projectName');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
