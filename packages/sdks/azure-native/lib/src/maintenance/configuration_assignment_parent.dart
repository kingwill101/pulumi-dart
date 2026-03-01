import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_assignment_filter_properties_response.dart';
import 'configuration_assignment_parent_args.dart';
import 'system_data_response.dart';

/// Configuration Assignment
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-11-01-preview.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01, 2023-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native maintenance [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfigurationAssignments_CreateOrUpdateParent
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationAssignmentParent = new AzureNative.Maintenance.ConfigurationAssignmentParent("configurationAssignmentParent", new()
///     {
///         ConfigurationAssignmentName = "workervmPolicy",
///         MaintenanceConfigurationId = "/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/policy1",
///         ProviderName = "Microsoft.Compute",
///         ResourceGroupName = "examplerg",
///         ResourceName = "smdvm1",
///         ResourceParentName = "smdtest1",
///         ResourceParentType = "virtualMachineScaleSets",
///         ResourceType = "virtualMachines",
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
/// 		_, err := maintenance.NewConfigurationAssignmentParent(ctx, "configurationAssignmentParent", &maintenance.ConfigurationAssignmentParentArgs{
/// 			ConfigurationAssignmentName: pulumi.String("workervmPolicy"),
/// 			MaintenanceConfigurationId:  pulumi.String("/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/policy1"),
/// 			ProviderName:                pulumi.String("Microsoft.Compute"),
/// 			ResourceGroupName:           pulumi.String("examplerg"),
/// 			ResourceName:                pulumi.String("smdvm1"),
/// 			ResourceParentName:          pulumi.String("smdtest1"),
/// 			ResourceParentType:          pulumi.String("virtualMachineScaleSets"),
/// 			ResourceType:                pulumi.String("virtualMachines"),
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
/// import com.pulumi.azurenative.maintenance.ConfigurationAssignmentParent;
/// import com.pulumi.azurenative.maintenance.ConfigurationAssignmentParentArgs;
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
///         var configurationAssignmentParent = new ConfigurationAssignmentParent("configurationAssignmentParent", ConfigurationAssignmentParentArgs.builder()
///             .configurationAssignmentName("workervmPolicy")
///             .maintenanceConfigurationId("/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/policy1")
///             .providerName("Microsoft.Compute")
///             .resourceGroupName("examplerg")
///             .resourceName("smdvm1")
///             .resourceParentName("smdtest1")
///             .resourceParentType("virtualMachineScaleSets")
///             .resourceType("virtualMachines")
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
/// const configurationAssignmentParent = new azure_native.maintenance.ConfigurationAssignmentParent("configurationAssignmentParent", {
///     configurationAssignmentName: "workervmPolicy",
///     maintenanceConfigurationId: "/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/policy1",
///     providerName: "Microsoft.Compute",
///     resourceGroupName: "examplerg",
///     resourceName: "smdvm1",
///     resourceParentName: "smdtest1",
///     resourceParentType: "virtualMachineScaleSets",
///     resourceType: "virtualMachines",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_assignment_parent = azure_native.maintenance.ConfigurationAssignmentParent("configurationAssignmentParent",
///     configuration_assignment_name="workervmPolicy",
///     maintenance_configuration_id="/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/policy1",
///     provider_name="Microsoft.Compute",
///     resource_group_name="examplerg",
///     resource_name_="smdvm1",
///     resource_parent_name="smdtest1",
///     resource_parent_type="virtualMachineScaleSets",
///     resource_type="virtualMachines")
///
/// ```
///
/// ```yaml
/// resources:
///   configurationAssignmentParent:
///     type: azure-native:maintenance:ConfigurationAssignmentParent
///     properties:
///       configurationAssignmentName: workervmPolicy
///       maintenanceConfigurationId: /subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/policy1
///       providerName: Microsoft.Compute
///       resourceGroupName: examplerg
///       resourceName: smdvm1
///       resourceParentName: smdtest1
///       resourceParentType: virtualMachineScaleSets
///       resourceType: virtualMachines
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
/// $ pulumi import azure-native:maintenance:ConfigurationAssignmentParent workervmPolicy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{providerName}/{resourceParentType}/{resourceParentName}/{resourceType}/{resourceName}/providers/Microsoft.Maintenance/configurationAssignments/{configurationAssignmentName}
/// ```
class ConfigurationAssignmentParent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Properties of the configuration assignment
  late final pulumi.Output<ConfigurationAssignmentFilterPropertiesResponse?> filter;
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

  /// Creates a new [ConfigurationAssignmentParent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationAssignmentParent]. {@macro pulumi_maintenance_configuration_assignment_parent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationAssignmentParent(
    String name, {
    ConfigurationAssignmentParentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:maintenance:ConfigurationAssignmentParent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.filter = registerOutput<ConfigurationAssignmentFilterPropertiesResponse?>('filter');
    this.location = registerOutput<String?>('location');
    this.maintenanceConfigurationId = registerOutput<String?>('maintenanceConfigurationId');
    this.name = registerOutput<String>('name');
    this.resourceId = registerOutput<String?>('resourceId');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
