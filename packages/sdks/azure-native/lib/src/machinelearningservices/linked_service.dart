import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_response.dart';
import 'linked_service_args.dart';
import 'linked_service_props_response.dart';

/// Linked service.
///
/// Uses Azure REST API version 2020-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2020-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateLinkedService
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var linkedService = new AzureNative.MachineLearningServices.LinkedService("linkedService", new()
///     {
///         Identity = new AzureNative.MachineLearningServices.Inputs.IdentityArgs
///         {
///             Type = AzureNative.MachineLearningServices.ResourceIdentityType.SystemAssigned,
///         },
///         LinkName = "link-1",
///         Location = "westus",
///         Name = "link-1",
///         Properties = new AzureNative.MachineLearningServices.Inputs.LinkedServicePropsArgs
///         {
///             LinkedServiceResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.Synapse/workspaces/Syn-1",
///         },
///         ResourceGroupName = "resourceGroup-1",
///         WorkspaceName = "workspace-1",
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
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewLinkedService(ctx, "linkedService", &machinelearningservices.LinkedServiceArgs{
/// 			Identity: &machinelearningservices.IdentityArgs{
/// 				Type: machinelearningservices.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			LinkName: pulumi.String("link-1"),
/// 			Location: pulumi.String("westus"),
/// 			Name:     pulumi.String("link-1"),
/// 			Properties: &machinelearningservices.LinkedServicePropsArgs{
/// 				LinkedServiceResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.Synapse/workspaces/Syn-1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroup-1"),
/// 			WorkspaceName:     pulumi.String("workspace-1"),
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
/// import com.pulumi.azurenative.machinelearningservices.LinkedService;
/// import com.pulumi.azurenative.machinelearningservices.LinkedServiceArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.IdentityArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.LinkedServicePropsArgs;
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
///         var linkedService = new LinkedService("linkedService", LinkedServiceArgs.builder()
///             .identity(IdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .linkName("link-1")
///             .location("westus")
///             .name("link-1")
///             .properties(LinkedServicePropsArgs.builder()
///                 .linkedServiceResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.Synapse/workspaces/Syn-1")
///                 .build())
///             .resourceGroupName("resourceGroup-1")
///             .workspaceName("workspace-1")
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
/// const linkedService = new azure_native.machinelearningservices.LinkedService("linkedService", {
///     identity: {
///         type: azure_native.machinelearningservices.ResourceIdentityType.SystemAssigned,
///     },
///     linkName: "link-1",
///     location: "westus",
///     name: "link-1",
///     properties: {
///         linkedServiceResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.Synapse/workspaces/Syn-1",
///     },
///     resourceGroupName: "resourceGroup-1",
///     workspaceName: "workspace-1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// linked_service = azure_native.machinelearningservices.LinkedService("linkedService",
///     identity={
///         "type": azure_native.machinelearningservices.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     link_name="link-1",
///     location="westus",
///     name="link-1",
///     properties={
///         "linked_service_resource_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.Synapse/workspaces/Syn-1",
///     },
///     resource_group_name="resourceGroup-1",
///     workspace_name="workspace-1")
///
/// ```
///
/// ```yaml
/// resources:
///   linkedService:
///     type: azure-native:machinelearningservices:LinkedService
///     properties:
///       identity:
///         type: SystemAssigned
///       linkName: link-1
///       location: westus
///       name: link-1
///       properties:
///         linkedServiceResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1/providers/Microsoft.Synapse/workspaces/Syn-1
///       resourceGroupName: resourceGroup-1
///       workspaceName: workspace-1
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
/// $ pulumi import azure-native:machinelearningservices:LinkedService link-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/linkedServices/{linkName}
/// ```
class LinkedService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Identity for the resource.
  late final pulumi.Output<IdentityResponse?> identity;

  /// location of the linked service.
  late final pulumi.Output<String?> location;

  /// Friendly name of the linked service.
  late final pulumi.Output<String> name;

  /// LinkedService specific properties.
  late final pulumi.Output<LinkedServicePropsResponse> properties;

  /// Resource type of linked service.
  late final pulumi.Output<String> type;

  /// Creates a new [LinkedService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedService]. {@macro pulumi_machinelearningservices_linked_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedService(
    String name, {
    LinkedServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearningservices:LinkedService',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityResponse?>('identity');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LinkedServicePropsResponse>('properties');
    type = registerOutput<String>('type');
  }
}
