import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workspace_args.dart';

/// Workspace entity.
///
/// Uses Azure REST API version 2024-03-15-preview. In version 2.x of the Azure Native provider, it used API version 2024-03-01.
///
/// Other available API versions: 2024-03-01, 2024-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apicenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Workspaces_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.ApiCenter.Workspace("workspace", new()
///     {
///         ResourceGroupName = "contoso-resources",
///         ServiceName = "contoso",
///         Title = "default",
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
/// 		_, err := apicenter.NewWorkspace(ctx, "workspace", &apicenter.WorkspaceArgs{
/// 			ResourceGroupName: pulumi.String("contoso-resources"),
/// 			ServiceName:       pulumi.String("contoso"),
/// 			Title:             pulumi.String("default"),
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
/// import com.pulumi.azurenative.apicenter.Workspace;
/// import com.pulumi.azurenative.apicenter.WorkspaceArgs;
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
///         var workspace = new Workspace("workspace", WorkspaceArgs.builder()
///             .resourceGroupName("contoso-resources")
///             .serviceName("contoso")
///             .title("default")
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
/// const workspace = new azure_native.apicenter.Workspace("workspace", {
///     resourceGroupName: "contoso-resources",
///     serviceName: "contoso",
///     title: "default",
///     workspaceName: "default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.apicenter.Workspace("workspace",
///     resource_group_name="contoso-resources",
///     service_name="contoso",
///     title="default",
///     workspace_name="default")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:apicenter:Workspace
///     properties:
///       resourceGroupName: contoso-resources
///       serviceName: contoso
///       title: default
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
/// $ pulumi import azure-native:apicenter:Workspace default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiCenter/services/{serviceName}/workspaces/{workspaceName}
/// ```
class Workspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Workspace description.
  late final pulumi.Output<String?> description;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Workspace title.
  late final pulumi.Output<String> title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_apicenter_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apicenter:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.title = registerOutput<String>('title');
    this.type = registerOutput<String>('type');
  }
}
