import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_version_args.dart';
import 'system_data_response.dart';

/// Schema version's definition.
///
/// Uses Azure REST API version 2024-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-09-01-preview.
///
/// Other available API versions: 2025-07-01-preview, 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create_SchemaVersion
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var schemaVersion = new AzureNative.DeviceRegistry.SchemaVersion("schemaVersion", new()
///     {
///         Description = "Schema version 1",
///         ResourceGroupName = "myResourceGroup",
///         SchemaContent = "{\"$schema\": \"http://json-schema.org/draft-07/schema#\",\"type\": \"object\",\"properties\": {\"humidity\": {\"type\": \"string\"},\"temperature\": {\"type\":\"number\"}}}",
///         SchemaName = "my-schema",
///         SchemaRegistryName = "my-schema-registry",
///         SchemaVersionName = "1",
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
/// 		_, err := deviceregistry.NewSchemaVersion(ctx, "schemaVersion", &deviceregistry.SchemaVersionArgs{
/// 			Description:        pulumi.String("Schema version 1"),
/// 			ResourceGroupName:  pulumi.String("myResourceGroup"),
/// 			SchemaContent:      pulumi.String("{\"$schema\": \"http://json-schema.org/draft-07/schema#\",\"type\": \"object\",\"properties\": {\"humidity\": {\"type\": \"string\"},\"temperature\": {\"type\":\"number\"}}}"),
/// 			SchemaName:         pulumi.String("my-schema"),
/// 			SchemaRegistryName: pulumi.String("my-schema-registry"),
/// 			SchemaVersionName:  pulumi.String("1"),
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
/// resource "azure-native_deviceregistry_schemaversion" "schemaVersion" {
///   description          = "Schema version 1"
///   resource_group_name  = "myResourceGroup"
///   schema_content       = "{\"$schema\": \"http://json-schema.org/draft-07/schema#\",\"type\": \"object\",\"properties\": {\"humidity\": {\"type\": \"string\"},\"temperature\": {\"type\":\"number\"}}}"
///   schema_name          = "my-schema"
///   schema_registry_name = "my-schema-registry"
///   schema_version_name  = "1"
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
/// import com.pulumi.azurenative.deviceregistry.SchemaVersion;
/// import com.pulumi.azurenative.deviceregistry.SchemaVersionArgs;
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
///         var schemaVersion = new SchemaVersion("schemaVersion", SchemaVersionArgs.builder()
///             .description("Schema version 1")
///             .resourceGroupName("myResourceGroup")
///             .schemaContent("{\"$schema\": \"http://json-schema.org/draft-07/schema#\",\"type\": \"object\",\"properties\": {\"humidity\": {\"type\": \"string\"},\"temperature\": {\"type\":\"number\"}}}")
///             .schemaName("my-schema")
///             .schemaRegistryName("my-schema-registry")
///             .schemaVersionName("1")
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
/// const schemaVersion = new azure_native.deviceregistry.SchemaVersion("schemaVersion", {
///     description: "Schema version 1",
///     resourceGroupName: "myResourceGroup",
///     schemaContent: "{\"$schema\": \"http://json-schema.org/draft-07/schema#\",\"type\": \"object\",\"properties\": {\"humidity\": {\"type\": \"string\"},\"temperature\": {\"type\":\"number\"}}}",
///     schemaName: "my-schema",
///     schemaRegistryName: "my-schema-registry",
///     schemaVersionName: "1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// schema_version = azure_native.deviceregistry.SchemaVersion("schemaVersion",
///     description="Schema version 1",
///     resource_group_name="myResourceGroup",
///     schema_content="{\"$schema\": \"http://json-schema.org/draft-07/schema#\",\"type\": \"object\",\"properties\": {\"humidity\": {\"type\": \"string\"},\"temperature\": {\"type\":\"number\"}}}",
///     schema_name="my-schema",
///     schema_registry_name="my-schema-registry",
///     schema_version_name="1")
///
/// ```
///
/// ```yaml
/// resources:
///   schemaVersion:
///     type: azure-native:deviceregistry:SchemaVersion
///     properties:
///       description: Schema version 1
///       resourceGroupName: myResourceGroup
///       schemaContent: '{"$schema": "http://json-schema.org/draft-07/schema#","type": "object","properties": {"humidity": {"type": "string"},"temperature": {"type":"number"}}}'
///       schemaName: my-schema
///       schemaRegistryName: my-schema-registry
///       schemaVersionName: '1'
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
/// $ pulumi import azure-native:deviceregistry:SchemaVersion 1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceRegistry/schemaRegistries/{schemaRegistryName}/schemas/{schemaName}/schemaVersions/{schemaVersionName}
/// ```
class SchemaVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Human-readable description of the schema.
  late final pulumi.Output<String?> description;
  /// Hash of the schema content.
  late final pulumi.Output<String> hash;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Schema content.
  late final pulumi.Output<String> schemaContent;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Globally unique, immutable, non-reusable id.
  late final pulumi.Output<String> uuid;

  /// Creates a new [SchemaVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SchemaVersion]. {@macro pulumi_deviceregistry_schema_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SchemaVersion(
    String name, {
    SchemaVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceregistry:SchemaVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    hash = registerOutput<String>('hash');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    schemaContent = registerOutput<String>('schemaContent');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
  }

  /// Creates a typed reference to an existing [SchemaVersion] resource.
  SchemaVersion.reference(String urn)
    : super(
        'azure-native:deviceregistry:SchemaVersion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    hash = registerOutput<String>('hash');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    schemaContent = registerOutput<String>('schemaContent');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
  }
}
