import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'registry_endpoint_args.dart';
import 'registry_endpoint_properties_response.dart';
import 'system_data_response.dart';

/// RegistryEndpoint resource
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2026-03-01, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native iotoperations [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RegistryEndpoint_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registryEndpoint = new AzureNative.IoTOperations.RegistryEndpoint("registryEndpoint", new()
///     {
///         ExtendedLocation = new AzureNative.IoTOperations.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123",
///             Type = AzureNative.IoTOperations.ExtendedLocationType.CustomLocation,
///         },
///         InstanceName = "resource-123",
///         Properties = new AzureNative.IoTOperations.Inputs.RegistryEndpointPropertiesArgs
///         {
///             Authentication = new AzureNative.IoTOperations.Inputs.RegistryEndpointAnonymousAuthenticationArgs
///             {
///                 AnonymousSettings = null,
///                 Method = "Anonymous",
///             },
///             Host = "contoso.azurecr.io",
///         },
///         RegistryEndpointName = "resource-123",
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
/// 		_, err := iotoperations.NewRegistryEndpoint(ctx, "registryEndpoint", &iotoperations.RegistryEndpointArgs{
/// 			ExtendedLocation: &iotoperations.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123"),
/// 				Type: pulumi.String(iotoperations.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			InstanceName: pulumi.String("resource-123"),
/// 			Properties: &iotoperations.RegistryEndpointPropertiesArgs{
/// 				Authentication: iotoperations.RegistryEndpointAnonymousAuthentication{
/// 					AnonymousSettings: map[string]interface{}{},
/// 					Method:            "Anonymous",
/// 				},
/// 				Host: pulumi.String("contoso.azurecr.io"),
/// 			},
/// 			RegistryEndpointName: pulumi.String("resource-123"),
/// 			ResourceGroupName:    pulumi.String("rgiotoperations"),
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
/// resource "azure-native_iotoperations_registryendpoint" "registryEndpoint" {
///   extended_location = {
///     name = "/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123"
///     type = "CustomLocation"
///   }
///   instance_name = "resource-123"
///   properties = {
///     authentication = {
///       "anonymousSettings" = {}
///       "method"            = "Anonymous"
///     }
///     host = "contoso.azurecr.io"
///   }
///   registry_endpoint_name = "resource-123"
///   resource_group_name    = "rgiotoperations"
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
/// import com.pulumi.azurenative.iotoperations.RegistryEndpoint;
/// import com.pulumi.azurenative.iotoperations.RegistryEndpointArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.iotoperations.inputs.RegistryEndpointPropertiesArgs;
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
///         var registryEndpoint = new RegistryEndpoint("registryEndpoint", RegistryEndpointArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123")
///                 .type("CustomLocation")
///                 .build())
///             .instanceName("resource-123")
///             .properties(RegistryEndpointPropertiesArgs.builder()
///                 .authentication(RegistryEndpointAnonymousAuthenticationArgs.builder()
///                     .anonymousSettings(Map.ofEntries(
///                     ))
///                     .method("Anonymous")
///                     .build())
///                 .host("contoso.azurecr.io")
///                 .build())
///             .registryEndpointName("resource-123")
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
/// const registryEndpoint = new azure_native.iotoperations.RegistryEndpoint("registryEndpoint", {
///     extendedLocation: {
///         name: "/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123",
///         type: azure_native.iotoperations.ExtendedLocationType.CustomLocation,
///     },
///     instanceName: "resource-123",
///     properties: {
///         authentication: {
///             anonymousSettings: {},
///             method: "Anonymous",
///         },
///         host: "contoso.azurecr.io",
///     },
///     registryEndpointName: "resource-123",
///     resourceGroupName: "rgiotoperations",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// registry_endpoint = azure_native.iotoperations.RegistryEndpoint("registryEndpoint",
///     extended_location={
///         "name": "/subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123",
///         "type": azure_native.iotoperations.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     instance_name="resource-123",
///     properties={
///         "authentication": {
///             "anonymous_settings": {},
///             "method": "Anonymous",
///         },
///         "host": "contoso.azurecr.io",
///     },
///     registry_endpoint_name="resource-123",
///     resource_group_name="rgiotoperations")
///
/// ```
///
/// ```yaml
/// resources:
///   registryEndpoint:
///     type: azure-native:iotoperations:RegistryEndpoint
///     properties:
///       extendedLocation:
///         name: /subscriptions/F8C729F9-DF9C-4743-848F-96EE433D8E53/resourceGroups/rgiotoperations/providers/Microsoft.ExtendedLocation/customLocations/resource-123
///         type: CustomLocation
///       instanceName: resource-123
///       properties:
///         authentication:
///           anonymousSettings: {}
///           method: Anonymous
///         host: contoso.azurecr.io
///       registryEndpointName: resource-123
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
/// $ pulumi import azure-native:iotoperations:RegistryEndpoint resource-name123 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperations/instances/{instanceName}/registryEndpoints/{registryEndpointName}
/// ```
class RegistryEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Edge location of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<RegistryEndpointPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RegistryEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryEndpoint]. {@macro pulumi_iotoperations_registry_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryEndpoint(
    String name, {
    RegistryEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotoperations:RegistryEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<RegistryEndpointPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryEndpointPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [RegistryEndpoint] resource.
  RegistryEndpoint.reference(String urn)
    : super(
        'azure-native:iotoperations:RegistryEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<RegistryEndpointPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegistryEndpointPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
