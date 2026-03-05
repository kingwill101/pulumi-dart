import 'package:pulumi/pulumi.dart' as pulumi;
import 'aadauth_type_connection_properties_response.dart';
import 'project_connection_args.dart';

/// Connection base resource schema.
///
/// Uses Azure REST API version 2025-04-01-preview.
///
/// Other available API versions: 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateProjectConnection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var projectConnection = new AzureNative.CognitiveServices.ProjectConnection("projectConnection", new()
///     {
///         AccountName = "account-1",
///         ConnectionName = "connection-1",
///         ProjectName = "project-1",
///         Properties = new AzureNative.CognitiveServices.Inputs.NoneAuthTypeConnectionPropertiesArgs
///         {
///             AuthType = "None",
///             Category = AzureNative.CognitiveServices.ConnectionCategory.ContainerRegistry,
///             ExpiryTime = "2024-03-15T14:30:00Z",
///             Target = "[tartget url]",
///         },
///         ResourceGroupName = "resourceGroup-1",
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewProjectConnection(ctx, "projectConnection", &cognitiveservices.ProjectConnectionArgs{
/// 			AccountName:    pulumi.String("account-1"),
/// 			ConnectionName: pulumi.String("connection-1"),
/// 			ProjectName:    pulumi.String("project-1"),
/// 			Properties: &cognitiveservices.NoneAuthTypeConnectionPropertiesArgs{
/// 				AuthType:   pulumi.String("None"),
/// 				Category:   pulumi.String(cognitiveservices.ConnectionCategoryContainerRegistry),
/// 				ExpiryTime: pulumi.String("2024-03-15T14:30:00Z"),
/// 				Target:     pulumi.String("[tartget url]"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroup-1"),
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
/// import com.pulumi.azurenative.cognitiveservices.ProjectConnection;
/// import com.pulumi.azurenative.cognitiveservices.ProjectConnectionArgs;
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
///         var projectConnection = new ProjectConnection("projectConnection", ProjectConnectionArgs.builder()
///             .accountName("account-1")
///             .connectionName("connection-1")
///             .projectName("project-1")
///             .properties(NoneAuthTypeConnectionPropertiesArgs.builder()
///                 .authType("None")
///                 .category("ContainerRegistry")
///                 .expiryTime("2024-03-15T14:30:00Z")
///                 .target("[tartget url]")
///                 .build())
///             .resourceGroupName("resourceGroup-1")
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
/// const projectConnection = new azure_native.cognitiveservices.ProjectConnection("projectConnection", {
///     accountName: "account-1",
///     connectionName: "connection-1",
///     projectName: "project-1",
///     properties: {
///         authType: "None",
///         category: azure_native.cognitiveservices.ConnectionCategory.ContainerRegistry,
///         expiryTime: "2024-03-15T14:30:00Z",
///         target: "[tartget url]",
///     },
///     resourceGroupName: "resourceGroup-1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// project_connection = azure_native.cognitiveservices.ProjectConnection("projectConnection",
///     account_name="account-1",
///     connection_name="connection-1",
///     project_name="project-1",
///     properties={
///         "auth_type": "None",
///         "category": azure_native.cognitiveservices.ConnectionCategory.CONTAINER_REGISTRY,
///         "expiry_time": "2024-03-15T14:30:00Z",
///         "target": "[tartget url]",
///     },
///     resource_group_name="resourceGroup-1")
///
/// ```
///
/// ```yaml
/// resources:
///   projectConnection:
///     type: azure-native:cognitiveservices:ProjectConnection
///     properties:
///       accountName: account-1
///       connectionName: connection-1
///       projectName: project-1
///       properties:
///         authType: None
///         category: ContainerRegistry
///         expiryTime: 2024-03-15T14:30:00Z
///         target: '[tartget url]'
///       resourceGroupName: resourceGroup-1
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
/// $ pulumi import azure-native:cognitiveservices:ProjectConnection connection-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/projects/{projectName}/connections/{connectionName}
/// ```
class ProjectConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Connection property base schema.
  late final pulumi.Output<AADAuthTypeConnectionPropertiesResponse> properties;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ProjectConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectConnection]. {@macro pulumi_cognitiveservices_project_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectConnection(
    String name, {
    ProjectConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cognitiveservices:ProjectConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AADAuthTypeConnectionPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AADAuthTypeConnectionPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
