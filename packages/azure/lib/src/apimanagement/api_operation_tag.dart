import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_tag_args.dart';

/// Manages a API Management API Operation Tag.
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
/// const exampleApiOperationTag = new azure.apimanagement.ApiOperationTag("example", {
///     name: "example-Tag",
///     apiOperationId: exampleApiOperation.id,
///     displayName: "example-Tag",
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
/// example_api_operation_tag = azure.apimanagement.ApiOperationTag("example",
///     name="example-Tag",
///     api_operation_id=example_api_operation.id,
///     display_name="example-Tag")
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
///     var exampleApiOperationTag = new Azure.ApiManagement.ApiOperationTag("example", new()
///     {
///         Name = "example-Tag",
///         ApiOperationId = exampleApiOperation.Id,
///         DisplayName = "example-Tag",
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
/// 		exampleApiOperation, err := apimanagement.NewApiOperation(ctx, "example", &apimanagement.ApiOperationArgs{
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
/// 		_, err = apimanagement.NewApiOperationTag(ctx, "example", &apimanagement.ApiOperationTagArgs{
/// 			Name:           pulumi.String("example-Tag"),
/// 			ApiOperationId: exampleApiOperation.ID(),
/// 			DisplayName:    pulumi.String("example-Tag"),
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
/// import com.pulumi.azure.apimanagement.ApiOperationTag;
/// import com.pulumi.azure.apimanagement.ApiOperationTagArgs;
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
///         var exampleApiOperationTag = new ApiOperationTag("exampleApiOperationTag", ApiOperationTagArgs.builder()
///             .name("example-Tag")
///             .apiOperationId(exampleApiOperation.id())
///             .displayName("example-Tag")
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
///   exampleApiOperationTag:
///     type: azure:apimanagement:ApiOperationTag
///     name: example
///     properties:
///       name: example-Tag
///       apiOperationId: ${exampleApiOperation.id}
///       displayName: example-Tag
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
/// API Management API Operation Tags can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/apiOperationTag:ApiOperationTag example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/service/service1/apis/api1/operations/operation1/tags/tag1
/// ```
class ApiOperationTag extends pulumi.CustomResource {
  /// The ID of the API Management API Operation. Changing this forces a new API Management API Operation Tag to be created.
  late final pulumi.Output<String> apiOperationId;
  /// The display name of the API Management API Operation Tag.
  late final pulumi.Output<String> displayName;
  /// The name which should be used for this API Management API Operation Tag. Changing this forces a new API Management API Operation Tag to be created. The name must be unique in the API Management Service.
  late final pulumi.Output<String> name;

  /// Creates a new [ApiOperationTag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiOperationTag]. {@macro pulumi_apimanagement_api_operation_tag_api_operation_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiOperationTag(
    String name, {
    ApiOperationTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/apiOperationTag:ApiOperationTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiOperationId = registerOutput<String>('apiOperationId');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
  }
}
