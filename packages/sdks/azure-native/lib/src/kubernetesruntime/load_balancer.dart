import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_args.dart';
import 'system_data_response.dart';

/// A LoadBalancer resource for an Arc connected cluster (Microsoft.Kubernetes/connectedClusters)
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2024-03-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### LoadBalancers_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadBalancer = new AzureNative.KubernetesRuntime.LoadBalancer("loadBalancer", new()
///     {
///         Addresses = new[]
///         {
///             "192.168.50.1/24",
///             "192.168.51.2-192.168.51.10",
///         },
///         AdvertiseMode = AzureNative.KubernetesRuntime.AdvertiseMode.ARP,
///         LoadBalancerName = "testlb",
///         ResourceUri = "subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1",
///         ServiceSelector =
///         {
///             { "app", "frontend" },
///         },
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
/// 		_, err := kubernetesruntime.NewLoadBalancer(ctx, "loadBalancer", &kubernetesruntime.LoadBalancerArgs{
/// 			Addresses: pulumi.StringArray{
/// 				pulumi.String("192.168.50.1/24"),
/// 				pulumi.String("192.168.51.2-192.168.51.10"),
/// 			},
/// 			AdvertiseMode:    pulumi.String(kubernetesruntime.AdvertiseModeARP),
/// 			LoadBalancerName: pulumi.String("testlb"),
/// 			ResourceUri:      pulumi.String("subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1"),
/// 			ServiceSelector: pulumi.StringMap{
/// 				"app": pulumi.String("frontend"),
/// 			},
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
/// resource "azure-native_kubernetesruntime_loadbalancer" "loadBalancer" {
///   addresses          = ["192.168.50.1/24", "192.168.51.2-192.168.51.10"]
///   advertise_mode     = "ARP"
///   load_balancer_name = "testlb"
///   resource_uri       = "subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1"
///   service_selector = {
///     "app" = "frontend"
///   }
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
/// import com.pulumi.azurenative.kubernetesruntime.LoadBalancer;
/// import com.pulumi.azurenative.kubernetesruntime.LoadBalancerArgs;
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
///         var loadBalancer = new LoadBalancer("loadBalancer", LoadBalancerArgs.builder()
///             .addresses(
///                 "192.168.50.1/24",
///                 "192.168.51.2-192.168.51.10")
///             .advertiseMode("ARP")
///             .loadBalancerName("testlb")
///             .resourceUri("subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1")
///             .serviceSelector(Map.of("app", "frontend"))
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
/// const loadBalancer = new azure_native.kubernetesruntime.LoadBalancer("loadBalancer", {
///     addresses: [
///         "192.168.50.1/24",
///         "192.168.51.2-192.168.51.10",
///     ],
///     advertiseMode: azure_native.kubernetesruntime.AdvertiseMode.ARP,
///     loadBalancerName: "testlb",
///     resourceUri: "subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1",
///     serviceSelector: {
///         app: "frontend",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_balancer = azure_native.kubernetesruntime.LoadBalancer("loadBalancer",
///     addresses=[
///         "192.168.50.1/24",
///         "192.168.51.2-192.168.51.10",
///     ],
///     advertise_mode=azure_native.kubernetesruntime.AdvertiseMode.ARP,
///     load_balancer_name="testlb",
///     resource_uri="subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1",
///     service_selector={
///         "app": "frontend",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   loadBalancer:
///     type: azure-native:kubernetesruntime:LoadBalancer
///     properties:
///       addresses:
///         - 192.168.50.1/24
///         - 192.168.51.2-192.168.51.10
///       advertiseMode: ARP
///       loadBalancerName: testlb
///       resourceUri: subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1
///       serviceSelector:
///         app: frontend
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
/// $ pulumi import azure-native:kubernetesruntime:LoadBalancer testlb /{resourceUri}/providers/Microsoft.KubernetesRuntime/loadBalancers/{loadBalancerName}
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// IP Range
  late final pulumi.Output<List<String>> addresses;
  /// Advertise Mode
  late final pulumi.Output<String> advertiseMode;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The list of BGP peers it should advertise to. Null or empty means to advertise to all peers.
  late final pulumi.Output<List<String>?> bgpPeers;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Resource provision state
  late final pulumi.Output<String> provisioningState;
  /// A dynamic label mapping to select related services. For instance, if you want to create a load balancer only for services with label "a=b", then please specify {"a": "b"} in the field.
  late final pulumi.Output<Map<String, String>?> serviceSelector;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_kubernetesruntime_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kubernetesruntime:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addresses = registerOutput<List<String>>('addresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    advertiseMode = registerOutput<String>('advertiseMode');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bgpPeers = registerOutput<List<String>?>('bgpPeers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    serviceSelector = registerOutput<Map<String, String>?>('serviceSelector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [LoadBalancer] resource.
  LoadBalancer.reference(String urn)
    : super(
        'azure-native:kubernetesruntime:LoadBalancer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    addresses = registerOutput<List<String>>('addresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    advertiseMode = registerOutput<String>('advertiseMode');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    bgpPeers = registerOutput<List<String>?>('bgpPeers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    serviceSelector = registerOutput<Map<String, String>?>('serviceSelector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
