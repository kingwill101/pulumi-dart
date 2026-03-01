import 'package:pulumi/pulumi.dart' as pulumi;
import 'state_configuration_args.dart';
import 'state_configuration_state.dart';

/// Provides a OOS State Configuration resource.
///
/// For information about OOS State Configuration and how to use it, see [What is State Configuration](https://www.alibabacloud.com/help/en/doc-detail/208728.html).
///
/// > **NOTE:** Available in v1.147.0+.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultStateConfiguration = new alicloud.oos.StateConfiguration("default", {
///     templateName: "ACS-ECS-InventoryDataCollection",
///     configureMode: "ApplyOnly",
///     description: "terraform-example",
///     scheduleType: "rate",
///     scheduleExpression: "1 hour",
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
///     targets: "{\"Filters\": [{\"Type\": \"All\", \"Parameters\": {\"InstanceChargeType\": \"PrePaid\"}}], \"ResourceType\": \"ALIYUN::ECS::Instance\"}",
///     parameters: "{\"policy\": {\"ACS:Application\": {\"Collection\": \"Enabled\"}}}",
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_state_configuration = alicloud.oos.StateConfiguration("default",
///     template_name="ACS-ECS-InventoryDataCollection",
///     configure_mode="ApplyOnly",
///     description="terraform-example",
///     schedule_type="rate",
///     schedule_expression="1 hour",
///     resource_group_id=default.ids[0],
///     targets="{\"Filters\": [{\"Type\": \"All\", \"Parameters\": {\"InstanceChargeType\": \"PrePaid\"}}], \"ResourceType\": \"ALIYUN::ECS::Instance\"}",
///     parameters="{\"policy\": {\"ACS:Application\": {\"Collection\": \"Enabled\"}}}",
///     tags={
///         "Created": "TF",
///         "For": "example",
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultStateConfiguration = new AliCloud.Oos.StateConfiguration("default", new()
///     {
///         TemplateName = "ACS-ECS-InventoryDataCollection",
///         ConfigureMode = "ApplyOnly",
///         Description = "terraform-example",
///         ScheduleType = "rate",
///         ScheduleExpression = "1 hour",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         Targets = "{\"Filters\": [{\"Type\": \"All\", \"Parameters\": {\"InstanceChargeType\": \"PrePaid\"}}], \"ResourceType\": \"ALIYUN::ECS::Instance\"}",
///         Parameters = "{\"policy\": {\"ACS:Application\": {\"Collection\": \"Enabled\"}}}",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oos"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oos.NewStateConfiguration(ctx, "default", &oos.StateConfigurationArgs{
/// 			TemplateName:       pulumi.String("ACS-ECS-InventoryDataCollection"),
/// 			ConfigureMode:      pulumi.String("ApplyOnly"),
/// 			Description:        pulumi.String("terraform-example"),
/// 			ScheduleType:       pulumi.String("rate"),
/// 			ScheduleExpression: pulumi.String("1 hour"),
/// 			ResourceGroupId:    pulumi.String(_default.Ids[0]),
/// 			Targets:            pulumi.String("{\"Filters\": [{\"Type\": \"All\", \"Parameters\": {\"InstanceChargeType\": \"PrePaid\"}}], \"ResourceType\": \"ALIYUN::ECS::Instance\"}"),
/// 			Parameters:         pulumi.String("{\"policy\": {\"ACS:Application\": {\"Collection\": \"Enabled\"}}}"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.oos.StateConfiguration;
/// import com.pulumi.alicloud.oos.StateConfigurationArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultStateConfiguration = new StateConfiguration("defaultStateConfiguration", StateConfigurationArgs.builder()
///             .templateName("ACS-ECS-InventoryDataCollection")
///             .configureMode("ApplyOnly")
///             .description("terraform-example")
///             .scheduleType("rate")
///             .scheduleExpression("1 hour")
///             .resourceGroupId(default_.ids()[0])
///             .targets("{\"Filters\": [{\"Type\": \"All\", \"Parameters\": {\"InstanceChargeType\": \"PrePaid\"}}], \"ResourceType\": \"ALIYUN::ECS::Instance\"}")
///             .parameters("{\"policy\": {\"ACS:Application\": {\"Collection\": \"Enabled\"}}}")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultStateConfiguration:
///     type: alicloud:oos:StateConfiguration
///     name: default
///     properties:
///       templateName: ACS-ECS-InventoryDataCollection
///       configureMode: ApplyOnly
///       description: terraform-example
///       scheduleType: rate
///       scheduleExpression: 1 hour
///       resourceGroupId: ${default.ids[0]}
///       targets: '{"Filters": [{"Type": "All", "Parameters": {"InstanceChargeType": "PrePaid"}}], "ResourceType": "ALIYUN::ECS::Instance"}'
///       parameters: '{"policy": {"ACS:Application": {"Collection": "Enabled"}}}'
///       tags:
///         Created: TF
///         For: example
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
/// OOS State Configuration can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oos/stateConfiguration:StateConfiguration example <id>
/// ```
class StateConfiguration extends pulumi.CustomResource {
  /// Configuration mode. Valid values: `ApplyAndAutoCorrect`, `ApplyAndMonitor`, `ApplyOnly`.
  late final pulumi.Output<String> configureMode;
  /// The description of the resource.
  late final pulumi.Output<String?> description;
  /// The parameter of the Template. This field is in the format of JSON strings. For detailed definition instructions, please refer to [Metadata types that are supported by a configuration list](https://www.alibabacloud.com/help/en/doc-detail/208276.html).
  late final pulumi.Output<String?> parameters;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// Timing expression.
  late final pulumi.Output<String> scheduleExpression;
  /// Timing type. Valid values: `rate`.
  late final pulumi.Output<String> scheduleType;
  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Target resources.  This field is in the format of JSON strings. For detailed definition instructions, please refer to [Parameter](https://www.alibabacloud.com/help/en/doc-detail/120674.html).
  late final pulumi.Output<String> targets;
  /// The name of the template.
  late final pulumi.Output<String> templateName;
  /// The version number. If you do not specify this parameter, the system uses the latest version.
  late final pulumi.Output<String> templateVersion;

  /// Creates a new [StateConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StateConfiguration]. {@macro pulumi_oos_state_configuration_state_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StateConfiguration(
    String name, {
    StateConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oos/stateConfiguration:StateConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configureMode = registerOutput<String>('configureMode');
    this.description = registerOutput<String?>('description');
    this.parameters = registerOutput<String?>('parameters');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.scheduleExpression = registerOutput<String>('scheduleExpression');
    this.scheduleType = registerOutput<String>('scheduleType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targets = registerOutput<String>('targets');
    this.templateName = registerOutput<String>('templateName');
    this.templateVersion = registerOutput<String>('templateVersion');
  }

  /// Gets an existing [StateConfiguration] resource's state with the given [name] and [id].
  static StateConfiguration get(
    String name,
    pulumi.Input<String> id, {
    StateConfigurationState? state,
  }) {
    return StateConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StateConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oos/stateConfiguration:StateConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configureMode = registerOutput<String>('configureMode');
    this.description = registerOutput<String?>('description');
    this.parameters = registerOutput<String?>('parameters');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.scheduleExpression = registerOutput<String>('scheduleExpression');
    this.scheduleType = registerOutput<String>('scheduleType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targets = registerOutput<String>('targets');
    this.templateName = registerOutput<String>('templateName');
    this.templateVersion = registerOutput<String>('templateVersion');
  }
}
