import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_registry_args.dart';
import 'system_data_response.dart';

/// Single item in List or Get Schema Group operation
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01-preview.
///
/// Other available API versions: 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SchemaRegistryCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var schemaRegistry = new AzureNative.EventHub.SchemaRegistry("schemaRegistry", new()
///     {
///         GroupProperties = null,
///         NamespaceName = "ali-ua-test-eh-system-1",
///         ResourceGroupName = "alitest",
///         SchemaCompatibility = AzureNative.EventHub.SchemaCompatibility.Forward,
///         SchemaGroupName = "testSchemaGroup1",
///         SchemaType = AzureNative.EventHub.SchemaType.Avro,
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
/// 	eventhub "github.com/pulumi/pulumi-azure-native-sdk/eventhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventhub.NewSchemaRegistry(ctx, "schemaRegistry", &eventhub.SchemaRegistryArgs{
/// 			GroupProperties:     pulumi.StringMap{},
/// 			NamespaceName:       pulumi.String("ali-ua-test-eh-system-1"),
/// 			ResourceGroupName:   pulumi.String("alitest"),
/// 			SchemaCompatibility: pulumi.String(eventhub.SchemaCompatibilityForward),
/// 			SchemaGroupName:     pulumi.String("testSchemaGroup1"),
/// 			SchemaType:          pulumi.String(eventhub.SchemaTypeAvro),
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
/// import com.pulumi.azurenative.eventhub.SchemaRegistry;
/// import com.pulumi.azurenative.eventhub.SchemaRegistryArgs;
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
///         var schemaRegistry = new SchemaRegistry("schemaRegistry", SchemaRegistryArgs.builder()
///             .groupProperties(Map.ofEntries(
///             ))
///             .namespaceName("ali-ua-test-eh-system-1")
///             .resourceGroupName("alitest")
///             .schemaCompatibility("Forward")
///             .schemaGroupName("testSchemaGroup1")
///             .schemaType("Avro")
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
/// const schemaRegistry = new azure_native.eventhub.SchemaRegistry("schemaRegistry", {
///     groupProperties: {},
///     namespaceName: "ali-ua-test-eh-system-1",
///     resourceGroupName: "alitest",
///     schemaCompatibility: azure_native.eventhub.SchemaCompatibility.Forward,
///     schemaGroupName: "testSchemaGroup1",
///     schemaType: azure_native.eventhub.SchemaType.Avro,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// schema_registry = azure_native.eventhub.SchemaRegistry("schemaRegistry",
///     group_properties={},
///     namespace_name="ali-ua-test-eh-system-1",
///     resource_group_name="alitest",
///     schema_compatibility=azure_native.eventhub.SchemaCompatibility.FORWARD,
///     schema_group_name="testSchemaGroup1",
///     schema_type=azure_native.eventhub.SchemaType.AVRO)
///
/// ```
///
/// ```yaml
/// resources:
///   schemaRegistry:
///     type: azure-native:eventhub:SchemaRegistry
///     properties:
///       groupProperties: {}
///       namespaceName: ali-ua-test-eh-system-1
///       resourceGroupName: alitest
///       schemaCompatibility: Forward
///       schemaGroupName: testSchemaGroup1
///       schemaType: Avro
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
/// $ pulumi import azure-native:eventhub:SchemaRegistry testSchemaGroup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/schemagroups/{schemaGroupName}
/// ```
class SchemaRegistry extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Exact time the Schema Group was created.
  late final pulumi.Output<String> createdAtUtc;
  /// The ETag value.
  late final pulumi.Output<String> eTag;
  /// dictionary object for SchemaGroup group properties
  late final pulumi.Output<Map<String, String>?> groupProperties;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<String?> schemaCompatibility;
  late final pulumi.Output<String?> schemaType;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;
  /// Exact time the Schema Group was updated
  late final pulumi.Output<String> updatedAtUtc;

  /// Creates a new [SchemaRegistry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SchemaRegistry]. {@macro pulumi_eventhub_schema_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SchemaRegistry(
    String name, {
    SchemaRegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventhub:SchemaRegistry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAtUtc = registerOutput<String>('createdAtUtc');
    eTag = registerOutput<String>('eTag');
    groupProperties = registerOutput<Map<String, String>?>('groupProperties');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    schemaCompatibility = registerOutput<String?>('schemaCompatibility');
    schemaType = registerOutput<String?>('schemaType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedAtUtc = registerOutput<String>('updatedAtUtc');
  }
}
