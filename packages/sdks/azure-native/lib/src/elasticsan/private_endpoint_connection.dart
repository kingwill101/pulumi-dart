import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// Response for PrivateEndpoint Connection object
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-12-01-preview.
///
/// Other available API versions: 2022-12-01-preview, 2023-01-01, 2024-06-01-preview, 2024-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elasticsan [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnections_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.ElasticSan.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         ElasticSanName = "elasticsanname",
///         GroupIds = new[]
///         {
///             "jdwrzpemdjrpiwzvy",
///         },
///         PrivateEndpointConnectionName = "privateendpointconnectionname",
///         PrivateLinkServiceConnectionState = new AzureNative.ElasticSan.Inputs.PrivateLinkServiceConnectionStateArgs
///         {
///             ActionsRequired = "jhjdpwvyzipggtn",
///             Description = "dxl",
///             Status = AzureNative.ElasticSan.PrivateEndpointServiceConnectionStatus.Pending,
///         },
///         ResourceGroupName = "resourcegroupname",
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
/// 	elasticsan "github.com/pulumi/pulumi-azure-native-sdk/elasticsan/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticsan.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &elasticsan.PrivateEndpointConnectionArgs{
/// 			ElasticSanName: pulumi.String("elasticsanname"),
/// 			GroupIds: pulumi.StringArray{
/// 				pulumi.String("jdwrzpemdjrpiwzvy"),
/// 			},
/// 			PrivateEndpointConnectionName: pulumi.String("privateendpointconnectionname"),
/// 			PrivateLinkServiceConnectionState: &elasticsan.PrivateLinkServiceConnectionStateArgs{
/// 				ActionsRequired: pulumi.String("jhjdpwvyzipggtn"),
/// 				Description:     pulumi.String("dxl"),
/// 				Status:          pulumi.String(elasticsan.PrivateEndpointServiceConnectionStatusPending),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourcegroupname"),
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
/// import com.pulumi.azurenative.elasticsan.PrivateEndpointConnection;
/// import com.pulumi.azurenative.elasticsan.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.elasticsan.inputs.PrivateLinkServiceConnectionStateArgs;
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
///             .elasticSanName("elasticsanname")
///             .groupIds("jdwrzpemdjrpiwzvy")
///             .privateEndpointConnectionName("privateendpointconnectionname")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .actionsRequired("jhjdpwvyzipggtn")
///                 .description("dxl")
///                 .status("Pending")
///                 .build())
///             .resourceGroupName("resourcegroupname")
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
/// const privateEndpointConnection = new azure_native.elasticsan.PrivateEndpointConnection("privateEndpointConnection", {
///     elasticSanName: "elasticsanname",
///     groupIds: ["jdwrzpemdjrpiwzvy"],
///     privateEndpointConnectionName: "privateendpointconnectionname",
///     privateLinkServiceConnectionState: {
///         actionsRequired: "jhjdpwvyzipggtn",
///         description: "dxl",
///         status: azure_native.elasticsan.PrivateEndpointServiceConnectionStatus.Pending,
///     },
///     resourceGroupName: "resourcegroupname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.elasticsan.PrivateEndpointConnection("privateEndpointConnection",
///     elastic_san_name="elasticsanname",
///     group_ids=["jdwrzpemdjrpiwzvy"],
///     private_endpoint_connection_name="privateendpointconnectionname",
///     private_link_service_connection_state={
///         "actions_required": "jhjdpwvyzipggtn",
///         "description": "dxl",
///         "status": azure_native.elasticsan.PrivateEndpointServiceConnectionStatus.PENDING,
///     },
///     resource_group_name="resourcegroupname")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:elasticsan:PrivateEndpointConnection
///     properties:
///       elasticSanName: elasticsanname
///       groupIds:
///         - jdwrzpemdjrpiwzvy
///       privateEndpointConnectionName: privateendpointconnectionname
///       privateLinkServiceConnectionState:
///         actionsRequired: jhjdpwvyzipggtn
///         description: dxl
///         status: Pending
///       resourceGroupName: resourcegroupname
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PrivateEndpointConnections_Create_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.ElasticSan.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         ElasticSanName = "elasticsanname",
///         PrivateEndpointConnectionName = "privateendpointconnectionname",
///         PrivateLinkServiceConnectionState = null,
///         ResourceGroupName = "resourcegroupname",
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
/// 	elasticsan "github.com/pulumi/pulumi-azure-native-sdk/elasticsan/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticsan.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &elasticsan.PrivateEndpointConnectionArgs{
/// 			ElasticSanName:                    pulumi.String("elasticsanname"),
/// 			PrivateEndpointConnectionName:     pulumi.String("privateendpointconnectionname"),
/// 			PrivateLinkServiceConnectionState: &elasticsan.PrivateLinkServiceConnectionStateArgs{},
/// 			ResourceGroupName:                 pulumi.String("resourcegroupname"),
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
/// import com.pulumi.azurenative.elasticsan.PrivateEndpointConnection;
/// import com.pulumi.azurenative.elasticsan.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.elasticsan.inputs.PrivateLinkServiceConnectionStateArgs;
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
///             .elasticSanName("elasticsanname")
///             .privateEndpointConnectionName("privateendpointconnectionname")
///             .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                 .build())
///             .resourceGroupName("resourcegroupname")
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
/// const privateEndpointConnection = new azure_native.elasticsan.PrivateEndpointConnection("privateEndpointConnection", {
///     elasticSanName: "elasticsanname",
///     privateEndpointConnectionName: "privateendpointconnectionname",
///     privateLinkServiceConnectionState: {},
///     resourceGroupName: "resourcegroupname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.elasticsan.PrivateEndpointConnection("privateEndpointConnection",
///     elastic_san_name="elasticsanname",
///     private_endpoint_connection_name="privateendpointconnectionname",
///     private_link_service_connection_state={},
///     resource_group_name="resourcegroupname")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:elasticsan:PrivateEndpointConnection
///     properties:
///       elasticSanName: elasticsanname
///       privateEndpointConnectionName: privateendpointconnectionname
///       privateLinkServiceConnectionState: {}
///       resourceGroupName: resourcegroupname
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
/// $ pulumi import azure-native:elasticsan:PrivateEndpointConnection {privateEndpointConnectionName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of resources private endpoint is mapped
  late final pulumi.Output<List<String>?> groupIds;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Private Endpoint resource
  late final pulumi.Output<PrivateEndpointResponse?> privateEndpoint;
  /// Private Link Service Connection State.
  late final pulumi.Output<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;
  /// Provisioning State of Private Endpoint connection resource
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_elasticsan_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:elasticsan:PrivateEndpointConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupIds = registerOutput<List<String>?>('groupIds');
    this.name = registerOutput<String>('name');
    privateEndpoint = registerOutput<PrivateEndpointResponse?>('privateEndpoint', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateLinkServiceConnectionState = registerOutput<PrivateLinkServiceConnectionStateResponse>('privateLinkServiceConnectionState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
