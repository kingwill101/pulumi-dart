import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_definition_args.dart';
import 'api_definition_properties_specification_response.dart';
import 'system_data_response.dart';

/// API definition entity.
///
/// Uses Azure REST API version 2024-03-15-preview. In version 2.x of the Azure Native provider, it used API version 2024-03-01.
///
/// Other available API versions: 2024-03-01, 2024-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apicenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiDefinitions_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiDefinition = new AzureNative.ApiCenter.ApiDefinition("apiDefinition", new()
///     {
///         ApiName = "openapi",
///         DefinitionName = "openapi",
///         Description = "Default spec",
///         ResourceGroupName = "contoso-resources",
///         ServiceName = "contoso",
///         Title = "OpenAPI",
///         VersionName = "2023-01-01",
///         WorkspaceName = "default",
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
/// 		_, err := apicenter.NewApiDefinition(ctx, "apiDefinition", &apicenter.ApiDefinitionArgs{
/// 			ApiName:           pulumi.String("openapi"),
/// 			DefinitionName:    pulumi.String("openapi"),
/// 			Description:       pulumi.String("Default spec"),
/// 			ResourceGroupName: pulumi.String("contoso-resources"),
/// 			ServiceName:       pulumi.String("contoso"),
/// 			Title:             pulumi.String("OpenAPI"),
/// 			VersionName:       pulumi.String("2023-01-01"),
/// 			WorkspaceName:     pulumi.String("default"),
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
/// import com.pulumi.azurenative.apicenter.ApiDefinition;
/// import com.pulumi.azurenative.apicenter.ApiDefinitionArgs;
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
///         var apiDefinition = new ApiDefinition("apiDefinition", ApiDefinitionArgs.builder()
///             .apiName("openapi")
///             .definitionName("openapi")
///             .description("Default spec")
///             .resourceGroupName("contoso-resources")
///             .serviceName("contoso")
///             .title("OpenAPI")
///             .versionName("2023-01-01")
///             .workspaceName("default")
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
/// const apiDefinition = new azure_native.apicenter.ApiDefinition("apiDefinition", {
///     apiName: "openapi",
///     definitionName: "openapi",
///     description: "Default spec",
///     resourceGroupName: "contoso-resources",
///     serviceName: "contoso",
///     title: "OpenAPI",
///     versionName: "2023-01-01",
///     workspaceName: "default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_definition = azure_native.apicenter.ApiDefinition("apiDefinition",
///     api_name="openapi",
///     definition_name="openapi",
///     description="Default spec",
///     resource_group_name="contoso-resources",
///     service_name="contoso",
///     title="OpenAPI",
///     version_name="2023-01-01",
///     workspace_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   apiDefinition:
///     type: azure-native:apicenter:ApiDefinition
///     properties:
///       apiName: openapi
///       definitionName: openapi
///       description: Default spec
///       resourceGroupName: contoso-resources
///       serviceName: contoso
///       title: OpenAPI
///       versionName: 2023-01-01
///       workspaceName: default
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
/// $ pulumi import azure-native:apicenter:ApiDefinition openapi /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiCenter/services/{serviceName}/workspaces/{workspaceName}/apis/{apiName}/versions/{versionName}/definitions/{definitionName}
/// ```
class ApiDefinition extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// API definition description.
  late final pulumi.Output<String?> description;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// API specification details.
  late final pulumi.Output<ApiDefinitionPropertiesSpecificationResponse> specification;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// API definition title.
  late final pulumi.Output<String> title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ApiDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiDefinition]. {@macro pulumi_apicenter_api_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiDefinition(
    String name, {
    ApiDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apicenter:ApiDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    specification = registerOutput<ApiDefinitionPropertiesSpecificationResponse>('specification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiDefinitionPropertiesSpecificationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    title = registerOutput<String>('title');
    type = registerOutput<String>('type');
  }
}
