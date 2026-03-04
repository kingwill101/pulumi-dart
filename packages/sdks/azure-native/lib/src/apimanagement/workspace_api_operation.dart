import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_contract_response.dart';
import 'workspace_api_operation_args.dart';

/// API Operation details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateWorkspaceApiOperation
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceApiOperation = new AzureNative.ApiManagement.WorkspaceApiOperation("workspaceApiOperation", new()
///     {
///         ApiId = "PetStoreTemplate2",
///         Description = "This can only be done by the logged in user.",
///         DisplayName = "createUser2",
///         Method = "POST",
///         OperationId = "newoperations",
///         Request = new AzureNative.ApiManagement.Inputs.RequestContractArgs
///         {
///             Description = "Created user object",
///             Headers = new() { },
///             QueryParameters = new() { },
///             Representations = new[]
///             {
///                 new AzureNative.ApiManagement.Inputs.RepresentationContractArgs
///                 {
///                     ContentType = "application/json",
///                     SchemaId = "592f6c1d0af5840ca8897f0c",
///                     TypeName = "User",
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         Responses = new[]
///         {
///             new AzureNative.ApiManagement.Inputs.ResponseContractArgs
///             {
///                 Description = "successful operation",
///                 Headers = new() { },
///                 Representations = new[]
///                 {
///                     new AzureNative.ApiManagement.Inputs.RepresentationContractArgs
///                     {
///                         ContentType = "application/xml",
///                     },
///                     new AzureNative.ApiManagement.Inputs.RepresentationContractArgs
///                     {
///                         ContentType = "application/json",
///                     },
///                 },
///                 StatusCode = 200,
///             },
///         },
///         ServiceName = "apimService1",
///         TemplateParameters = new[] {},
///         UrlTemplate = "/user1",
///         WorkspaceId = "wks1",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewWorkspaceApiOperation(ctx, "workspaceApiOperation", &apimanagement.WorkspaceApiOperationArgs{
/// 			ApiId:       pulumi.String("PetStoreTemplate2"),
/// 			Description: pulumi.String("This can only be done by the logged in user."),
/// 			DisplayName: pulumi.String("createUser2"),
/// 			Method:      pulumi.String("POST"),
/// 			OperationId: pulumi.String("newoperations"),
/// 			Request: &apimanagement.RequestContractArgs{
/// 				Description:     pulumi.String("Created user object"),
/// 				Headers:         apimanagement.ParameterContractArray{},
/// 				QueryParameters: apimanagement.ParameterContractArray{},
/// 				Representations: apimanagement.RepresentationContractArray{
/// 					&apimanagement.RepresentationContractArgs{
/// 						ContentType: pulumi.String("application/json"),
/// 						SchemaId:    pulumi.String("592f6c1d0af5840ca8897f0c"),
/// 						TypeName:    pulumi.String("User"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Responses: apimanagement.ResponseContractArray{
/// 				&apimanagement.ResponseContractArgs{
/// 					Description: pulumi.String("successful operation"),
/// 					Headers:     apimanagement.ParameterContractArray{},
/// 					Representations: apimanagement.RepresentationContractArray{
/// 						&apimanagement.RepresentationContractArgs{
/// 							ContentType: pulumi.String("application/xml"),
/// 						},
/// 						&apimanagement.RepresentationContractArgs{
/// 							ContentType: pulumi.String("application/json"),
/// 						},
/// 					},
/// 					StatusCode: pulumi.Int(200),
/// 				},
/// 			},
/// 			ServiceName:        pulumi.String("apimService1"),
/// 			TemplateParameters: apimanagement.ParameterContractArray{},
/// 			UrlTemplate:        pulumi.String("/user1"),
/// 			WorkspaceId:        pulumi.String("wks1"),
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
/// import com.pulumi.azurenative.apimanagement.WorkspaceApiOperation;
/// import com.pulumi.azurenative.apimanagement.WorkspaceApiOperationArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.RequestContractArgs;
/// import com.pulumi.azurenative.apimanagement.inputs.ResponseContractArgs;
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
///         var workspaceApiOperation = new WorkspaceApiOperation("workspaceApiOperation", WorkspaceApiOperationArgs.builder()
///             .apiId("PetStoreTemplate2")
///             .description("This can only be done by the logged in user.")
///             .displayName("createUser2")
///             .method("POST")
///             .operationId("newoperations")
///             .request(RequestContractArgs.builder()
///                 .description("Created user object")
///                 .headers()
///                 .queryParameters()
///                 .representations(RepresentationContractArgs.builder()
///                     .contentType("application/json")
///                     .schemaId("592f6c1d0af5840ca8897f0c")
///                     .typeName("User")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .responses(ResponseContractArgs.builder()
///                 .description("successful operation")
///                 .headers()
///                 .representations(
///                     RepresentationContractArgs.builder()
///                         .contentType("application/xml")
///                         .build(),
///                     RepresentationContractArgs.builder()
///                         .contentType("application/json")
///                         .build())
///                 .statusCode(200)
///                 .build())
///             .serviceName("apimService1")
///             .templateParameters()
///             .urlTemplate("/user1")
///             .workspaceId("wks1")
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
/// const workspaceApiOperation = new azure_native.apimanagement.WorkspaceApiOperation("workspaceApiOperation", {
///     apiId: "PetStoreTemplate2",
///     description: "This can only be done by the logged in user.",
///     displayName: "createUser2",
///     method: "POST",
///     operationId: "newoperations",
///     request: {
///         description: "Created user object",
///         headers: [],
///         queryParameters: [],
///         representations: [{
///             contentType: "application/json",
///             schemaId: "592f6c1d0af5840ca8897f0c",
///             typeName: "User",
///         }],
///     },
///     resourceGroupName: "rg1",
///     responses: [{
///         description: "successful operation",
///         headers: [],
///         representations: [
///             {
///                 contentType: "application/xml",
///             },
///             {
///                 contentType: "application/json",
///             },
///         ],
///         statusCode: 200,
///     }],
///     serviceName: "apimService1",
///     templateParameters: [],
///     urlTemplate: "/user1",
///     workspaceId: "wks1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_api_operation = azure_native.apimanagement.WorkspaceApiOperation("workspaceApiOperation",
///     api_id="PetStoreTemplate2",
///     description="This can only be done by the logged in user.",
///     display_name="createUser2",
///     method="POST",
///     operation_id="newoperations",
///     request={
///         "description": "Created user object",
///         "headers": [],
///         "query_parameters": [],
///         "representations": [{
///             "content_type": "application/json",
///             "schema_id": "592f6c1d0af5840ca8897f0c",
///             "type_name": "User",
///         }],
///     },
///     resource_group_name="rg1",
///     responses=[{
///         "description": "successful operation",
///         "headers": [],
///         "representations": [
///             {
///                 "content_type": "application/xml",
///             },
///             {
///                 "content_type": "application/json",
///             },
///         ],
///         "status_code": 200,
///     }],
///     service_name="apimService1",
///     template_parameters=[],
///     url_template="/user1",
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceApiOperation:
///     type: azure-native:apimanagement:WorkspaceApiOperation
///     properties:
///       apiId: PetStoreTemplate2
///       description: This can only be done by the logged in user.
///       displayName: createUser2
///       method: POST
///       operationId: newoperations
///       request:
///         description: Created user object
///         headers: []
///         queryParameters: []
///         representations:
///           - contentType: application/json
///             schemaId: 592f6c1d0af5840ca8897f0c
///             typeName: User
///       resourceGroupName: rg1
///       responses:
///         - description: successful operation
///           headers: []
///           representations:
///             - contentType: application/xml
///             - contentType: application/json
///           statusCode: 200
///       serviceName: apimService1
///       templateParameters: []
///       urlTemplate: /user1
///       workspaceId: wks1
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
/// $ pulumi import azure-native:apimanagement:WorkspaceApiOperation newoperations /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/workspaces/{workspaceId}/apis/{apiId}/operations/{operationId}
/// ```
class WorkspaceApiOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Description of the operation. May include HTML formatting tags.
  late final pulumi.Output<String?> description;

  /// Operation Name.
  late final pulumi.Output<String> displayName;

  /// A Valid HTTP Operation Method. Typical Http Methods like GET, PUT, POST but not limited by only them.
  late final pulumi.Output<String> method;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Operation Policies
  late final pulumi.Output<String?> policies;

  /// An entity containing request details.
  late final pulumi.Output<RequestContractResponse?> request;

  /// Array of Operation responses.
  late final pulumi.Output<List<Map<String, dynamic>>?> responses;

  /// Collection of URL template parameters.
  late final pulumi.Output<List<Map<String, dynamic>>?> templateParameters;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Relative URL template identifying the target resource for this operation. May include parameters. Example: /customers/{cid}/orders/{oid}/?date={date}
  late final pulumi.Output<String> urlTemplate;

  /// Creates a new [WorkspaceApiOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceApiOperation]. {@macro pulumi_apimanagement_workspace_api_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceApiOperation(
    String name, {
    WorkspaceApiOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:WorkspaceApiOperation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    method = registerOutput<String>('method');
    this.name = registerOutput<String>('name');
    policies = registerOutput<String?>('policies');
    request = registerOutput<RequestContractResponse?>('request');
    responses = registerOutput<List<Map<String, dynamic>>?>('responses');
    templateParameters = registerOutput<List<Map<String, dynamic>>?>(
      'templateParameters',
    );
    type = registerOutput<String>('type');
    urlTemplate = registerOutput<String>('urlTemplate');
  }
}
