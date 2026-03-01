import 'package:pulumi/pulumi.dart' as pulumi;
import 'notebook_workspace_args.dart';

/// A notebook workspace resource
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBNotebookWorkspaceCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var notebookWorkspace = new AzureNative.CosmosDB.NotebookWorkspace("notebookWorkspace", new()
///     {
///         AccountName = "ddb1",
///         NotebookWorkspaceName = "default",
///         ResourceGroupName = "rg1",
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
/// 	cosmosdb "github.com/pulumi/pulumi-azure-native-sdk/cosmosdb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cosmosdb.NewNotebookWorkspace(ctx, "notebookWorkspace", &cosmosdb.NotebookWorkspaceArgs{
/// 			AccountName:           pulumi.String("ddb1"),
/// 			NotebookWorkspaceName: pulumi.String("default"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.cosmosdb.NotebookWorkspace;
/// import com.pulumi.azurenative.cosmosdb.NotebookWorkspaceArgs;
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
///         var notebookWorkspace = new NotebookWorkspace("notebookWorkspace", NotebookWorkspaceArgs.builder()
///             .accountName("ddb1")
///             .notebookWorkspaceName("default")
///             .resourceGroupName("rg1")
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
/// const notebookWorkspace = new azure_native.cosmosdb.NotebookWorkspace("notebookWorkspace", {
///     accountName: "ddb1",
///     notebookWorkspaceName: "default",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// notebook_workspace = azure_native.cosmosdb.NotebookWorkspace("notebookWorkspace",
///     account_name="ddb1",
///     notebook_workspace_name="default",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   notebookWorkspace:
///     type: azure-native:cosmosdb:NotebookWorkspace
///     properties:
///       accountName: ddb1
///       notebookWorkspaceName: default
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:cosmosdb:NotebookWorkspace default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/notebookWorkspaces/{notebookWorkspaceName}
/// ```
class NotebookWorkspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the database account.
  late final pulumi.Output<String> name;
  /// Specifies the endpoint of Notebook server.
  late final pulumi.Output<String> notebookServerEndpoint;
  /// Status of the notebook workspace. Possible values are: Creating, Online, Deleting, Failed, Updating.
  late final pulumi.Output<String> status;
  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [NotebookWorkspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotebookWorkspace]. {@macro pulumi_cosmosdb_notebook_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotebookWorkspace(
    String name, {
    NotebookWorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:NotebookWorkspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.notebookServerEndpoint = registerOutput<String>('notebookServerEndpoint');
    this.status = registerOutput<String>('status');
    this.type = registerOutput<String>('type');
  }
}
