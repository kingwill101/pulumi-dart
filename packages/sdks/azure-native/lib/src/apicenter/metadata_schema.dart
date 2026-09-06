import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_assignment_response.dart';
import 'metadata_schema_args.dart';
import 'system_data_response.dart';

/// Metadata schema entity. Used to define metadata for the entities in API catalog.
///
/// Uses Azure REST API version 2024-03-15-preview. In version 2.x of the Azure Native provider, it used API version 2024-03-01.
///
/// Other available API versions: 2024-03-01, 2024-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apicenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MetadataSchemas_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var metadataSchema = new AzureNative.ApiCenter.MetadataSchema("metadataSchema", new()
///     {
///         AssignedTo = new[]
///         {
///             new AzureNative.ApiCenter.Inputs.MetadataAssignmentArgs
///             {
///                 Deprecated = true,
///                 Entity = AzureNative.ApiCenter.MetadataAssignmentEntity.Api,
///             },
///         },
///         MetadataSchemaName = "author",
///         ResourceGroupName = "contoso-resources",
///         Schema = "{\"type\":\"string\", \"title\":\"Author\", pattern: \"^[a-zA-Z]+$\"}",
///         ServiceName = "contoso",
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
/// 	apicenter "github.com/pulumi/pulumi-azure-native-sdk/apicenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apicenter.NewMetadataSchema(ctx, "metadataSchema", &apicenter.MetadataSchemaArgs{
/// 			AssignedTo: apicenter.MetadataAssignmentArray{
/// 				&apicenter.MetadataAssignmentArgs{
/// 					Deprecated: pulumi.Bool(true),
/// 					Entity:     pulumi.String(apicenter.MetadataAssignmentEntityApi),
/// 				},
/// 			},
/// 			MetadataSchemaName: pulumi.String("author"),
/// 			ResourceGroupName:  pulumi.String("contoso-resources"),
/// 			Schema:             pulumi.String("{\"type\":\"string\", \"title\":\"Author\", pattern: \"^[a-zA-Z]+$\"}"),
/// 			ServiceName:        pulumi.String("contoso"),
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
/// resource "azure-native_apicenter_metadataschema" "metadataSchema" {
///   assigned_to {
///     deprecated = true
///     entity     = "api"
///   }
///   metadata_schema_name = "author"
///   resource_group_name  = "contoso-resources"
///   schema               = "{\"type\":\"string\", \"title\":\"Author\", pattern: \"^[a-zA-Z]+$\"}"
///   service_name         = "contoso"
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
/// import com.pulumi.azurenative.apicenter.MetadataSchema;
/// import com.pulumi.azurenative.apicenter.MetadataSchemaArgs;
/// import com.pulumi.azurenative.apicenter.inputs.MetadataAssignmentArgs;
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
///         var metadataSchema = new MetadataSchema("metadataSchema", MetadataSchemaArgs.builder()
///             .assignedTo(MetadataAssignmentArgs.builder()
///                 .deprecated(true)
///                 .entity("api")
///                 .build())
///             .metadataSchemaName("author")
///             .resourceGroupName("contoso-resources")
///             .schema("{\"type\":\"string\", \"title\":\"Author\", pattern: \"^[a-zA-Z]+$\"}")
///             .serviceName("contoso")
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
/// const metadataSchema = new azure_native.apicenter.MetadataSchema("metadataSchema", {
///     assignedTo: [{
///         deprecated: true,
///         entity: azure_native.apicenter.MetadataAssignmentEntity.Api,
///     }],
///     metadataSchemaName: "author",
///     resourceGroupName: "contoso-resources",
///     schema: "{\"type\":\"string\", \"title\":\"Author\", pattern: \"^[a-zA-Z]+$\"}",
///     serviceName: "contoso",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// metadata_schema = azure_native.apicenter.MetadataSchema("metadataSchema",
///     assigned_to=[{
///         "deprecated": True,
///         "entity": azure_native.apicenter.MetadataAssignmentEntity.API,
///     }],
///     metadata_schema_name="author",
///     resource_group_name="contoso-resources",
///     schema="{\"type\":\"string\", \"title\":\"Author\", pattern: \"^[a-zA-Z]+$\"}",
///     service_name="contoso")
///
/// ```
///
/// ```yaml
/// resources:
///   metadataSchema:
///     type: azure-native:apicenter:MetadataSchema
///     properties:
///       assignedTo:
///         - deprecated: true
///           entity: api
///       metadataSchemaName: author
///       resourceGroupName: contoso-resources
///       schema: '{"type":"string", "title":"Author", pattern: "^[a-zA-Z]+$"}'
///       serviceName: contoso
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
/// $ pulumi import azure-native:apicenter:MetadataSchema author /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiCenter/services/{serviceName}/metadataSchemas/{metadataSchemaName}
/// ```
class MetadataSchema extends pulumi.CustomResource {
  /// The assignees
  late final pulumi.Output<List<MetadataAssignmentResponse>?> assignedTo;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The schema defining the type.
  late final pulumi.Output<String> schema;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MetadataSchema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MetadataSchema]. {@macro pulumi_apicenter_metadata_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MetadataSchema(
    String name, {
    MetadataSchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apicenter:MetadataSchema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assignedTo = registerOutput<List<MetadataAssignmentResponse>?>('assignedTo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MetadataAssignmentResponse>(guardedValue, (value) => MetadataAssignmentResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    schema = registerOutput<String>('schema');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [MetadataSchema] resource.
  MetadataSchema.reference(String urn)
    : super(
        'azure-native:apicenter:MetadataSchema',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    assignedTo = registerOutput<List<MetadataAssignmentResponse>?>('assignedTo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MetadataAssignmentResponse>(guardedValue, (value) => MetadataAssignmentResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    schema = registerOutput<String>('schema');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
