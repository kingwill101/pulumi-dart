import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_binding_args.dart';
import 'system_data_response.dart';

/// The Permission binding resource.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PermissionBindings_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var permissionBinding = new AzureNative.EventGrid.PermissionBinding("permissionBinding", new()
///     {
///         ClientGroupName = "exampleClientGroupName1",
///         NamespaceName = "exampleNamespaceName1",
///         Permission = AzureNative.EventGrid.PermissionType.Publisher,
///         PermissionBindingName = "examplePermissionBindingName1",
///         ResourceGroupName = "examplerg",
///         TopicSpaceName = "exampleTopicSpaceName1",
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
/// 	eventgrid "github.com/pulumi/pulumi-azure-native-sdk/eventgrid/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventgrid.NewPermissionBinding(ctx, "permissionBinding", &eventgrid.PermissionBindingArgs{
/// 			ClientGroupName:       pulumi.String("exampleClientGroupName1"),
/// 			NamespaceName:         pulumi.String("exampleNamespaceName1"),
/// 			Permission:            pulumi.String(eventgrid.PermissionTypePublisher),
/// 			PermissionBindingName: pulumi.String("examplePermissionBindingName1"),
/// 			ResourceGroupName:     pulumi.String("examplerg"),
/// 			TopicSpaceName:        pulumi.String("exampleTopicSpaceName1"),
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
/// import com.pulumi.azurenative.eventgrid.PermissionBinding;
/// import com.pulumi.azurenative.eventgrid.PermissionBindingArgs;
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
///         var permissionBinding = new PermissionBinding("permissionBinding", PermissionBindingArgs.builder()
///             .clientGroupName("exampleClientGroupName1")
///             .namespaceName("exampleNamespaceName1")
///             .permission("Publisher")
///             .permissionBindingName("examplePermissionBindingName1")
///             .resourceGroupName("examplerg")
///             .topicSpaceName("exampleTopicSpaceName1")
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
/// const permissionBinding = new azure_native.eventgrid.PermissionBinding("permissionBinding", {
///     clientGroupName: "exampleClientGroupName1",
///     namespaceName: "exampleNamespaceName1",
///     permission: azure_native.eventgrid.PermissionType.Publisher,
///     permissionBindingName: "examplePermissionBindingName1",
///     resourceGroupName: "examplerg",
///     topicSpaceName: "exampleTopicSpaceName1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// permission_binding = azure_native.eventgrid.PermissionBinding("permissionBinding",
///     client_group_name="exampleClientGroupName1",
///     namespace_name="exampleNamespaceName1",
///     permission=azure_native.eventgrid.PermissionType.PUBLISHER,
///     permission_binding_name="examplePermissionBindingName1",
///     resource_group_name="examplerg",
///     topic_space_name="exampleTopicSpaceName1")
///
/// ```
///
/// ```yaml
/// resources:
///   permissionBinding:
///     type: azure-native:eventgrid:PermissionBinding
///     properties:
///       clientGroupName: exampleClientGroupName1
///       namespaceName: exampleNamespaceName1
///       permission: Publisher
///       permissionBindingName: examplePermissionBindingName1
///       resourceGroupName: examplerg
///       topicSpaceName: exampleTopicSpaceName1
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
/// $ pulumi import azure-native:eventgrid:PermissionBinding examplePermissionBindingName1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/namespaces/{namespaceName}/permissionBindings/{permissionBindingName}
/// ```
class PermissionBinding extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the client group resource that the permission is bound to.
  /// The client group needs to be a resource under the same namespace the permission binding is a part of.
  late final pulumi.Output<String?> clientGroupName;

  /// Description for the Permission Binding resource.
  late final pulumi.Output<String?> description;

  /// Name of the resource.
  late final pulumi.Output<String> name;

  /// The allowed permission.
  late final pulumi.Output<String?> permission;

  /// Provisioning state of the PermissionBinding resource.
  late final pulumi.Output<String> provisioningState;

  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The name of the Topic Space resource that the permission is bound to.
  /// The Topic space needs to be a resource under the same namespace the permission binding is a part of.
  late final pulumi.Output<String?> topicSpaceName;

  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [PermissionBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PermissionBinding]. {@macro pulumi_eventgrid_permission_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PermissionBinding(
    String name, {
    PermissionBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:eventgrid:PermissionBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clientGroupName = registerOutput<String?>('clientGroupName');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    permission = registerOutput<String?>('permission');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    topicSpaceName = registerOutput<String?>('topicSpaceName');
    type = registerOutput<String>('type');
  }
}
