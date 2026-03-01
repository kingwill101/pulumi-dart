import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_args.dart';
import 'api_operation_request.dart';
import 'api_operation_response.dart';
import 'api_operation_template_parameter.dart';

/// Manages an API Operation within an API Management Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.apimanagement.getApi({
///     name: "search-api",
///     apiManagementName: "search-api-management",
///     resourceGroupName: "search-service",
///     revision: "2",
/// });
/// const exampleApiOperation = new azure.apimanagement.ApiOperation("example", {
///     operationId: "user-delete",
///     apiName: example.then(example => example.name),
///     apiManagementName: example.then(example => example.apiManagementName),
///     resourceGroupName: example.then(example => example.resourceGroupName),
///     displayName: "Delete User Operation",
///     method: "DELETE",
///     urlTemplate: "/users/{id}/delete",
///     description: "This can only be done by the logged in user.",
///     templateParameters: [{
///         name: "id",
///         type: "number",
///         required: true,
///     }],
///     responses: [{
///         statusCode: 200,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.apimanagement.get_api(name="search-api",
///     api_management_name="search-api-management",
///     resource_group_name="search-service",
///     revision="2")
/// example_api_operation = azure.apimanagement.ApiOperation("example",
///     operation_id="user-delete",
///     api_name=example.name,
///     api_management_name=example.api_management_name,
///     resource_group_name=example.resource_group_name,
///     display_name="Delete User Operation",
///     method="DELETE",
///     url_template="/users/{id}/delete",
///     description="This can only be done by the logged in user.",
///     template_parameters=[{
///         "name": "id",
///         "type": "number",
///         "required": True,
///     }],
///     responses=[{
///         "status_code": 200,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.ApiManagement.GetApi.Invoke(new()
///     {
///         Name = "search-api",
///         ApiManagementName = "search-api-management",
///         ResourceGroupName = "search-service",
///         Revision = "2",
///     });
///
///     var exampleApiOperation = new Azure.ApiManagement.ApiOperation("example", new()
///     {
///         OperationId = "user-delete",
///         ApiName = example.Apply(getApiResult => getApiResult.Name),
///         ApiManagementName = example.Apply(getApiResult => getApiResult.ApiManagementName),
///         ResourceGroupName = example.Apply(getApiResult => getApiResult.ResourceGroupName),
///         DisplayName = "Delete User Operation",
///         Method = "DELETE",
///         UrlTemplate = "/users/{id}/delete",
///         Description = "This can only be done by the logged in user.",
///         TemplateParameters = new[]
///         {
///             new Azure.ApiManagement.Inputs.ApiOperationTemplateParameterArgs
///             {
///                 Name = "id",
///                 Type = "number",
///                 Required = true,
///             },
///         },
///         Responses = new[]
///         {
///             new Azure.ApiManagement.Inputs.ApiOperationResponseArgs
///             {
///                 StatusCode = 200,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := apimanagement.LookupApi(ctx, &apimanagement.LookupApiArgs{
/// 			Name:              "search-api",
/// 			ApiManagementName: "search-api-management",
/// 			ResourceGroupName: "search-service",
/// 			Revision:          "2",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewApiOperation(ctx, "example", &apimanagement.ApiOperationArgs{
/// 			OperationId:       pulumi.String("user-delete"),
/// 			ApiName:           pulumi.String(example.Name),
/// 			ApiManagementName: pulumi.String(example.ApiManagementName),
/// 			ResourceGroupName: pulumi.String(example.ResourceGroupName),
/// 			DisplayName:       pulumi.String("Delete User Operation"),
/// 			Method:            pulumi.String("DELETE"),
/// 			UrlTemplate:       pulumi.String("/users/{id}/delete"),
/// 			Description:       pulumi.String("This can only be done by the logged in user."),
/// 			TemplateParameters: apimanagement.ApiOperationTemplateParameterArray{
/// 				&apimanagement.ApiOperationTemplateParameterArgs{
/// 					Name:     pulumi.String("id"),
/// 					Type:     pulumi.String("number"),
/// 					Required: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Responses: apimanagement.ApiOperationResponseArray{
/// 				&apimanagement.ApiOperationResponseArgs{
/// 					StatusCode: pulumi.Int(200),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.apimanagement.ApimanagementFunctions;
/// import com.pulumi.azure.apimanagement.inputs.GetApiArgs;
/// import com.pulumi.azure.apimanagement.ApiOperation;
/// import com.pulumi.azure.apimanagement.ApiOperationArgs;
/// import com.pulumi.azure.apimanagement.inputs.ApiOperationTemplateParameterArgs;
/// import com.pulumi.azure.apimanagement.inputs.ApiOperationResponseArgs;
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
///         final var example = ApimanagementFunctions.getApi(GetApiArgs.builder()
///             .name("search-api")
///             .apiManagementName("search-api-management")
///             .resourceGroupName("search-service")
///             .revision("2")
///             .build());
///
///         var exampleApiOperation = new ApiOperation("exampleApiOperation", ApiOperationArgs.builder()
///             .operationId("user-delete")
///             .apiName(example.name())
///             .apiManagementName(example.apiManagementName())
///             .resourceGroupName(example.resourceGroupName())
///             .displayName("Delete User Operation")
///             .method("DELETE")
///             .urlTemplate("/users/{id}/delete")
///             .description("This can only be done by the logged in user.")
///             .templateParameters(ApiOperationTemplateParameterArgs.builder()
///                 .name("id")
///                 .type("number")
///                 .required(true)
///                 .build())
///             .responses(ApiOperationResponseArgs.builder()
///                 .statusCode(200)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleApiOperation:
///     type: azure:apimanagement:ApiOperation
///     name: example
///     properties:
///       operationId: user-delete
///       apiName: ${example.name}
///       apiManagementName: ${example.apiManagementName}
///       resourceGroupName: ${example.resourceGroupName}
///       displayName: Delete User Operation
///       method: DELETE
///       urlTemplate: /users/{id}/delete
///       description: This can only be done by the logged in user.
///       templateParameters:
///         - name: id
///           type: number
///           required: true
///       responses:
///         - statusCode: 200
/// variables:
///   example:
///     fn::invoke:
///       function: azure:apimanagement:getApi
///       arguments:
///         name: search-api
///         apiManagementName: search-api-management
///         resourceGroupName: search-service
///         revision: '2'
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management API Operation's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/apiOperation:ApiOperation example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1/apis/api1/operations/operation1
/// ```
class ApiOperation extends pulumi.CustomResource {
  /// The Name of the API Management Service where the API exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;
  /// The name of the API within the API Management Service where this API Operation should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiName;
  /// A description for this API Operation, which may include HTML formatting tags.
  late final pulumi.Output<String?> description;
  /// The Display Name for this API Management Operation.
  late final pulumi.Output<String> displayName;
  /// The HTTP Method used for this API Management Operation, like `GET`, `DELETE`, `PUT` or `POST` - but not limited to these values.
  late final pulumi.Output<String> method;
  /// A unique identifier for this API Operation. Changing this forces a new resource to be created.
  late final pulumi.Output<String> operationId;
  /// A `request` block as defined below.
  late final pulumi.Output<ApiOperationRequest> request;
  /// The Name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// One or more `response` blocks as defined below.
  late final pulumi.Output<List<ApiOperationResponse>?> responses;
  /// One or more `template_parameter` blocks as defined below. Required if `url_template` contains one or more parameters.
  late final pulumi.Output<List<ApiOperationTemplateParameter>?> templateParameters;
  /// The relative URL Template identifying the target resource for this operation, which may include parameters.
  late final pulumi.Output<String> urlTemplate;

  /// Creates a new [ApiOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiOperation]. {@macro pulumi_apimanagement_api_operation_api_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiOperation(
    String name, {
    ApiOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiOperation:ApiOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiManagementName = registerOutput<String>('apiManagementName');
    this.apiName = registerOutput<String>('apiName');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.method = registerOutput<String>('method');
    this.operationId = registerOutput<String>('operationId');
    this.request = registerOutput<ApiOperationRequest>('request');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.responses = registerOutput<List<ApiOperationResponse>?>('responses');
    this.templateParameters = registerOutput<List<ApiOperationTemplateParameter>?>('templateParameters');
    this.urlTemplate = registerOutput<String>('urlTemplate');
  }
}
