import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_schema_args.dart';
import 'dynamic_schema_properties_response.dart';
import 'system_data_response.dart';

/// DynamicSchema Resource
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-08-01, 2025-08-15-preview, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DynamicSchemas_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dynamicSchema = new AzureNative.Edge.DynamicSchema("dynamicSchema", new()
///     {
///         DynamicSchemaName = "testname",
///         ResourceGroupName = "rgconfigurationmanager",
///         SchemaName = "testname",
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
/// 		_, err := edge.NewDynamicSchema(ctx, "dynamicSchema", &edge.DynamicSchemaArgs{
/// 			DynamicSchemaName: pulumi.String("testname"),
/// 			ResourceGroupName: pulumi.String("rgconfigurationmanager"),
/// 			SchemaName:        pulumi.String("testname"),
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
/// resource "azure-native_edge_dynamicschema" "dynamicSchema" {
///   dynamic_schema_name = "testname"
///   resource_group_name = "rgconfigurationmanager"
///   schema_name         = "testname"
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
/// import com.pulumi.azurenative.edge.DynamicSchema;
/// import com.pulumi.azurenative.edge.DynamicSchemaArgs;
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
///         var dynamicSchema = new DynamicSchema("dynamicSchema", DynamicSchemaArgs.builder()
///             .dynamicSchemaName("testname")
///             .resourceGroupName("rgconfigurationmanager")
///             .schemaName("testname")
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
/// const dynamicSchema = new azure_native.edge.DynamicSchema("dynamicSchema", {
///     dynamicSchemaName: "testname",
///     resourceGroupName: "rgconfigurationmanager",
///     schemaName: "testname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dynamic_schema = azure_native.edge.DynamicSchema("dynamicSchema",
///     dynamic_schema_name="testname",
///     resource_group_name="rgconfigurationmanager",
///     schema_name="testname")
///
/// ```
///
/// ```yaml
/// resources:
///   dynamicSchema:
///     type: azure-native:edge:DynamicSchema
///     properties:
///       dynamicSchemaName: testname
///       resourceGroupName: rgconfigurationmanager
///       schemaName: testname
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
/// $ pulumi import azure-native:edge:DynamicSchema efclhieak /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/schemas/{schemaName}/dynamicSchemas/{dynamicSchemaName}
/// ```
class DynamicSchema extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<DynamicSchemaPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DynamicSchema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DynamicSchema]. {@macro pulumi_edge_dynamic_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DynamicSchema(
    String name, {
    DynamicSchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:edge:DynamicSchema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DynamicSchemaPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DynamicSchemaPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
