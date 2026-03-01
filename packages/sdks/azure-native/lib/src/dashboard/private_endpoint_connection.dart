import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// The Private Endpoint Connection resource.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2022-08-01, 2022-10-01-preview, 2023-09-01, 2023-10-01-preview, 2024-11-01-preview, 2025-08-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dashboard [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnections_Approve
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.Dashboard.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "myConnection",
///         ResourceGroupName = "myResourceGroup",
///         WorkspaceName = "myWorkspace",
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
/// 	dashboard "github.com/pulumi/pulumi-azure-native-sdk/dashboard/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dashboard.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &dashboard.PrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("myConnection"),
/// 			ResourceGroupName:             pulumi.String("myResourceGroup"),
/// 			WorkspaceName:                 pulumi.String("myWorkspace"),
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
/// import com.pulumi.azurenative.dashboard.PrivateEndpointConnection;
/// import com.pulumi.azurenative.dashboard.PrivateEndpointConnectionArgs;
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
///         var privateEndpointConnection = new PrivateEndpointConnection("privateEndpointConnection", PrivateEndpointConnectionArgs.builder()
///             .privateEndpointConnectionName("myConnection")
///             .resourceGroupName("myResourceGroup")
///             .workspaceName("myWorkspace")
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
/// const privateEndpointConnection = new azure_native.dashboard.PrivateEndpointConnection("privateEndpointConnection", {
///     privateEndpointConnectionName: "myConnection",
///     resourceGroupName: "myResourceGroup",
///     workspaceName: "myWorkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.dashboard.PrivateEndpointConnection("privateEndpointConnection",
///     private_endpoint_connection_name="myConnection",
///     resource_group_name="myResourceGroup",
///     workspace_name="myWorkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:dashboard:PrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: myConnection
///       resourceGroupName: myResourceGroup
///       workspaceName: myWorkspace
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
/// $ pulumi import azure-native:dashboard:PrivateEndpointConnection myConnection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Dashboard/grafana/{workspaceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The private endpoint connection group ids.
  late final pulumi.Output<List<String>?> groupIds;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource of private end point.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_dashboard_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dashboard:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.groupIds = registerOutput<List<String>?>('groupIds');
    this.name = registerOutput<String>('name');
    this.privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint');
    this.privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
