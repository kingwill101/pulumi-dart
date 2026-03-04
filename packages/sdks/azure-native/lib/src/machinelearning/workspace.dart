import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_response.dart';
import 'workspace_args.dart';

/// An object that represents a machine learning workspace.
///
/// Uses Azure REST API version 2019-10-01. In version 2.x of the Azure Native provider, it used API version 2019-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkspaceCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspace = new AzureNative.MachineLearning.Workspace("workspace", new()
///     {
///         Location = "West Europe",
///         OwnerEmail = "abc@microsoft.com",
///         ResourceGroupName = "myResourceGroup",
///         Sku = new AzureNative.MachineLearning.Inputs.SkuArgs
///         {
///             Name = "Enterprise",
///             Tier = "Enterprise",
///         },
///         Tags =
///         {
///             { "tagKey1", "TagValue1" },
///         },
///         UserStorageAccountId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/teststorage",
///         WorkspaceName = "testworkspace",
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
/// 	machinelearning "github.com/pulumi/pulumi-azure-native-sdk/machinelearning/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearning.NewWorkspace(ctx, "workspace", &machinelearning.WorkspaceArgs{
/// 			Location:          pulumi.String("West Europe"),
/// 			OwnerEmail:        pulumi.String("abc@microsoft.com"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Sku: &machinelearning.SkuArgs{
/// 				Name: pulumi.String("Enterprise"),
/// 				Tier: pulumi.String("Enterprise"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tagKey1": pulumi.String("TagValue1"),
/// 			},
/// 			UserStorageAccountId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/teststorage"),
/// 			WorkspaceName:        pulumi.String("testworkspace"),
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
/// import com.pulumi.azurenative.machinelearning.Workspace;
/// import com.pulumi.azurenative.machinelearning.WorkspaceArgs;
/// import com.pulumi.azurenative.machinelearning.inputs.SkuArgs;
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
///             .location("West Europe")
///             .ownerEmail("abc@microsoft.com")
///             .resourceGroupName("myResourceGroup")
///             .sku(SkuArgs.builder()
///                 .name("Enterprise")
///                 .tier("Enterprise")
///                 .build())
///             .tags(Map.of("tagKey1", "TagValue1"))
///             .userStorageAccountId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/teststorage")
///             .workspaceName("testworkspace")
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
/// const workspace = new azure_native.machinelearning.Workspace("workspace", {
///     location: "West Europe",
///     ownerEmail: "abc@microsoft.com",
///     resourceGroupName: "myResourceGroup",
///     sku: {
///         name: "Enterprise",
///         tier: "Enterprise",
///     },
///     tags: {
///         tagKey1: "TagValue1",
///     },
///     userStorageAccountId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/teststorage",
///     workspaceName: "testworkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace = azure_native.machinelearning.Workspace("workspace",
///     location="West Europe",
///     owner_email="abc@microsoft.com",
///     resource_group_name="myResourceGroup",
///     sku={
///         "name": "Enterprise",
///         "tier": "Enterprise",
///     },
///     tags={
///         "tagKey1": "TagValue1",
///     },
///     user_storage_account_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/teststorage",
///     workspace_name="testworkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   workspace:
///     type: azure-native:machinelearning:Workspace
///     properties:
///       location: West Europe
///       ownerEmail: abc@microsoft.com
///       resourceGroupName: myResourceGroup
///       sku:
///         name: Enterprise
///         tier: Enterprise
///       tags:
///         tagKey1: TagValue1
///       userStorageAccountId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Storage/storageAccounts/teststorage
///       workspaceName: testworkspace
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
/// $ pulumi import azure-native:machinelearning:Workspace testworkspace /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearning/workspaces/{workspaceName}
/// ```
class Workspace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The creation time for this workspace resource.
  late final pulumi.Output<String> creationTime;

  /// The key vault identifier used for encrypted workspaces.
  late final pulumi.Output<String?> keyVaultIdentifierId;

  /// The location of the resource. This cannot be changed after the resource is created.
  late final pulumi.Output<String> location;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// The email id of the owner for this workspace.
  late final pulumi.Output<String> ownerEmail;

  /// The sku of the workspace.
  late final pulumi.Output<SkuResponse?> sku;

  /// The regional endpoint for the machine learning studio service which hosts this workspace.
  late final pulumi.Output<String> studioEndpoint;

  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// The fully qualified arm id of the storage account associated with this workspace.
  late final pulumi.Output<String> userStorageAccountId;

  /// The immutable id associated with this workspace.
  late final pulumi.Output<String> workspaceId;

  /// The current state of workspace resource.
  late final pulumi.Output<String> workspaceState;

  /// The type of this workspace.
  late final pulumi.Output<String> workspaceType;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_machinelearning_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearning:Workspace',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String>('creationTime');
    keyVaultIdentifierId = registerOutput<String?>('keyVaultIdentifierId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    ownerEmail = registerOutput<String>('ownerEmail');
    sku = registerOutput<SkuResponse?>('sku');
    studioEndpoint = registerOutput<String>('studioEndpoint');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    userStorageAccountId = registerOutput<String>('userStorageAccountId');
    workspaceId = registerOutput<String>('workspaceId');
    workspaceState = registerOutput<String>('workspaceState');
    workspaceType = registerOutput<String>('workspaceType');
  }
}
