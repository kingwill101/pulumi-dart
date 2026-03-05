import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_response.dart';
import 'project_args.dart';
import 'project_properties_response.dart';
import 'system_data_response.dart';

/// Cognitive Services project is an Azure resource representing the provisioned account's project, it's type, location and SKU.
///
/// Uses Azure REST API version 2025-04-01-preview.
///
/// Other available API versions: 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Project
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new AzureNative.CognitiveServices.Project("project", new()
///     {
///         AccountName = "testCreate1",
///         Identity = new AzureNative.CognitiveServices.Inputs.IdentityArgs
///         {
///             Type = AzureNative.CognitiveServices.ResourceIdentityType.SystemAssigned,
///         },
///         Location = "West US",
///         ProjectName = "testProject1",
///         Properties = new AzureNative.CognitiveServices.Inputs.ProjectPropertiesArgs
///         {
///             Description = "Description of this project",
///             DisplayName = "p1",
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 		_, err := cognitiveservices.NewProject(ctx, "project", &cognitiveservices.ProjectArgs{
/// 			AccountName: pulumi.String("testCreate1"),
/// 			Identity: &cognitiveservices.IdentityArgs{
/// 				Type: cognitiveservices.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			Location:    pulumi.String("West US"),
/// 			ProjectName: pulumi.String("testProject1"),
/// 			Properties: &cognitiveservices.ProjectPropertiesArgs{
/// 				Description: pulumi.String("Description of this project"),
/// 				DisplayName: pulumi.String("p1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.cognitiveservices.Project;
/// import com.pulumi.azurenative.cognitiveservices.ProjectArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.IdentityArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.ProjectPropertiesArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .accountName("testCreate1")
///             .identity(IdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("West US")
///             .projectName("testProject1")
///             .properties(ProjectPropertiesArgs.builder()
///                 .description("Description of this project")
///                 .displayName("p1")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const project = new azure_native.cognitiveservices.Project("project", {
///     accountName: "testCreate1",
///     identity: {
///         type: azure_native.cognitiveservices.ResourceIdentityType.SystemAssigned,
///     },
///     location: "West US",
///     projectName: "testProject1",
///     properties: {
///         description: "Description of this project",
///         displayName: "p1",
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// project = azure_native.cognitiveservices.Project("project",
///     account_name="testCreate1",
///     identity={
///         "type": azure_native.cognitiveservices.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="West US",
///     project_name="testProject1",
///     properties={
///         "description": "Description of this project",
///         "display_name": "p1",
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   project:
///     type: azure-native:cognitiveservices:Project
///     properties:
///       accountName: testCreate1
///       identity:
///         type: SystemAssigned
///       location: West US
///       projectName: testProject1
///       properties:
///         description: Description of this project
///         displayName: p1
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Project Min
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new AzureNative.CognitiveServices.Project("project", new()
///     {
///         AccountName = "testCreate1",
///         Identity = new AzureNative.CognitiveServices.Inputs.IdentityArgs
///         {
///             Type = AzureNative.CognitiveServices.ResourceIdentityType.SystemAssigned,
///         },
///         Location = "West US",
///         ProjectName = "testProject1",
///         Properties = null,
///         ResourceGroupName = "myResourceGroup",
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
/// 		_, err := cognitiveservices.NewProject(ctx, "project", &cognitiveservices.ProjectArgs{
/// 			AccountName: pulumi.String("testCreate1"),
/// 			Identity: &cognitiveservices.IdentityArgs{
/// 				Type: cognitiveservices.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ProjectName:       pulumi.String("testProject1"),
/// 			Properties:        &cognitiveservices.ProjectPropertiesArgs{},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.cognitiveservices.Project;
/// import com.pulumi.azurenative.cognitiveservices.ProjectArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.IdentityArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.ProjectPropertiesArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .accountName("testCreate1")
///             .identity(IdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("West US")
///             .projectName("testProject1")
///             .properties(ProjectPropertiesArgs.builder()
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const project = new azure_native.cognitiveservices.Project("project", {
///     accountName: "testCreate1",
///     identity: {
///         type: azure_native.cognitiveservices.ResourceIdentityType.SystemAssigned,
///     },
///     location: "West US",
///     projectName: "testProject1",
///     properties: {},
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// project = azure_native.cognitiveservices.Project("project",
///     account_name="testCreate1",
///     identity={
///         "type": azure_native.cognitiveservices.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="West US",
///     project_name="testProject1",
///     properties={},
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   project:
///     type: azure-native:cognitiveservices:Project
///     properties:
///       accountName: testCreate1
///       identity:
///         type: SystemAssigned
///       location: West US
///       projectName: testProject1
///       properties: {}
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:cognitiveservices:Project testProject1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/projects/{projectName}
/// ```
class Project extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource Etag.
  late final pulumi.Output<String> etag;

  /// Identity for the resource.
  late final pulumi.Output<IdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Properties of Cognitive Services project.
  late final pulumi.Output<ProjectPropertiesResponse> properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_cognitiveservices_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cognitiveservices:Project',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    identity = registerOutput<IdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return IdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ProjectPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ProjectPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
