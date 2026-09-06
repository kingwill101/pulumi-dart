import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_args.dart';
import 'akri_connector_properties_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// AkriConnector resource.
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AkriConnector_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var akriConnector = new AzureNative.IoTOperations.AkriConnector("akriConnector", new()
///     {
///         AkriConnectorTemplateName = "resource-name123",
///         ConnectorName = "resource-name123",
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "subscriptions/0000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup123/providers/Microsoft.ExtendedLocation/customLocations/resource-name123",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-name123",
///         ResourceGroupName = "rgiotoperations",
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
/// 	iotoperations "github.com/pulumi/pulumi-azure-native-sdk/iotoperations/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperations.NewAkriConnector(ctx, "akriConnector", &iotoperations.AkriConnectorArgs{
/// 			AkriConnectorTemplateName: pulumi.String("resource-name123"),
/// 			ConnectorName:             pulumi.String("resource-name123"),
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("subscriptions/0000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup123/providers/Microsoft.ExtendedLocation/customLocations/resource-name123"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName:      pulumi.String("resource-name123"),
/// 			ResourceGroupName: pulumi.String("rgiotoperations"),
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
/// resource "azure-native_iotoperations_akriconnector" "akriConnector" {
///   akri_connector_template_name = "resource-name123"
///   connector_name               = "resource-name123"
///   extended_location = {
///     name = "subscriptions/0000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup123/providers/Microsoft.ExtendedLocation/customLocations/resource-name123"
///     type = "CustomLocation"
///   }
///   instance_name       = "resource-name123"
///   resource_group_name = "rgiotoperations"
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
/// import com.pulumi.azurenative.iotoperations.AkriConnector;
/// import com.pulumi.azurenative.iotoperations.AkriConnectorArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
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
///         var akriConnector = new AkriConnector("akriConnector", AkriConnectorArgs.builder()
///             .akriConnectorTemplateName("resource-name123")
///             .connectorName("resource-name123")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("subscriptions/0000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup123/providers/Microsoft.ExtendedLocation/customLocations/resource-name123")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-name123")
///             .resourceGroupName("rgiotoperations")
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
/// const akriConnector = new azure_native.iotoperations.AkriConnector("akriConnector", {
///     akriConnectorTemplateName: "resource-name123",
///     connectorName: "resource-name123",
///     extendedLocation: {
///         name: "subscriptions/0000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup123/providers/Microsoft.ExtendedLocation/customLocations/resource-name123",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-name123",
///     resourceGroupName: "rgiotoperations",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// akri_connector = azure_native.iotoperations.AkriConnector("akriConnector",
///     akri_connector_template_name="resource-name123",
///     connector_name="resource-name123",
///     extended_location={
///         "name": "subscriptions/0000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup123/providers/Microsoft.ExtendedLocation/customLocations/resource-name123",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-name123",
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   akriConnector:
///     type: azure-native:iotoperations:AkriConnector
///     properties:
///       akriConnectorTemplateName: resource-name123
///       connectorName: resource-name123
///       extendedLocation:
///         name: subscriptions/0000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup123/providers/Microsoft.ExtendedLocation/customLocations/resource-name123
///         type: CustomLocation
///       instanceName: resource-name123
///       resourceGroupName: rgiotoperations
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
/// $ pulumi import azure-native:iotoperations:AkriConnector resource-name /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperations/instances/{instanceName}/akriConnectorTemplates/{akriConnectorTemplateName}/connectors/{connectorName}
/// ```
class AkriConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Edge location of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<AkriConnectorPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AkriConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AkriConnector]. {@macro pulumi_iotoperations_akri_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AkriConnector(
    String name, {
    AkriConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotoperations:AkriConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<AkriConnectorPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AkriConnectorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AkriConnector] resource.
  AkriConnector.reference(String urn)
    : super(
        'azure-native:iotoperations:AkriConnector',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<AkriConnectorPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AkriConnectorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
