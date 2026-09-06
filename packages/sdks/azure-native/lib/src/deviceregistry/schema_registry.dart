import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_registry_args.dart';
import 'system_assigned_service_identity_response.dart';
import 'system_data_response.dart';

/// Schema registry definition.
///
/// Uses Azure REST API version 2024-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-09-01-preview.
///
/// Other available API versions: 2025-07-01-preview, 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create_SchemaRegistry
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var schemaRegistry = new AzureNative.DeviceRegistry.SchemaRegistry("schemaRegistry", new()
///     {
///         Description = "This is a sample Schema Registry",
///         DisplayName = "Schema Registry namespace 001",
///         Identity = new AzureNative.DeviceRegistry.Inputs.SystemAssignedServiceIdentityArgs
///         {
///             Type = AzureNative.DeviceRegistry.SystemAssignedServiceIdentityType.None,
///         },
///         Location = "West Europe",
///         Namespace = "sr-namespace-001",
///         ResourceGroupName = "myResourceGroup",
///         SchemaRegistryName = "my-schema-registry",
///         StorageAccountContainerUrl = "my-blob-storage.blob.core.windows.net/my-container",
///         Tags = null,
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
/// 	deviceregistry "github.com/pulumi/pulumi-azure-native-sdk/deviceregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := deviceregistry.NewSchemaRegistry(ctx, "schemaRegistry", &deviceregistry.SchemaRegistryArgs{
/// 			Description: pulumi.String("This is a sample Schema Registry"),
/// 			DisplayName: pulumi.String("Schema Registry namespace 001"),
/// 			Identity: &deviceregistry.SystemAssignedServiceIdentityArgs{
/// 				Type: pulumi.String(deviceregistry.SystemAssignedServiceIdentityTypeNone),
/// 			},
/// 			Location:                   pulumi.String("West Europe"),
/// 			Namespace:                  pulumi.String("sr-namespace-001"),
/// 			ResourceGroupName:          pulumi.String("myResourceGroup"),
/// 			SchemaRegistryName:         pulumi.String("my-schema-registry"),
/// 			StorageAccountContainerUrl: pulumi.String("my-blob-storage.blob.core.windows.net/my-container"),
/// 			Tags:                       pulumi.StringMap{},
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
/// resource "azure-native_deviceregistry_schemaregistry" "schemaRegistry" {
///   description  = "This is a sample Schema Registry"
///   display_name = "Schema Registry namespace 001"
///   identity = {
///     type = "None"
///   }
///   location                      = "West Europe"
///   namespace                     = "sr-namespace-001"
///   resource_group_name           = "myResourceGroup"
///   schema_registry_name          = "my-schema-registry"
///   storage_account_container_url = "my-blob-storage.blob.core.windows.net/my-container"
///   tags                          = {}
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
/// import com.pulumi.azurenative.deviceregistry.SchemaRegistry;
/// import com.pulumi.azurenative.deviceregistry.SchemaRegistryArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.SystemAssignedServiceIdentityArgs;
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
///         var schemaRegistry = new SchemaRegistry("schemaRegistry", SchemaRegistryArgs.builder()
///             .description("This is a sample Schema Registry")
///             .displayName("Schema Registry namespace 001")
///             .identity(SystemAssignedServiceIdentityArgs.builder()
///                 .type("None")
///                 .build())
///             .location("West Europe")
///             .namespace("sr-namespace-001")
///             .resourceGroupName("myResourceGroup")
///             .schemaRegistryName("my-schema-registry")
///             .storageAccountContainerUrl("my-blob-storage.blob.core.windows.net/my-container")
///             .tags(Map.ofEntries(
///             ))
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
/// const schemaRegistry = new azure_native.deviceregistry.SchemaRegistry("schemaRegistry", {
///     description: "This is a sample Schema Registry",
///     displayName: "Schema Registry namespace 001",
///     identity: {
///         type: azure_native.deviceregistry.SystemAssignedServiceIdentityType.None,
///     },
///     location: "West Europe",
///     namespace: "sr-namespace-001",
///     resourceGroupName: "myResourceGroup",
///     schemaRegistryName: "my-schema-registry",
///     storageAccountContainerUrl: "my-blob-storage.blob.core.windows.net/my-container",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// schema_registry = azure_native.deviceregistry.SchemaRegistry("schemaRegistry",
///     description="This is a sample Schema Registry",
///     display_name="Schema Registry namespace 001",
///     identity={
///         "type": azure_native.deviceregistry.SystemAssignedServiceIdentityType.NONE,
///     },
///     location="West Europe",
///     namespace="sr-namespace-001",
///     resource_group_name="myResourceGroup",
///     schema_registry_name="my-schema-registry",
///     storage_account_container_url="my-blob-storage.blob.core.windows.net/my-container",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   schemaRegistry:
///     type: azure-native:deviceregistry:SchemaRegistry
///     properties:
///       description: This is a sample Schema Registry
///       displayName: Schema Registry namespace 001
///       identity:
///         type: None
///       location: West Europe
///       namespace: sr-namespace-001
///       resourceGroupName: myResourceGroup
///       schemaRegistryName: my-schema-registry
///       storageAccountContainerUrl: my-blob-storage.blob.core.windows.net/my-container
///       tags: {}
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
/// $ pulumi import azure-native:deviceregistry:SchemaRegistry my-schema-registry /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceRegistry/schemaRegistries/{schemaRegistryName}
/// ```
class SchemaRegistry extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Human-readable description of the schema registry.
  late final pulumi.Output<String?> description;
  /// Human-readable display name.
  late final pulumi.Output<String?> displayName;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<SystemAssignedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Schema registry namespace. Uniquely identifies a schema registry within a tenant.
  late final pulumi.Output<String> namespace;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The Storage Account's Container URL where schemas will be stored.
  late final pulumi.Output<String> storageAccountContainerUrl;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Globally unique, immutable, non-reusable id.
  late final pulumi.Output<String> uuid;

  /// Creates a new [SchemaRegistry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SchemaRegistry]. {@macro pulumi_deviceregistry_schema_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SchemaRegistry(
    String name, {
    SchemaRegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceregistry:SchemaRegistry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    identity = registerOutput<SystemAssignedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemAssignedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    provisioningState = registerOutput<String>('provisioningState');
    storageAccountContainerUrl = registerOutput<String>('storageAccountContainerUrl');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
  }

  /// Creates a typed reference to an existing [SchemaRegistry] resource.
  SchemaRegistry.reference(String urn)
    : super(
        'azure-native:deviceregistry:SchemaRegistry',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    identity = registerOutput<SystemAssignedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemAssignedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    provisioningState = registerOutput<String>('provisioningState');
    storageAccountContainerUrl = registerOutput<String>('storageAccountContainerUrl');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
  }
}
