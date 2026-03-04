import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_group_args.dart';
import 'application_group_state.dart';

/// Provides a OOS Application Group resource.
///
/// For information about OOS Application Group and how to use it, see [What is Application Group](https://www.alibabacloud.com/help/en/operation-orchestration-service/latest/api-oos-2019-06-01-createapplicationgroup).
///
/// &gt; **NOTE:** Available since v1.146.0.
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
/// const name = config.get("name") || "terraform-example";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultApplication = new alicloud.oos.Application("default", {
///     resourceGroupId: _default.then(_default => _default.groups?.[0]?.id),
///     applicationName: `${name}-${defaultInteger.result}`,
///     description: name,
///     tags: {
///         Created: "TF",
///     },
/// });
/// const defaultGetRegions = alicloud.getRegions({
///     current: true,
/// });
/// const defaultApplicationGroup = new alicloud.oos.ApplicationGroup("default", {
///     applicationGroupName: name,
///     applicationName: defaultApplication.id,
///     deployRegionId: defaultGetRegions.then(defaultGetRegions => defaultGetRegions.regions?.[0]?.id),
///     description: name,
///     importTagKey: "example_key",
///     importTagValue: "example_value",
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
///     name = "terraform-example"
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_application = alicloud.oos.Application("default",
///     resource_group_id=default.groups[0].id,
///     application_name=f"{name}-{default_integer['result']}",
///     description=name,
///     tags={
///         "Created": "TF",
///     })
/// default_get_regions = alicloud.get_regions(current=True)
/// default_application_group = alicloud.oos.ApplicationGroup("default",
///     application_group_name=name,
///     application_name=default_application.id,
///     deploy_region_id=default_get_regions.regions[0].id,
///     description=name,
///     import_tag_key="example_key",
///     import_tag_value="example_value")
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
///     var name = config.Get("name") ?? "terraform-example";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultApplication = new AliCloud.Oos.Application("default", new()
///     {
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id)),
///         ApplicationName = $"{name}-{defaultInteger.Result}",
///         Description = name,
///         Tags =
///         {
///             { "Created", "TF" },
///         },
///     });
///
///     var defaultGetRegions = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultApplicationGroup = new AliCloud.Oos.ApplicationGroup("default", new()
///     {
///         ApplicationGroupName = name,
///         ApplicationName = defaultApplication.Id,
///         DeployRegionId = defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///         Description = name,
///         ImportTagKey = "example_key",
///         ImportTagValue = "example_value",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oos"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultApplication, err := oos.NewApplication(ctx, "default", &oos.ApplicationArgs{
/// 			ResourceGroupId: pulumi.String(_default.Groups[0].Id),
/// 			ApplicationName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			Description:     pulumi.String(name),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetRegions, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oos.NewApplicationGroup(ctx, "default", &oos.ApplicationGroupArgs{
/// 			ApplicationGroupName: pulumi.String(name),
/// 			ApplicationName:      defaultApplication.ID(),
/// 			DeployRegionId:       pulumi.String(defaultGetRegions.Regions[0].Id),
/// 			Description:          pulumi.String(name),
/// 			ImportTagKey:         pulumi.String("example_key"),
/// 			ImportTagValue:       pulumi.String("example_value"),
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
/// import com.pulumi.alicloud.oos.Application;
/// import com.pulumi.alicloud.oos.ApplicationArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.oos.ApplicationGroup;
/// import com.pulumi.alicloud.oos.ApplicationGroupArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultApplication = new Application("defaultApplication", ApplicationArgs.builder()
///             .resourceGroupId(default_.groups()[0].id())
///             .applicationName(String.format("%s-%s", name,defaultInteger.result()))
///             .description(name)
///             .tags(Map.of("Created", "TF"))
///             .build());
///
///         final var defaultGetRegions = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultApplicationGroup = new ApplicationGroup("defaultApplicationGroup", ApplicationGroupArgs.builder()
///             .applicationGroupName(name)
///             .applicationName(defaultApplication.id())
///             .deployRegionId(defaultGetRegions.regions()[0].id())
///             .description(name)
///             .importTagKey("example_key")
///             .importTagValue("example_value")
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultApplication:
///     type: alicloud:oos:Application
///     name: default
///     properties:
///       resourceGroupId: ${default.groups[0].id}
///       applicationName: ${name}-${defaultInteger.result}
///       description: ${name}
///       tags:
///         Created: TF
///   defaultApplicationGroup:
///     type: alicloud:oos:ApplicationGroup
///     name: default
///     properties:
///       applicationGroupName: ${name}
///       applicationName: ${defaultApplication.id}
///       deployRegionId: ${defaultGetRegions.regions[0].id}
///       description: ${name}
///       importTagKey: example_key
///       importTagValue: example_value
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   defaultGetRegions:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OOS Application Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oos/applicationGroup:ApplicationGroup example <application_name>:<application_group_name>
/// ```
class ApplicationGroup extends pulumi.CustomResource {
  /// The name of the Application group.
  late final pulumi.Output<String> applicationGroupName;

  /// The name of the Application.
  late final pulumi.Output<String> applicationName;

  /// The region ID of the deployment.
  late final pulumi.Output<String> deployRegionId;

  /// Application group description information.
  late final pulumi.Output<String?> description;

  /// The tag key must be passed in at the same time as the tag value (import_tag_value) or none, not just one. If both `import_tag_key` and `import_tag_value` are left empty, the default is app-{ApplicationName} (application name).
  late final pulumi.Output<String> importTagKey;

  /// The tag value must be passed in at the same time as the tag key (import_tag_key) or none, not just one. If both `import_tag_key` and `import_tag_value` are left empty, the default is application group name.
  /// .
  late final pulumi.Output<String> importTagValue;

  /// Creates a new [ApplicationGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationGroup]. {@macro pulumi_oos_application_group_application_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationGroup(
    String name, {
    ApplicationGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oos/applicationGroup:ApplicationGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applicationGroupName = registerOutput<String>('applicationGroupName');
    applicationName = registerOutput<String>('applicationName');
    deployRegionId = registerOutput<String>('deployRegionId');
    description = registerOutput<String?>('description');
    importTagKey = registerOutput<String>('importTagKey');
    importTagValue = registerOutput<String>('importTagValue');
  }

  /// Gets an existing [ApplicationGroup] resource's state with the given [name] and [id].
  static ApplicationGroup get(
    String name,
    pulumi.Input<String> id, {
    ApplicationGroupState? state,
  }) {
    return ApplicationGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oos/applicationGroup:ApplicationGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applicationGroupName = registerOutput<String>('applicationGroupName');
    applicationName = registerOutput<String>('applicationName');
    deployRegionId = registerOutput<String>('deployRegionId');
    description = registerOutput<String?>('description');
    importTagKey = registerOutput<String>('importTagKey');
    importTagValue = registerOutput<String>('importTagValue');
  }
}
