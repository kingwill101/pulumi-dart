import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// The private endpoint connection resource.
///
/// Uses Azure REST API version 2023-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnections_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.AgFoodPlatform.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         DataManagerForAgricultureResourceName = "examples-farmbeatsResourceName",
///         PrivateEndpointConnectionName = "privateEndpointConnectionName",
///         PrivateLinkServiceConnectionState = new AzureNative.AgFoodPlatform.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             Description = "Approved by johndoe@contoso.com",
///             Status = AzureNative.AgFoodPlatform.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///         ResourceGroupName = "examples-rg",
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
/// 	agfoodplatform "github.com/pulumi/pulumi-azure-native-sdk/agfoodplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agfoodplatform.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &agfoodplatform.PrivateEndpointConnectionArgs{
/// 			DataManagerForAgricultureResourceName: pulumi.String("examples-farmbeatsResourceName"),
/// 			PrivateEndpointConnectionName:         pulumi.String("privateEndpointConnectionName"),
/// 			PrivateLinkServiceConnectionState: &agfoodplatform.PrivateLinkServiceConnectionStateArgs{
/// 				Description: pulumi.String("Approved by johndoe@contoso.com"),
/// 				Status:      pulumi.String(agfoodplatform.PrivateEndpointServiceConnectionStatusApproved),
/// 			},
/// 			ResourceGroupName: pulumi.String("examples-rg"),
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
/// resource "azure-native_agfoodplatform_privateendpointconnection" "privateEndpointConnection" {
///   data_manager_for_agriculture_resource_name = "examples-farmbeatsResourceName"
///   private_endpoint_connection_name           = "privateEndpointConnectionName"
///   private_link_service_connection_state = {
///     description = "Approved by johndoe@contoso.com"
///     status      = "Approved"
///   }
///   resource_group_name = "examples-rg"
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
/// import com.pulumi.azurenative.agfoodplatform.PrivateEndpointConnection;
/// import com.pulumi.azurenative.agfoodplatform.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.agfoodplatform.inputs.PrivateLinkServiceConnectionStateArgs;
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
///             .dataManagerForAgricultureResourceName("examples-farmbeatsResourceName")
///             .privateEndpointConnectionName("privateEndpointConnectionName")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .description("Approved by johndoe@contoso.com")
///                 .status("Approved")
///                 .build())
///             .resourceGroupName("examples-rg")
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
/// const privateEndpointConnection = new azure_native.agfoodplatform.PrivateEndpointConnection("privateEndpointConnection", {
///     dataManagerForAgricultureResourceName: "examples-farmbeatsResourceName",
///     privateEndpointConnectionName: "privateEndpointConnectionName",
///     privateLinkServiceConnectionState: {
///         description: "Approved by johndoe@contoso.com",
///         status: azure_native.agfoodplatform.PrivateEndpointServiceConnectionStatus.Approved,
///     },
///     resourceGroupName: "examples-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.agfoodplatform.PrivateEndpointConnection("privateEndpointConnection",
///     data_manager_for_agriculture_resource_name="examples-farmbeatsResourceName",
///     private_endpoint_connection_name="privateEndpointConnectionName",
///     private_link_service_connection_state={
///         "description": "Approved by johndoe@contoso.com",
///         "status": azure_native.agfoodplatform.PrivateEndpointServiceConnectionStatus.APPROVED,
///     },
///     resource_group_name="examples-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:agfoodplatform:PrivateEndpointConnection
///     properties:
///       dataManagerForAgricultureResourceName: examples-farmbeatsResourceName
///       privateEndpointConnectionName: privateEndpointConnectionName
///       privateLinkServiceConnectionState:
///         description: Approved by johndoe@contoso.com
///         status: Approved
///       resourceGroupName: examples-rg
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
/// $ pulumi import azure-native:agfoodplatform:PrivateEndpointConnection privateEndpointConnectionName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AgFoodPlatform/farmBeats/{dataManagerForAgricultureResourceName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The group ids for the private endpoint resource.
  late final pulumi.Output<List<String>> groupIds;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The private endpoint resource.
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
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_agfoodplatform_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:agfoodplatform:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>>('groupIds');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
