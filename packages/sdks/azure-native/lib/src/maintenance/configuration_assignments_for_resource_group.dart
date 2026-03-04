import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_assignment_filter_properties_response.dart';
import 'configuration_assignments_for_resource_group_args.dart';
import 'system_data_response.dart';

/// Configuration Assignment
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-04-01, 2023-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native maintenance [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfigurationAssignmentsForResourceGroup_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationAssignmentsForResourceGroup = new AzureNative.Maintenance.ConfigurationAssignmentsForResourceGroup("configurationAssignmentsForResourceGroup", new()
///     {
///         ConfigurationAssignmentName = "workervmConfiguration",
///         Filter = new AzureNative.Maintenance.Inputs.ConfigurationAssignmentFilterPropertiesArgs
///         {
///             Locations = new[]
///             {
///                 "Japan East",
///                 "UK South",
///             },
///             ResourceTypes = new[]
///             {
///                 "Microsoft.HybridCompute/machines",
///                 "Microsoft.Compute/virtualMachines",
///             },
///             TagSettings = new AzureNative.Maintenance.Inputs.TagSettingsPropertiesArgs
///             {
///                 FilterOperator = AzureNative.Maintenance.TagOperators.Any,
///                 Tags =
///                 {
///                     { "tag1", new[]
///                     {
///                         "tag1Value1",
///                         "tag1Value2",
///                         "tag1Value3",
///                     } },
///                     { "tag2", new[]
///                     {
///                         "tag2Value1",
///                         "tag2Value2",
///                         "tag2Value3",
///                     } },
///                 },
///             },
///         },
///         MaintenanceConfigurationId = "/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/configuration1",
///         ResourceGroupName = "examplerg",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	maintenance "github.com/pulumi/pulumi-azure-native-sdk/maintenance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := maintenance.NewConfigurationAssignmentsForResourceGroup(ctx, "configurationAssignmentsForResourceGroup", &maintenance.ConfigurationAssignmentsForResourceGroupArgs{
/// 			ConfigurationAssignmentName: pulumi.String("workervmConfiguration"),
/// 			Filter: &maintenance.ConfigurationAssignmentFilterPropertiesArgs{
/// 				Locations: pulumi.StringArray{
/// 					pulumi.String("Japan East"),
/// 					pulumi.String("UK South"),
/// 				},
/// 				ResourceTypes: pulumi.StringArray{
/// 					pulumi.String("Microsoft.HybridCompute/machines"),
/// 					pulumi.String("Microsoft.Compute/virtualMachines"),
/// 				},
/// 				TagSettings: &maintenance.TagSettingsPropertiesArgs{
/// 					FilterOperator: maintenance.TagOperatorsAny,
/// 					Tags: pulumi.StringArrayMap{
/// 						"tag1": pulumi.StringArray{
/// 							pulumi.String("tag1Value1"),
/// 							pulumi.String("tag1Value2"),
/// 							pulumi.String("tag1Value3"),
/// 						},
/// 						"tag2": pulumi.StringArray{
/// 							pulumi.String("tag2Value1"),
/// 							pulumi.String("tag2Value2"),
/// 							pulumi.String("tag2Value3"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			MaintenanceConfigurationId: pulumi.String("/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/configuration1"),
/// 			ResourceGroupName:          pulumi.String("examplerg"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.maintenance.ConfigurationAssignmentsForResourceGroup;
/// import com.pulumi.azurenative.maintenance.ConfigurationAssignmentsForResourceGroupArgs;
/// import com.pulumi.azurenative.maintenance.inputs.ConfigurationAssignmentFilterPropertiesArgs;
/// import com.pulumi.azurenative.maintenance.inputs.TagSettingsPropertiesArgs;
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
///         var configurationAssignmentsForResourceGroup = new ConfigurationAssignmentsForResourceGroup("configurationAssignmentsForResourceGroup", ConfigurationAssignmentsForResourceGroupArgs.builder()
///             .configurationAssignmentName("workervmConfiguration")
///             .filter(ConfigurationAssignmentFilterPropertiesArgs.builder()
///                 .locations(
///                     "Japan East",
///                     "UK South")
///                 .resourceTypes(
///                     "Microsoft.HybridCompute/machines",
///                     "Microsoft.Compute/virtualMachines")
///                 .tagSettings(TagSettingsPropertiesArgs.builder()
///                     .filterOperator("Any")
///                     .tags(Map.ofEntries(
///                         Map.entry("tag1",
///                             "tag1Value1",
///                             "tag1Value2",
///                             "tag1Value3"),
///                         Map.entry("tag2",
///                             "tag2Value1",
///                             "tag2Value2",
///                             "tag2Value3")
///                     ))
///                     .build())
///                 .build())
///             .maintenanceConfigurationId("/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/configuration1")
///             .resourceGroupName("examplerg")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const configurationAssignmentsForResourceGroup = new azure_native.maintenance.ConfigurationAssignmentsForResourceGroup("configurationAssignmentsForResourceGroup", {
///     configurationAssignmentName: "workervmConfiguration",
///     filter: {
///         locations: [
///             "Japan East",
///             "UK South",
///         ],
///         resourceTypes: [
///             "Microsoft.HybridCompute/machines",
///             "Microsoft.Compute/virtualMachines",
///         ],
///         tagSettings: {
///             filterOperator: azure_native.maintenance.TagOperators.Any,
///             tags: {
///                 tag1: [
///                     "tag1Value1",
///                     "tag1Value2",
///                     "tag1Value3",
///                 ],
///                 tag2: [
///                     "tag2Value1",
///                     "tag2Value2",
///                     "tag2Value3",
///                 ],
///             },
///         },
///     },
///     maintenanceConfigurationId: "/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/configuration1",
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_assignments_for_resource_group = azure_native.maintenance.ConfigurationAssignmentsForResourceGroup("configurationAssignmentsForResourceGroup",
///     configuration_assignment_name="workervmConfiguration",
///     filter={
///         "locations": [
///             "Japan East",
///             "UK South",
///         ],
///         "resource_types": [
///             "Microsoft.HybridCompute/machines",
///             "Microsoft.Compute/virtualMachines",
///         ],
///         "tag_settings": {
///             "filter_operator": azure_native.maintenance.TagOperators.ANY,
///             "tags": {
///                 "tag1": [
///                     "tag1Value1",
///                     "tag1Value2",
///                     "tag1Value3",
///                 ],
///                 "tag2": [
///                     "tag2Value1",
///                     "tag2Value2",
///                     "tag2Value3",
///                 ],
///             },
///         },
///     },
///     maintenance_configuration_id="/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/configuration1",
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   configurationAssignmentsForResourceGroup:
///     type: azure-native:maintenance:ConfigurationAssignmentsForResourceGroup
///     properties:
///       configurationAssignmentName: workervmConfiguration
///       filter:
///         locations:
///           - Japan East
///           - UK South
///         resourceTypes:
///           - Microsoft.HybridCompute/machines
///           - Microsoft.Compute/virtualMachines
///         tagSettings:
///           filterOperator: Any
///           tags:
///             tag1:
///               - tag1Value1
///               - tag1Value2
///               - tag1Value3
///             tag2:
///               - tag2Value1
///               - tag2Value2
///               - tag2Value3
///       maintenanceConfigurationId: /subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/configuration1
///       resourceGroupName: examplerg
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:maintenance:ConfigurationAssignmentsForResourceGroup workervmConfiguration /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Maintenance/configurationAssignments/{configurationAssignmentName}
/// ```
class ConfigurationAssignmentsForResourceGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Properties of the configuration assignment
  late final pulumi.Output<ConfigurationAssignmentFilterPropertiesResponse?>
  filter;

  /// Location of the resource
  late final pulumi.Output<String?> location;

  /// The maintenance configuration Id
  late final pulumi.Output<String?> maintenanceConfigurationId;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The unique resourceId
  late final pulumi.Output<String?> resourceId;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConfigurationAssignmentsForResourceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationAssignmentsForResourceGroup]. {@macro pulumi_maintenance_configuration_assignments_for_resource_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationAssignmentsForResourceGroup(
    String name, {
    ConfigurationAssignmentsForResourceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:maintenance:ConfigurationAssignmentsForResourceGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    filter = registerOutput<ConfigurationAssignmentFilterPropertiesResponse?>(
      'filter',
    );
    location = registerOutput<String?>('location');
    maintenanceConfigurationId = registerOutput<String?>(
      'maintenanceConfigurationId',
    );
    this.name = registerOutput<String>('name');
    resourceId = registerOutput<String?>('resourceId');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
