import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_property_response.dart';
import 'private_link_service_connection_state_property_response.dart';
import 'system_data_response.dart';

/// A private endpoint connection
///
/// Uses Azure REST API version 2024-04-13. In version 2.x of the Azure Native provider, it used API version 2022-12-29.
///
/// Other available API versions: 2021-08-27, 2022-02-01, 2022-07-07, 2022-11-11, 2022-12-29, 2023-05-02, 2023-08-15, 2025-02-14. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var privateEndpointConnection = new AzureNative.Kusto.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         ClusterName = "kustoclusterrptest4",
///         PrivateEndpointConnectionName = "privateEndpointTest",
///         PrivateLinkServiceConnectionState = new AzureNative.Kusto.Inputs.PrivateLinkServiceConnectionStatePropertyArgs
///         {
///             Description = "Approved by johndoe@contoso.com",
///             Status = "Approved",
///         },
///         ResourceGroupName = "kustorptest",
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
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &kusto.PrivateEndpointConnectionArgs{
/// 			ClusterName:                   pulumi.String("kustoclusterrptest4"),
/// 			PrivateEndpointConnectionName: pulumi.String("privateEndpointTest"),
/// 			PrivateLinkServiceConnectionState: &kusto.PrivateLinkServiceConnectionStatePropertyArgs{
/// 				Description: pulumi.String("Approved by johndoe@contoso.com"),
/// 				Status:      pulumi.String("Approved"),
/// 			},
/// 			ResourceGroupName: pulumi.String("kustorptest"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_kusto_privateendpointconnection" "privateEndpointConnection" {
///   cluster_name                     = "kustoclusterrptest4"
///   private_endpoint_connection_name = "privateEndpointTest"
///   private_link_service_connection_state = {
///     description = "Approved by johndoe@contoso.com"
///     status      = "Approved"
///   }
///   resource_group_name = "kustorptest"
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
/// import com.pulumi.azurenative.kusto.PrivateEndpointConnection;
/// import com.pulumi.azurenative.kusto.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.kusto.inputs.PrivateLinkServiceConnectionStatePropertyArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .clusterName("kustoclusterrptest4")
///             .privateEndpointConnectionName("privateEndpointTest")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStatePropertyArgs.builder()
///                 .description("Approved by johndoe@contoso.com")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("kustorptest")
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
/// const privateEndpointConnection = new azure_native.kusto.PrivateEndpointConnection("privateEndpointConnection", {
///     clusterName: "kustoclusterrptest4",
///     privateEndpointConnectionName: "privateEndpointTest",
///     privateLinkServiceConnectionState: {
///         description: "Approved by johndoe@contoso.com",
///         status: "Approved",
///     },
///     resourceGroupName: "kustorptest",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.kusto.PrivateEndpointConnection("privateEndpointConnection",
///     cluster_name="kustoclusterrptest4",
///     private_endpoint_connection_name="privateEndpointTest",
///     private_link_service_connection_state={
///         "description": "Approved by johndoe@contoso.com",
///         "status": "Approved",
///     },
///     resource_group_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:kusto:PrivateEndpointConnection
///     properties:
///       clusterName: kustoclusterrptest4
///       privateEndpointConnectionName: privateEndpointTest
///       privateLinkServiceConnectionState:
///         description: Approved by johndoe@contoso.com
///         status: Approved
///       resourceGroupName: kustorptest
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
/// $ pulumi import azure-native:kusto:PrivateEndpointConnection privateEndpointTest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Group id of the private endpoint.
  late final pulumi.Output<String> groupId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Private endpoint which the connection belongs to.
  late final pulumi.Output<PrivateEndpointPropertyResponse> privateEndpoint;
  /// Connection State of the Private Endpoint Connection.
  late final pulumi.Output<PrivateLinkServiceConnectionStatePropertyResponse> privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint.
  late final pulumi.Output<String> provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_kusto_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kusto:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupId = registerOutput<String>('groupId');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointPropertyResponse>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStatePropertyResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStatePropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [PrivateEndpointConnection] resource.
  PrivateEndpointConnection.reference(String urn)
    : super(
        'azure-native:kusto:PrivateEndpointConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupId = registerOutput<String>('groupId');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointPropertyResponse>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStatePropertyResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStatePropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
