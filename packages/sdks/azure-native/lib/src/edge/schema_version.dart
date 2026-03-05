import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_version_args.dart';
import 'schema_version_properties_response.dart';
import 'system_data_response.dart';

/// Schema Version Resource
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SchemaVersions_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var schemaVersion = new AzureNative.Edge.SchemaVersion("schemaVersion", new()
///     {
///         Properties = new AzureNative.Edge.Inputs.SchemaVersionPropertiesArgs
///         {
///             Value = "uiaqdwsi",
///         },
///         ResourceGroupName = "rgconfigurationmanager",
///         SchemaName = "testname",
///         SchemaVersionName = "1.0.0",
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
/// 		_, err := edge.NewSchemaVersion(ctx, "schemaVersion", &edge.SchemaVersionArgs{
/// 			Properties: &edge.SchemaVersionPropertiesArgs{
/// 				Value: pulumi.String("uiaqdwsi"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgconfigurationmanager"),
/// 			SchemaName:        pulumi.String("testname"),
/// 			SchemaVersionName: pulumi.String("1.0.0"),
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
/// import com.pulumi.azurenative.edge.SchemaVersion;
/// import com.pulumi.azurenative.edge.SchemaVersionArgs;
/// import com.pulumi.azurenative.edge.inputs.SchemaVersionPropertiesArgs;
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
///         var schemaVersion = new SchemaVersion("schemaVersion", SchemaVersionArgs.builder()
///             .properties(SchemaVersionPropertiesArgs.builder()
///                 .value("uiaqdwsi")
///                 .build())
///             .resourceGroupName("rgconfigurationmanager")
///             .schemaName("testname")
///             .schemaVersionName("1.0.0")
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
/// const schemaVersion = new azure_native.edge.SchemaVersion("schemaVersion", {
///     properties: {
///         value: "uiaqdwsi",
///     },
///     resourceGroupName: "rgconfigurationmanager",
///     schemaName: "testname",
///     schemaVersionName: "1.0.0",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// schema_version = azure_native.edge.SchemaVersion("schemaVersion",
///     properties={
///         "value": "uiaqdwsi",
///     },
///     resource_group_name="rgconfigurationmanager",
///     schema_name="testname",
///     schema_version_name="1.0.0")
///
/// ```
///
/// ```yaml
/// resources:
///   schemaVersion:
///     type: azure-native:edge:SchemaVersion
///     properties:
///       properties:
///         value: uiaqdwsi
///       resourceGroupName: rgconfigurationmanager
///       schemaName: testname
///       schemaVersionName: 1.0.0
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
/// $ pulumi import azure-native:edge:SchemaVersion elshkjfnkjyyrexkhe /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/schemas/{schemaName}/versions/{schemaVersionName}
/// ```
class SchemaVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<SchemaVersionPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SchemaVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SchemaVersion]. {@macro pulumi_edge_schema_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SchemaVersion(
    String name, {
    SchemaVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:edge:SchemaVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SchemaVersionPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SchemaVersionPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
