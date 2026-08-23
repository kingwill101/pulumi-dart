import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_configuration_args.dart';
import 'dynamic_configuration_properties_response.dart';
import 'system_data_response.dart';

/// Dynamic Configuration Resource
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DynamicConfigurations_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dynamicConfiguration = new AzureNative.Edge.DynamicConfiguration("dynamicConfiguration", new()
///     {
///         ConfigurationName = "parameterName",
///         DynamicConfigurationName = "parameterName",
///         Properties = new AzureNative.Edge.Inputs.DynamicConfigurationPropertiesArgs
///         {
///             CurrentVersion = "ltpwymdbybbjdgyuumsfh",
///         },
///         ResourceGroupName = "rgconfigurations",
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
/// 	edge "github.com/pulumi/pulumi-azure-native-sdk/edge/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := edge.NewDynamicConfiguration(ctx, "dynamicConfiguration", &edge.DynamicConfigurationArgs{
/// 			ConfigurationName:        pulumi.String("parameterName"),
/// 			DynamicConfigurationName: pulumi.String("parameterName"),
/// 			Properties: &edge.DynamicConfigurationPropertiesArgs{
/// 				CurrentVersion: pulumi.String("ltpwymdbybbjdgyuumsfh"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgconfigurations"),
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
/// resource "azure-native_edge_dynamicconfiguration" "dynamicConfiguration" {
///   configuration_name         = "parameterName"
///   dynamic_configuration_name = "parameterName"
///   properties = {
///     current_version = "ltpwymdbybbjdgyuumsfh"
///   }
///   resource_group_name = "rgconfigurations"
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
/// import com.pulumi.azurenative.edge.DynamicConfiguration;
/// import com.pulumi.azurenative.edge.DynamicConfigurationArgs;
/// import com.pulumi.azurenative.edge.inputs.DynamicConfigurationPropertiesArgs;
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
///         var dynamicConfiguration = new DynamicConfiguration("dynamicConfiguration", DynamicConfigurationArgs.builder()
///             .configurationName("parameterName")
///             .dynamicConfigurationName("parameterName")
///             .properties(DynamicConfigurationPropertiesArgs.builder()
///                 .currentVersion("ltpwymdbybbjdgyuumsfh")
///                 .build())
///             .resourceGroupName("rgconfigurations")
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
/// const dynamicConfiguration = new azure_native.edge.DynamicConfiguration("dynamicConfiguration", {
///     configurationName: "parameterName",
///     dynamicConfigurationName: "parameterName",
///     properties: {
///         currentVersion: "ltpwymdbybbjdgyuumsfh",
///     },
///     resourceGroupName: "rgconfigurations",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dynamic_configuration = azure_native.edge.DynamicConfiguration("dynamicConfiguration",
///     configuration_name="parameterName",
///     dynamic_configuration_name="parameterName",
///     properties={
///         "current_version": "ltpwymdbybbjdgyuumsfh",
///     },
///     resource_group_name="rgconfigurations")
///
/// ```
///
/// ```yaml
/// resources:
///   dynamicConfiguration:
///     type: azure-native:edge:DynamicConfiguration
///     properties:
///       configurationName: parameterName
///       dynamicConfigurationName: parameterName
///       properties:
///         currentVersion: ltpwymdbybbjdgyuumsfh
///       resourceGroupName: rgconfigurations
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
/// $ pulumi import azure-native:edge:DynamicConfiguration v /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/configurations/{configurationName}/dynamicConfigurations/{dynamicConfigurationName}
/// ```
class DynamicConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<DynamicConfigurationPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DynamicConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DynamicConfiguration]. {@macro pulumi_edge_dynamic_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DynamicConfiguration(
    String name, {
    DynamicConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:edge:DynamicConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DynamicConfigurationPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DynamicConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
