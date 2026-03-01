import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_peer_args.dart';
import 'system_data_response.dart';

/// A BgpPeer resource for an Arc connected cluster (Microsoft.Kubernetes/connectedClusters)
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2024-03-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BgpPeers_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bgpPeer = new AzureNative.KubernetesRuntime.BgpPeer("bgpPeer", new()
///     {
///         BgpPeerName = "testpeer",
///         MyAsn = 64500,
///         PeerAddress = "10.0.0.1",
///         PeerAsn = 64501,
///         ResourceUri = "subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1",
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
/// 	kubernetesruntime "github.com/pulumi/pulumi-azure-native-sdk/kubernetesruntime/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kubernetesruntime.NewBgpPeer(ctx, "bgpPeer", &kubernetesruntime.BgpPeerArgs{
/// 			BgpPeerName: pulumi.String("testpeer"),
/// 			MyAsn:       pulumi.Int(64500),
/// 			PeerAddress: pulumi.String("10.0.0.1"),
/// 			PeerAsn:     pulumi.Int(64501),
/// 			ResourceUri: pulumi.String("subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1"),
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
/// import com.pulumi.azurenative.kubernetesruntime.BgpPeer;
/// import com.pulumi.azurenative.kubernetesruntime.BgpPeerArgs;
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
///         var bgpPeer = new BgpPeer("bgpPeer", BgpPeerArgs.builder()
///             .bgpPeerName("testpeer")
///             .myAsn(64500)
///             .peerAddress("10.0.0.1")
///             .peerAsn(64501)
///             .resourceUri("subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1")
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
/// const bgpPeer = new azure_native.kubernetesruntime.BgpPeer("bgpPeer", {
///     bgpPeerName: "testpeer",
///     myAsn: 64500,
///     peerAddress: "10.0.0.1",
///     peerAsn: 64501,
///     resourceUri: "subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// bgp_peer = azure_native.kubernetesruntime.BgpPeer("bgpPeer",
///     bgp_peer_name="testpeer",
///     my_asn=64500,
///     peer_address="10.0.0.1",
///     peer_asn=64501,
///     resource_uri="subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1")
///
/// ```
///
/// ```yaml
/// resources:
///   bgpPeer:
///     type: azure-native:kubernetesruntime:BgpPeer
///     properties:
///       bgpPeerName: testpeer
///       myAsn: 64500
///       peerAddress: 10.0.0.1
///       peerAsn: 64501
///       resourceUri: subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1
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
/// $ pulumi import azure-native:kubernetesruntime:BgpPeer testpeer /{resourceUri}/providers/Microsoft.KubernetesRuntime/bgpPeers/{bgpPeerName}
/// ```
class BgpPeer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// My ASN
  late final pulumi.Output<int> myAsn;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Peer Address
  late final pulumi.Output<String> peerAddress;
  /// Peer ASN
  late final pulumi.Output<int> peerAsn;
  /// Resource provision state
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BgpPeer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BgpPeer]. {@macro pulumi_kubernetesruntime_bgp_peer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BgpPeer(
    String name, {
    BgpPeerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kubernetesruntime:BgpPeer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.myAsn = registerOutput<int>('myAsn');
    this.name = registerOutput<String>('name');
    this.peerAddress = registerOutput<String>('peerAddress');
    this.peerAsn = registerOutput<int>('peerAsn');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
