import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_args.dart';
import 'private_link_service_connection_response.dart';

/// Complete information about the private endpoint.
///
/// Uses Azure REST API version 2020-03-01. In version 2.x of the Azure Native provider, it used API version 2020-03-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a private endpoint
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpoint = new AzureNative.StreamAnalytics.PrivateEndpoint("privateEndpoint", new()
///     {
///         ClusterName = "testcluster",
///         ManualPrivateLinkServiceConnections = new[]
///         {
///             new AzureNative.StreamAnalytics.Inputs.PrivateLinkServiceConnectionArgs
///             {
///                 GroupIds = new[]
///                 {
///                     "groupIdFromResource",
///                 },
///                 PrivateLinkServiceId = "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls",
///             },
///         },
///         PrivateEndpointName = "testpe",
///         ResourceGroupName = "sjrg",
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
/// 	streamanalytics "github.com/pulumi/pulumi-azure-native-sdk/streamanalytics/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := streamanalytics.NewPrivateEndpoint(ctx, "privateEndpoint", &streamanalytics.PrivateEndpointArgs{
/// 			ClusterName: pulumi.String("testcluster"),
/// 			ManualPrivateLinkServiceConnections: streamanalytics.PrivateLinkServiceConnectionArray{
/// 				&streamanalytics.PrivateLinkServiceConnectionArgs{
/// 					GroupIds: pulumi.StringArray{
/// 						pulumi.String("groupIdFromResource"),
/// 					},
/// 					PrivateLinkServiceId: pulumi.String("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls"),
/// 				},
/// 			},
/// 			PrivateEndpointName: pulumi.String("testpe"),
/// 			ResourceGroupName:   pulumi.String("sjrg"),
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
/// import com.pulumi.azurenative.streamanalytics.PrivateEndpoint;
/// import com.pulumi.azurenative.streamanalytics.PrivateEndpointArgs;
/// import com.pulumi.azurenative.streamanalytics.inputs.PrivateLinkServiceConnectionArgs;
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
///         var privateEndpoint = new PrivateEndpoint("privateEndpoint", PrivateEndpointArgs.builder()
///             .clusterName("testcluster")
///             .manualPrivateLinkServiceConnections(PrivateLinkServiceConnectionArgs.builder()
///                 .groupIds("groupIdFromResource")
///                 .privateLinkServiceId("/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls")
///                 .build())
///             .privateEndpointName("testpe")
///             .resourceGroupName("sjrg")
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
/// const privateEndpoint = new azure_native.streamanalytics.PrivateEndpoint("privateEndpoint", {
///     clusterName: "testcluster",
///     manualPrivateLinkServiceConnections: [{
///         groupIds: ["groupIdFromResource"],
///         privateLinkServiceId: "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls",
///     }],
///     privateEndpointName: "testpe",
///     resourceGroupName: "sjrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint = azure_native.streamanalytics.PrivateEndpoint("privateEndpoint",
///     cluster_name="testcluster",
///     manual_private_link_service_connections=[{
///         "group_ids": ["groupIdFromResource"],
///         "private_link_service_id": "/subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls",
///     }],
///     private_endpoint_name="testpe",
///     resource_group_name="sjrg")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpoint:
///     type: azure-native:streamanalytics:PrivateEndpoint
///     properties:
///       clusterName: testcluster
///       manualPrivateLinkServiceConnections:
///         - groupIds:
///             - groupIdFromResource
///           privateLinkServiceId: /subscriptions/subId/resourceGroups/rg1/providers/Microsoft.Network/privateLinkServices/testPls
///       privateEndpointName: testpe
///       resourceGroupName: sjrg
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
/// $ pulumi import azure-native:streamanalytics:PrivateEndpoint An Example Private Endpoint /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StreamAnalytics/clusters/{clusterName}/privateEndpoints/{privateEndpointName}
/// ```
class PrivateEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The date when this private endpoint was created.
  late final pulumi.Output<String> createdDate;
  /// Unique opaque string (generally a GUID) that represents the metadata state of the resource (private endpoint) and changes whenever the resource is updated. Required on PUT (CreateOrUpdate) requests.
  late final pulumi.Output<String> etag;
  /// A list of connections to the remote resource. Immutable after it is set.
  late final pulumi.Output<List<PrivateLinkServiceConnectionResponse>?> manualPrivateLinkServiceConnections;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpoint]. {@macro pulumi_streamanalytics_private_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpoint(
    String name, {
    PrivateEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:streamanalytics:PrivateEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.createdDate = registerOutput<String>('createdDate');
    this.etag = registerOutput<String>('etag');
    this.manualPrivateLinkServiceConnections = registerOutput<List<PrivateLinkServiceConnectionResponse>?>('manualPrivateLinkServiceConnections');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
  }
}
