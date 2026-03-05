import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_args.dart';
import 'system_data_response.dart';

/// Schema definition.
///
/// Uses Azure REST API version 2024-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-09-01-preview.
///
/// Other available API versions: 2025-07-01-preview, 2025-10-01, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create_Schema
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var schema = new AzureNative.DeviceRegistry.Schema("schema", new()
///     {
///         Description = "This is a sample Schema",
///         DisplayName = "My Schema",
///         Format = AzureNative.DeviceRegistry.Format.JsonSchema_draft7,
///         ResourceGroupName = "myResourceGroup",
///         SchemaName = "my-schema",
///         SchemaRegistryName = "my-schema-registry",
///         SchemaType = AzureNative.DeviceRegistry.SchemaType.MessageSchema,
///         Tags =
///         {
///             { "sampleKey", "sampleValue" },
///         },
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
/// 		_, err := deviceregistry.NewSchema(ctx, "schema", &deviceregistry.SchemaArgs{
/// 			Description:        pulumi.String("This is a sample Schema"),
/// 			DisplayName:        pulumi.String("My Schema"),
/// 			Format:             pulumi.String(deviceregistry.Format_JsonSchema_draft7),
/// 			ResourceGroupName:  pulumi.String("myResourceGroup"),
/// 			SchemaName:         pulumi.String("my-schema"),
/// 			SchemaRegistryName: pulumi.String("my-schema-registry"),
/// 			SchemaType:         pulumi.String(deviceregistry.SchemaTypeMessageSchema),
/// 			Tags: pulumi.StringMap{
/// 				"sampleKey": pulumi.String("sampleValue"),
/// 			},
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
/// import com.pulumi.azurenative.deviceregistry.Schema;
/// import com.pulumi.azurenative.deviceregistry.SchemaArgs;
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
///         var schema = new Schema("schema", SchemaArgs.builder()
///             .description("This is a sample Schema")
///             .displayName("My Schema")
///             .format("JsonSchema/draft-07")
///             .resourceGroupName("myResourceGroup")
///             .schemaName("my-schema")
///             .schemaRegistryName("my-schema-registry")
///             .schemaType("MessageSchema")
///             .tags(Map.of("sampleKey", "sampleValue"))
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
/// const schema = new azure_native.deviceregistry.Schema("schema", {
///     description: "This is a sample Schema",
///     displayName: "My Schema",
///     format: azure_native.deviceregistry.Format.JsonSchema_draft7,
///     resourceGroupName: "myResourceGroup",
///     schemaName: "my-schema",
///     schemaRegistryName: "my-schema-registry",
///     schemaType: azure_native.deviceregistry.SchemaType.MessageSchema,
///     tags: {
///         sampleKey: "sampleValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// schema = azure_native.deviceregistry.Schema("schema",
///     description="This is a sample Schema",
///     display_name="My Schema",
///     format=azure_native.deviceregistry.Format.JSON_SCHEMA_DRAFT7,
///     resource_group_name="myResourceGroup",
///     schema_name="my-schema",
///     schema_registry_name="my-schema-registry",
///     schema_type=azure_native.deviceregistry.SchemaType.MESSAGE_SCHEMA,
///     tags={
///         "sampleKey": "sampleValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   schema:
///     type: azure-native:deviceregistry:Schema
///     properties:
///       description: This is a sample Schema
///       displayName: My Schema
///       format: JsonSchema/draft-07
///       resourceGroupName: myResourceGroup
///       schemaName: my-schema
///       schemaRegistryName: my-schema-registry
///       schemaType: MessageSchema
///       tags:
///         sampleKey: sampleValue
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
/// $ pulumi import azure-native:deviceregistry:Schema my-schema /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceRegistry/schemaRegistries/{schemaRegistryName}/schemas/{schemaName}
/// ```
class Schema extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Human-readable description of the schema.
  late final pulumi.Output<String?> description;
  /// Human-readable display name.
  late final pulumi.Output<String?> displayName;
  /// Format of the schema.
  late final pulumi.Output<String> format;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Type of the schema.
  late final pulumi.Output<String> schemaType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Schema tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Globally unique, immutable, non-reusable id.
  late final pulumi.Output<String> uuid;

  /// Creates a new [Schema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schema]. {@macro pulumi_deviceregistry_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schema(
    String name, {
    SchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceregistry:Schema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    format = registerOutput<String>('format');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    schemaType = registerOutput<String>('schemaType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
  }
}
