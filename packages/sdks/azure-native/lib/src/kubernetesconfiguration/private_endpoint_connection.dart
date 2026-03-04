import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// The Private Endpoint Connection resource.
///
/// Uses Azure REST API version 2022-04-02-preview. In version 2.x of the Azure Native provider, it used API version 2022-04-02-preview.
///
/// Other available API versions: 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kubernetesconfiguration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Approve or reject a private endpoint connection with a given name.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.KubernetesConfiguration.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         PrivateEndpointConnectionName = "private-endpoint-connection-name",
///         PrivateLinkServiceConnectionState = new AzureNative.KubernetesConfiguration.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "Approved by johndoe@contoso.com",
///             Status = AzureNative.KubernetesConfiguration.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "myResourceGroup",
///         ScopeName = "myPrivateLinkScope",
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
/// 	kubernetesconfiguration "github.com/pulumi/pulumi-azure-native-sdk/kubernetesconfiguration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kubernetesconfiguration.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &kubernetesconfiguration.PrivateEndpointConnectionArgs{
/// 			PrivateEndpointConnectionName: pulumi.String("private-endpoint-connection-name"),
/// 			PrivateLinkServiceConnectionState: &kubernetesconfiguration.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("Approved by johndoe@contoso.com"),
/// 				Status:      pulumi.String(kubernetesconfiguration.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ScopeName:         pulumi.String("myPrivateLinkScope"),
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
/// import com.pulumi.azurenative.kubernetesconfiguration.PrivateEndpointConnection;
/// import com.pulumi.azurenative.kubernetesconfiguration.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.kubernetesconfiguration.inputs.PrivateLinkServiceConnectionStateArgs;
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
///             .privateEndpointConnectionName("private-endpoint-connection-name")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("Approved by johndoe@contoso.com")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .scopeName("myPrivateLinkScope")
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
/// const privateEndpointConnection = new azure_native.kubernetesconfiguration.PrivateEndpointConnection("privateEndpointConnection", {
///     privateEndpointConnectionName: "private-endpoint-connection-name",
///     privateLinkServiceConnectionState: {
///         description: "Approved by johndoe@contoso.com",
///         status: azure_native.kubernetesconfiguration.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "myResourceGroup",
///     scopeName: "myPrivateLinkScope",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.kubernetesconfiguration.PrivateEndpointConnection("privateEndpointConnection",
///     private_endpoint_connection_name="private-endpoint-connection-name",
///     private_link_service_connection_state={
///         "description": "Approved by johndoe@contoso.com",
///         "status": azure_native.kubernetesconfiguration.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="myResourceGroup",
///     scope_name="myPrivateLinkScope")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:kubernetesconfiguration:PrivateEndpointConnection
///     properties:
///       privateEndpointConnectionName: private-endpoint-connection-name
///       privateLinkServiceConnectionState:
///         description: Approved by johndoe@contoso.com
///         status: Approved
///       resourceGroupName: myResourceGroup
///       scopeName: myPrivateLinkScope
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
/// $ pulumi import azure-native:kubernetesconfiguration:PrivateEndpointConnection private-endpoint-connection-name /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KubernetesConfiguration/privateLinkScopes/{scopeName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource of private end point.
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;

  /// A collection of information about the state of the connection between service consumer and provider.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse>
  privateLinkServiceConnectionState;

  /// The provisioning state of the private endpoint connection resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_kubernetesconfiguration_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:kubernetesconfiguration:PrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>(
      'privateEndpoint',
    );
    privateLinkServiceConnectionState =
        registerOutput<PrivateLinkServiceConnectionStateResponse>(
          'privateLinkServiceConnectionState',
        );
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
