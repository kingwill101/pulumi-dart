import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_group_schema_args.dart';
import 'configuration_group_schema_properties_format_response.dart';
import 'system_data_response.dart';

/// Configuration group schema resource.
///
/// Uses Azure REST API version 2024-04-15. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridnetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update the network function definition group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var configurationGroupSchema = new AzureNative.HybridNetwork.ConfigurationGroupSchema("configurationGroupSchema", new()
///     {
///         ConfigurationGroupSchemaName = "testConfigurationGroupSchema",
///         Location = "westUs2",
///         Properties = new AzureNative.HybridNetwork.Inputs.ConfigurationGroupSchemaPropertiesFormatArgs
///         {
///             Description = "Schema with no secrets",
///             SchemaDefinition = "{\"type\":\"object\",\"properties\":{\"interconnect-groups\":{\"type\":\"object\",\"properties\":{\"type\":\"object\",\"properties\":{\"name\":{\"type\":\"string\"},\"international-interconnects\":{\"type\":\"array\",\"item\":{\"type\":\"string\"}},\"domestic-interconnects\":{\"type\":\"array\",\"item\":{\"type\":\"string\"}}}}},\"interconnect-group-assignments\":{\"type\":\"object\",\"properties\":{\"type\":\"object\",\"properties\":{\"ssc\":{\"type\":\"string\"},\"interconnects-interconnects\":{\"type\":\"string\"}}}}},\"required\":[\"interconnect-groups\",\"interconnect-group-assignments\"]}",
///         },
///         PublisherName = "testPublisher",
///         ResourceGroupName = "rg1",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewConfigurationGroupSchema(ctx, "configurationGroupSchema", &hybridnetwork.ConfigurationGroupSchemaArgs{
/// 			ConfigurationGroupSchemaName: pulumi.String("testConfigurationGroupSchema"),
/// 			Location:                     pulumi.String("westUs2"),
/// 			Properties: &hybridnetwork.ConfigurationGroupSchemaPropertiesFormatArgs{
/// 				Description:      pulumi.String("Schema with no secrets"),
/// 				SchemaDefinition: pulumi.String("{\"type\":\"object\",\"properties\":{\"interconnect-groups\":{\"type\":\"object\",\"properties\":{\"type\":\"object\",\"properties\":{\"name\":{\"type\":\"string\"},\"international-interconnects\":{\"type\":\"array\",\"item\":{\"type\":\"string\"}},\"domestic-interconnects\":{\"type\":\"array\",\"item\":{\"type\":\"string\"}}}}},\"interconnect-group-assignments\":{\"type\":\"object\",\"properties\":{\"type\":\"object\",\"properties\":{\"ssc\":{\"type\":\"string\"},\"interconnects-interconnects\":{\"type\":\"string\"}}}}},\"required\":[\"interconnect-groups\",\"interconnect-group-assignments\"]}"),
/// 			},
/// 			PublisherName:     pulumi.String("testPublisher"),
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.hybridnetwork.ConfigurationGroupSchema;
/// import com.pulumi.azurenative.hybridnetwork.ConfigurationGroupSchemaArgs;
/// import com.pulumi.azurenative.hybridnetwork.inputs.ConfigurationGroupSchemaPropertiesFormatArgs;
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
///         var configurationGroupSchema = new ConfigurationGroupSchema("configurationGroupSchema", ConfigurationGroupSchemaArgs.builder()
///             .configurationGroupSchemaName("testConfigurationGroupSchema")
///             .location("westUs2")
///             .properties(ConfigurationGroupSchemaPropertiesFormatArgs.builder()
///                 .description("Schema with no secrets")
///                 .schemaDefinition("{\"type\":\"object\",\"properties\":{\"interconnect-groups\":{\"type\":\"object\",\"properties\":{\"type\":\"object\",\"properties\":{\"name\":{\"type\":\"string\"},\"international-interconnects\":{\"type\":\"array\",\"item\":{\"type\":\"string\"}},\"domestic-interconnects\":{\"type\":\"array\",\"item\":{\"type\":\"string\"}}}}},\"interconnect-group-assignments\":{\"type\":\"object\",\"properties\":{\"type\":\"object\",\"properties\":{\"ssc\":{\"type\":\"string\"},\"interconnects-interconnects\":{\"type\":\"string\"}}}}},\"required\":[\"interconnect-groups\",\"interconnect-group-assignments\"]}")
///                 .build())
///             .publisherName("testPublisher")
///             .resourceGroupName("rg1")
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
/// const configurationGroupSchema = new azure_native.hybridnetwork.ConfigurationGroupSchema("configurationGroupSchema", {
///     configurationGroupSchemaName: "testConfigurationGroupSchema",
///     location: "westUs2",
///     properties: {
///         description: "Schema with no secrets",
///         schemaDefinition: "{\"type\":\"object\",\"properties\":{\"interconnect-groups\":{\"type\":\"object\",\"properties\":{\"type\":\"object\",\"properties\":{\"name\":{\"type\":\"string\"},\"international-interconnects\":{\"type\":\"array\",\"item\":{\"type\":\"string\"}},\"domestic-interconnects\":{\"type\":\"array\",\"item\":{\"type\":\"string\"}}}}},\"interconnect-group-assignments\":{\"type\":\"object\",\"properties\":{\"type\":\"object\",\"properties\":{\"ssc\":{\"type\":\"string\"},\"interconnects-interconnects\":{\"type\":\"string\"}}}}},\"required\":[\"interconnect-groups\",\"interconnect-group-assignments\"]}",
///     },
///     publisherName: "testPublisher",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// configuration_group_schema = azure_native.hybridnetwork.ConfigurationGroupSchema("configurationGroupSchema",
///     configuration_group_schema_name="testConfigurationGroupSchema",
///     location="westUs2",
///     properties={
///         "description": "Schema with no secrets",
///         "schema_definition": "{\"type\":\"object\",\"properties\":{\"interconnect-groups\":{\"type\":\"object\",\"properties\":{\"type\":\"object\",\"properties\":{\"name\":{\"type\":\"string\"},\"international-interconnects\":{\"type\":\"array\",\"item\":{\"type\":\"string\"}},\"domestic-interconnects\":{\"type\":\"array\",\"item\":{\"type\":\"string\"}}}}},\"interconnect-group-assignments\":{\"type\":\"object\",\"properties\":{\"type\":\"object\",\"properties\":{\"ssc\":{\"type\":\"string\"},\"interconnects-interconnects\":{\"type\":\"string\"}}}}},\"required\":[\"interconnect-groups\",\"interconnect-group-assignments\"]}",
///     },
///     publisher_name="testPublisher",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   configurationGroupSchema:
///     type: azure-native:hybridnetwork:ConfigurationGroupSchema
///     properties:
///       configurationGroupSchemaName: testConfigurationGroupSchema
///       location: westUs2
///       properties:
///         description: Schema with no secrets
///         schemaDefinition: '{"type":"object","properties":{"interconnect-groups":{"type":"object","properties":{"type":"object","properties":{"name":{"type":"string"},"international-interconnects":{"type":"array","item":{"type":"string"}},"domestic-interconnects":{"type":"array","item":{"type":"string"}}}}},"interconnect-group-assignments":{"type":"object","properties":{"type":"object","properties":{"ssc":{"type":"string"},"interconnects-interconnects":{"type":"string"}}}}},"required":["interconnect-groups","interconnect-group-assignments"]}'
///       publisherName: testPublisher
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:hybridnetwork:ConfigurationGroupSchema testConfigurationGroupSchema /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridNetwork/publishers/{publisherName}/configurationGroupSchemas/{configurationGroupSchemaName}
/// ```
class ConfigurationGroupSchema extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Configuration group schema properties.
  late final pulumi.Output<ConfigurationGroupSchemaPropertiesFormatResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConfigurationGroupSchema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationGroupSchema]. {@macro pulumi_hybridnetwork_configuration_group_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationGroupSchema(
    String name, {
    ConfigurationGroupSchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridnetwork:ConfigurationGroupSchema',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties =
        registerOutput<ConfigurationGroupSchemaPropertiesFormatResponse>(
          'properties',
        );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
