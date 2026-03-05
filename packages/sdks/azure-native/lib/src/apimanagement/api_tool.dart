import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_tool_args.dart';
import 'system_data_response.dart';

/// Tool details.
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateApiTool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiTool = new AzureNative.ApiManagement.ApiTool("apiTool", new()
///     {
///         ApiId = "github-mcp-api",
///         Description = "This is a MCP tool to create an issue in a github repository",
///         DisplayName = "createIssue",
///         OperationId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/github-rest-api/operations/createIssue",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         ToolId = "createIssue",
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
/// 		_, err := apimanagement.NewApiTool(ctx, "apiTool", &apimanagement.ApiToolArgs{
/// 			ApiId:             pulumi.String("github-mcp-api"),
/// 			Description:       pulumi.String("This is a MCP tool to create an issue in a github repository"),
/// 			DisplayName:       pulumi.String("createIssue"),
/// 			OperationId:       pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/github-rest-api/operations/createIssue"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			ToolId:            pulumi.String("createIssue"),
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
/// import com.pulumi.azurenative.apimanagement.ApiTool;
/// import com.pulumi.azurenative.apimanagement.ApiToolArgs;
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
///         var apiTool = new ApiTool("apiTool", ApiToolArgs.builder()
///             .apiId("github-mcp-api")
///             .description("This is a MCP tool to create an issue in a github repository")
///             .displayName("createIssue")
///             .operationId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/github-rest-api/operations/createIssue")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .toolId("createIssue")
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
/// const apiTool = new azure_native.apimanagement.ApiTool("apiTool", {
///     apiId: "github-mcp-api",
///     description: "This is a MCP tool to create an issue in a github repository",
///     displayName: "createIssue",
///     operationId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/github-rest-api/operations/createIssue",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     toolId: "createIssue",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_tool = azure_native.apimanagement.ApiTool("apiTool",
///     api_id="github-mcp-api",
///     description="This is a MCP tool to create an issue in a github repository",
///     display_name="createIssue",
///     operation_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/github-rest-api/operations/createIssue",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     tool_id="createIssue")
///
/// ```
///
/// ```yaml
/// resources:
///   apiTool:
///     type: azure-native:apimanagement:ApiTool
///     properties:
///       apiId: github-mcp-api
///       description: This is a MCP tool to create an issue in a github repository
///       displayName: createIssue
///       operationId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/apis/github-rest-api/operations/createIssue
///       resourceGroupName: rg1
///       serviceName: apimService1
///       toolId: createIssue
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
/// $ pulumi import azure-native:apimanagement:ApiTool createIssue /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/tools/{toolId}
/// ```
class ApiTool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Description of the tool.
  late final pulumi.Output<String?> description;

  /// Tool Name. MCP tool name must contain only letters, numbers, underscores, and hyphens.
  late final pulumi.Output<String?> displayName;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Identifier of the operation this MCP tool is associated with in the form of /apis/{apiId}/operations/{operationId}.
  late final pulumi.Output<String?> operationId;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ApiTool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiTool]. {@macro pulumi_apimanagement_api_tool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiTool(
    String name, {
    ApiToolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:ApiTool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    operationId = registerOutput<String?>('operationId');
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
