import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_profile_assignment_args.dart';
import 'configuration_profile_assignment_properties_response.dart';
import 'system_data_response.dart';

/// Configuration profile assignment is an association between a VM and automanage profile configuration.
///
/// Uses Azure REST API version 2022-05-04. In version 2.x of the Azure Native provider, it used API version 2022-05-04.
///
/// Other available API versions: 2020-06-30-preview, 2021-04-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automanage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update configuration profile assignment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationProfileAssignment = new AzureNative.Automanage.ConfigurationProfileAssignment("configurationProfileAssignment", new()
///     {
///         ConfigurationProfileAssignmentName = "default",
///         Properties = new AzureNative.Automanage.Inputs.ConfigurationProfileAssignmentPropertiesArgs
///         {
///             ConfigurationProfile = "/providers/Microsoft.Automanage/bestPractices/AzureBestPracticesProduction",
///         },
///         ResourceGroupName = "myResourceGroupName",
///         VmName = "myVMName",
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
/// 	automanage "github.com/pulumi/pulumi-azure-native-sdk/automanage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := automanage.NewConfigurationProfileAssignment(ctx, "configurationProfileAssignment", &automanage.ConfigurationProfileAssignmentArgs{
/// 			ConfigurationProfileAssignmentName: pulumi.String("default"),
/// 			Properties: &automanage.ConfigurationProfileAssignmentPropertiesArgs{
/// 				ConfigurationProfile: pulumi.String("/providers/Microsoft.Automanage/bestPractices/AzureBestPracticesProduction"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroupName"),
/// 			VmName:            pulumi.String("myVMName"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_automanage_configurationprofileassignment" "configurationProfileAssignment" {
///   configuration_profile_assignment_name = "default"
///   properties = {
///     configuration_profile = "/providers/Microsoft.Automanage/bestPractices/AzureBestPracticesProduction"
///   }
///   resource_group_name = "myResourceGroupName"
///   vm_name             = "myVMName"
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
/// import com.pulumi.azurenative.automanage.ConfigurationProfileAssignment;
/// import com.pulumi.azurenative.automanage.ConfigurationProfileAssignmentArgs;
/// import com.pulumi.azurenative.automanage.inputs.ConfigurationProfileAssignmentPropertiesArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var configurationProfileAssignment = new ConfigurationProfileAssignment("configurationProfileAssignment", ConfigurationProfileAssignmentArgs.builder()
///             .configurationProfileAssignmentName("default")
///             .properties(ConfigurationProfileAssignmentPropertiesArgs.builder()
///                 .configurationProfile("/providers/Microsoft.Automanage/bestPractices/AzureBestPracticesProduction")
///                 .build())
///             .resourceGroupName("myResourceGroupName")
///             .vmName("myVMName")
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
/// const configurationProfileAssignment = new azure_native.automanage.ConfigurationProfileAssignment("configurationProfileAssignment", {
///     configurationProfileAssignmentName: "default",
///     properties: {
///         configurationProfile: "/providers/Microsoft.Automanage/bestPractices/AzureBestPracticesProduction",
///     },
///     resourceGroupName: "myResourceGroupName",
///     vmName: "myVMName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_profile_assignment = azure_native.automanage.ConfigurationProfileAssignment("configurationProfileAssignment",
///     configuration_profile_assignment_name="default",
///     properties={
///         "configuration_profile": "/providers/Microsoft.Automanage/bestPractices/AzureBestPracticesProduction",
///     },
///     resource_group_name="myResourceGroupName",
///     vm_name="myVMName")
///
/// ```
///
/// ```yaml
/// resources:
///   configurationProfileAssignment:
///     type: azure-native:automanage:ConfigurationProfileAssignment
///     properties:
///       configurationProfileAssignmentName: default
///       properties:
///         configurationProfile: /providers/Microsoft.Automanage/bestPractices/AzureBestPracticesProduction
///       resourceGroupName: myResourceGroupName
///       vmName: myVMName
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
/// $ pulumi import azure-native:automanage:ConfigurationProfileAssignment default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/virtualMachines/{vmName}/providers/Microsoft.Automanage/configurationProfileAssignments/{configurationProfileAssignmentName}
/// ```
class ConfigurationProfileAssignment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Azure resource id. Indicates if this resource is managed by another Azure resource.
  late final pulumi.Output<String> managedBy;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of the configuration profile assignment.
  late final pulumi.Output<ConfigurationProfileAssignmentPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConfigurationProfileAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationProfileAssignment]. {@macro pulumi_automanage_configuration_profile_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationProfileAssignment(
    String name, {
    ConfigurationProfileAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automanage:ConfigurationProfileAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    managedBy = registerOutput<String>('managedBy');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConfigurationProfileAssignmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationProfileAssignmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ConfigurationProfileAssignment] resource.
  ConfigurationProfileAssignment.reference(String urn)
    : super(
        'azure-native:automanage:ConfigurationProfileAssignment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    managedBy = registerOutput<String>('managedBy');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConfigurationProfileAssignmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationProfileAssignmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
