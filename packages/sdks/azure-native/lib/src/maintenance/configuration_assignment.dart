import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_assignment_args.dart';
import 'configuration_assignment_filter_properties_response.dart';
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
/// ### ConfigurationAssignments_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationAssignment = new AzureNative.Maintenance.ConfigurationAssignment("configurationAssignment", new()
///     {
///         ConfigurationAssignmentName = "workervmConfiguration",
///         MaintenanceConfigurationId = "/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/configuration1",
///         ProviderName = "Microsoft.Compute",
///         ResourceGroupName = "examplerg",
///         ResourceName = "smdtest1",
///         ResourceType = "virtualMachineScaleSets",
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
/// 		_, err := maintenance.NewConfigurationAssignment(ctx, "configurationAssignment", &maintenance.ConfigurationAssignmentArgs{
/// 			ConfigurationAssignmentName: pulumi.String("workervmConfiguration"),
/// 			MaintenanceConfigurationId:  pulumi.String("/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/configuration1"),
/// 			ProviderName:                pulumi.String("Microsoft.Compute"),
/// 			ResourceGroupName:           pulumi.String("examplerg"),
/// 			ResourceName:                pulumi.String("smdtest1"),
/// 			ResourceType:                pulumi.String("virtualMachineScaleSets"),
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
/// import com.pulumi.azurenative.maintenance.ConfigurationAssignment;
/// import com.pulumi.azurenative.maintenance.ConfigurationAssignmentArgs;
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
///         var configurationAssignment = new ConfigurationAssignment("configurationAssignment", ConfigurationAssignmentArgs.builder()
///             .configurationAssignmentName("workervmConfiguration")
///             .maintenanceConfigurationId("/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/configuration1")
///             .providerName("Microsoft.Compute")
///             .resourceGroupName("examplerg")
///             .resourceName("smdtest1")
///             .resourceType("virtualMachineScaleSets")
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
/// const configurationAssignment = new azure_native.maintenance.ConfigurationAssignment("configurationAssignment", {
///     configurationAssignmentName: "workervmConfiguration",
///     maintenanceConfigurationId: "/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/configuration1",
///     providerName: "Microsoft.Compute",
///     resourceGroupName: "examplerg",
///     resourceName: "smdtest1",
///     resourceType: "virtualMachineScaleSets",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_assignment = azure_native.maintenance.ConfigurationAssignment("configurationAssignment",
///     configuration_assignment_name="workervmConfiguration",
///     maintenance_configuration_id="/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/configuration1",
///     provider_name="Microsoft.Compute",
///     resource_group_name="examplerg",
///     resource_name_="smdtest1",
///     resource_type="virtualMachineScaleSets")
///
/// ```
///
/// ```yaml
/// resources:
///   configurationAssignment:
///     type: azure-native:maintenance:ConfigurationAssignment
///     properties:
///       configurationAssignmentName: workervmConfiguration
///       maintenanceConfigurationId: /subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourcegroups/examplerg/providers/Microsoft.Maintenance/maintenanceConfigurations/configuration1
///       providerName: Microsoft.Compute
///       resourceGroupName: examplerg
///       resourceName: smdtest1
///       resourceType: virtualMachineScaleSets
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
/// $ pulumi import azure-native:maintenance:ConfigurationAssignment workervmConfiguration /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{providerName}/{resourceType}/{resourceName}/providers/Microsoft.Maintenance/configurationAssignments/{configurationAssignmentName}
/// ```
class ConfigurationAssignment extends pulumi.CustomResource {
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

  /// Creates a new [ConfigurationAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationAssignment]. {@macro pulumi_maintenance_configuration_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationAssignment(
    String name, {
    ConfigurationAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:maintenance:ConfigurationAssignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    filter = registerOutput<ConfigurationAssignmentFilterPropertiesResponse?>(
      'filter',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ConfigurationAssignmentFilterPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String?>('location');
    maintenanceConfigurationId = registerOutput<String?>(
      'maintenanceConfigurationId',
    );
    this.name = registerOutput<String>('name');
    resourceId = registerOutput<String?>('resourceId');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
