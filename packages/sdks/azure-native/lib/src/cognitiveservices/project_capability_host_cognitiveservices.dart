import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_capability_host_args.dart';
import 'project_capability_host_response.dart';

/// Azure Resource Manager resource envelope for Project CapabilityHost.
///
/// Uses Azure REST API version 2025-04-01-preview.
///
/// Other available API versions: 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Project CapabilityHost.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var projectCapabilityHost = new AzureNative.CognitiveServices.ProjectCapabilityHost("projectCapabilityHost", new()
///     {
///         AccountName = "account-1",
///         CapabilityHostName = "capabilityHostName",
///         ProjectCapabilityHostProperties = new AzureNative.CognitiveServices.Inputs.ProjectCapabilityHostArgs
///         {
///             AiServicesConnections = new[]
///             {
///                 "aoai_connection",
///             },
///             StorageConnections = new[]
///             {
///                 "blob_connection",
///             },
///             ThreadStorageConnections = new[]
///             {
///                 "aca_connection",
///             },
///             VectorStoreConnections = new[]
///             {
///                 "acs_connection",
///             },
///         },
///         ProjectName = "project-1",
///         ResourceGroupName = "test-rg",
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
/// 		_, err := cognitiveservices.NewProjectCapabilityHost(ctx, "projectCapabilityHost", &cognitiveservices.ProjectCapabilityHostArgs{
/// 			AccountName:        pulumi.String("account-1"),
/// 			CapabilityHostName: pulumi.String("capabilityHostName"),
/// 			ProjectCapabilityHostProperties: &cognitiveservices.ProjectCapabilityHostTypeArgs{
/// 				AiServicesConnections: pulumi.StringArray{
/// 					pulumi.String("aoai_connection"),
/// 				},
/// 				StorageConnections: pulumi.StringArray{
/// 					pulumi.String("blob_connection"),
/// 				},
/// 				ThreadStorageConnections: pulumi.StringArray{
/// 					pulumi.String("aca_connection"),
/// 				},
/// 				VectorStoreConnections: pulumi.StringArray{
/// 					pulumi.String("acs_connection"),
/// 				},
/// 			},
/// 			ProjectName:       pulumi.String("project-1"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.cognitiveservices.ProjectCapabilityHost;
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
///         var projectCapabilityHost = new ProjectCapabilityHost("projectCapabilityHost", ProjectCapabilityHostArgs.builder()
///             .accountName("account-1")
///             .capabilityHostName("capabilityHostName")
///             .projectCapabilityHostProperties(ProjectCapabilityHostArgs.builder()
///                 .aiServicesConnections("aoai_connection")
///                 .storageConnections("blob_connection")
///                 .threadStorageConnections("aca_connection")
///                 .vectorStoreConnections("acs_connection")
///                 .build())
///             .projectName("project-1")
///             .resourceGroupName("test-rg")
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
/// const projectCapabilityHost = new azure_native.cognitiveservices.ProjectCapabilityHost("projectCapabilityHost", {
///     accountName: "account-1",
///     capabilityHostName: "capabilityHostName",
///     projectCapabilityHostProperties: {
///         aiServicesConnections: ["aoai_connection"],
///         storageConnections: ["blob_connection"],
///         threadStorageConnections: ["aca_connection"],
///         vectorStoreConnections: ["acs_connection"],
///     },
///     projectName: "project-1",
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// project_capability_host = azure_native.cognitiveservices.ProjectCapabilityHost("projectCapabilityHost",
///     account_name="account-1",
///     capability_host_name="capabilityHostName",
///     project_capability_host_properties={
///         "ai_services_connections": ["aoai_connection"],
///         "storage_connections": ["blob_connection"],
///         "thread_storage_connections": ["aca_connection"],
///         "vector_store_connections": ["acs_connection"],
///     },
///     project_name="project-1",
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   projectCapabilityHost:
///     type: azure-native:cognitiveservices:ProjectCapabilityHost
///     properties:
///       accountName: account-1
///       capabilityHostName: capabilityHostName
///       projectCapabilityHostProperties:
///         aiServicesConnections:
///           - aoai_connection
///         storageConnections:
///           - blob_connection
///         threadStorageConnections:
///           - aca_connection
///         vectorStoreConnections:
///           - acs_connection
///       projectName: project-1
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:cognitiveservices:ProjectCapabilityHost capabilityHostName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/projects/{projectName}/capabilityHosts/{capabilityHostName}
/// ```
class ProjectCapabilityHostCognitiveservices extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<ProjectCapabilityHostResponse>
  projectCapabilityHostProperties;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ProjectCapabilityHostCognitiveservices].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectCapabilityHostCognitiveservices]. {@macro pulumi_cognitiveservices_project_capability_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectCapabilityHostCognitiveservices(
    String name, {
    ProjectCapabilityHostArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cognitiveservices:ProjectCapabilityHost',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    projectCapabilityHostProperties =
        registerOutput<ProjectCapabilityHostResponse>(
          'projectCapabilityHostProperties',
        );
    type = registerOutput<String>('type');
  }
}
