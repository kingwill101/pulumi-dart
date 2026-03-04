import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_issue_args.dart';

/// Issue Contract details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateApiIssue
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiIssue = new AzureNative.ApiManagement.ApiIssue("apiIssue", new()
///     {
///         ApiId = "57d1f7558aa04f15146d9d8a",
///         CreatedDate = "2018-02-01T22:21:20.467Z",
///         Description = "New API issue description",
///         IssueId = "57d2ef278aa04f0ad01d6cdc",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         State = AzureNative.ApiManagement.State.Open,
///         Title = "New API issue",
///         UserId = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/users/1",
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
/// 		_, err := apimanagement.NewApiIssue(ctx, "apiIssue", &apimanagement.ApiIssueArgs{
/// 			ApiId:             pulumi.String("57d1f7558aa04f15146d9d8a"),
/// 			CreatedDate:       pulumi.String("2018-02-01T22:21:20.467Z"),
/// 			Description:       pulumi.String("New API issue description"),
/// 			IssueId:           pulumi.String("57d2ef278aa04f0ad01d6cdc"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			State:             pulumi.String(apimanagement.StateOpen),
/// 			Title:             pulumi.String("New API issue"),
/// 			UserId:            pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/users/1"),
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
/// import com.pulumi.azurenative.apimanagement.ApiIssue;
/// import com.pulumi.azurenative.apimanagement.ApiIssueArgs;
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
///         var apiIssue = new ApiIssue("apiIssue", ApiIssueArgs.builder()
///             .apiId("57d1f7558aa04f15146d9d8a")
///             .createdDate("2018-02-01T22:21:20.467Z")
///             .description("New API issue description")
///             .issueId("57d2ef278aa04f0ad01d6cdc")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .state("open")
///             .title("New API issue")
///             .userId("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/users/1")
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
/// const apiIssue = new azure_native.apimanagement.ApiIssue("apiIssue", {
///     apiId: "57d1f7558aa04f15146d9d8a",
///     createdDate: "2018-02-01T22:21:20.467Z",
///     description: "New API issue description",
///     issueId: "57d2ef278aa04f0ad01d6cdc",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     state: azure_native.apimanagement.State.Open,
///     title: "New API issue",
///     userId: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/users/1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_issue = azure_native.apimanagement.ApiIssue("apiIssue",
///     api_id="57d1f7558aa04f15146d9d8a",
///     created_date="2018-02-01T22:21:20.467Z",
///     description="New API issue description",
///     issue_id="57d2ef278aa04f0ad01d6cdc",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     state=azure_native.apimanagement.State.OPEN,
///     title="New API issue",
///     user_id="/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/users/1")
///
/// ```
///
/// ```yaml
/// resources:
///   apiIssue:
///     type: azure-native:apimanagement:ApiIssue
///     properties:
///       apiId: 57d1f7558aa04f15146d9d8a
///       createdDate: 2018-02-01T22:21:20.467Z
///       description: New API issue description
///       issueId: 57d2ef278aa04f0ad01d6cdc
///       resourceGroupName: rg1
///       serviceName: apimService1
///       state: open
///       title: New API issue
///       userId: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.ApiManagement/service/apimService1/users/1
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
/// $ pulumi import azure-native:apimanagement:ApiIssue 57d2ef278aa04f0ad01d6cdc /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/issues/{issueId}
/// ```
class ApiIssue extends pulumi.CustomResource {
  /// A resource identifier for the API the issue was created for.
  late final pulumi.Output<String?> apiId;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Date and time when the issue was created.
  late final pulumi.Output<String?> createdDate;

  /// Text describing the issue.
  late final pulumi.Output<String> description;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Status of the issue.
  late final pulumi.Output<String?> state;

  /// The issue title.
  late final pulumi.Output<String> title;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// A resource identifier for the user created the issue.
  late final pulumi.Output<String> userId;

  /// Creates a new [ApiIssue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiIssue]. {@macro pulumi_apimanagement_api_issue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiIssue(
    String name, {
    ApiIssueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:ApiIssue',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiId = registerOutput<String?>('apiId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdDate = registerOutput<String?>('createdDate');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    state = registerOutput<String?>('state');
    title = registerOutput<String>('title');
    type = registerOutput<String>('type');
    userId = registerOutput<String>('userId');
  }
}
