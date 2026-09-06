import 'package:pulumi/pulumi.dart' as pulumi;
import 'label_selector_load_balancer_response.dart';
import 'load_balancer_args.dart';
import 'system_data_response.dart';

/// The configurations regarding multiple standard load balancers. If not supplied, single load balancer mode will be used. Multiple standard load balancers mode will be used if at lease one configuration is supplied. There has to be a configuration named `kubernetes`.
///
/// Uses Azure REST API version 2024-10-02-preview. In version 2.x of the Azure Native provider, it used API version 2024-03-02-preview.
///
/// Other available API versions: 2024-03-02-preview, 2024-04-02-preview, 2024-05-02-preview, 2024-06-02-preview, 2024-07-02-preview, 2024-09-02-preview, 2025-01-02-preview, 2025-02-02-preview, 2025-03-02-preview, 2025-04-02-preview, 2025-05-02-preview, 2025-06-02-preview, 2025-07-02-preview, 2025-08-02-preview, 2025-09-02-preview, 2025-10-02-preview, 2026-01-02-preview, 2026-02-02-preview, 2026-03-02-preview, 2026-04-02-preview, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a Load Balancer
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadBalancer = new AzureNative.ContainerService.LoadBalancer("loadBalancer", new()
///     {
///         AllowServicePlacement = true,
///         LoadBalancerName = "kubernetes",
///         Name = "kubernetes",
///         PrimaryAgentPoolName = "agentpool1",
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewLoadBalancer(ctx, "loadBalancer", &containerservice.LoadBalancerArgs{
/// 			AllowServicePlacement: pulumi.Bool(true),
/// 			LoadBalancerName:      pulumi.String("kubernetes"),
/// 			Name:                  pulumi.String("kubernetes"),
/// 			PrimaryAgentPoolName:  pulumi.String("agentpool1"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			ResourceName:          pulumi.String("clustername1"),
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
/// resource "azure-native_containerservice_loadbalancer" "loadBalancer" {
///   allow_service_placement = true
///   load_balancer_name      = "kubernetes"
///   name                    = "kubernetes"
///   primary_agent_pool_name = "agentpool1"
///   resource_group_name     = "rg1"
///   resource_name           = "clustername1"
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
/// import com.pulumi.azurenative.containerservice.LoadBalancer;
/// import com.pulumi.azurenative.containerservice.LoadBalancerArgs;
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
///             .allowServicePlacement(true)
///             .loadBalancerName("kubernetes")
///             .name("kubernetes")
///             .primaryAgentPoolName("agentpool1")
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
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
/// const loadBalancer = new azure_native.containerservice.LoadBalancer("loadBalancer", {
///     allowServicePlacement: true,
///     loadBalancerName: "kubernetes",
///     name: "kubernetes",
///     primaryAgentPoolName: "agentpool1",
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_balancer = azure_native.containerservice.LoadBalancer("loadBalancer",
///     allow_service_placement=True,
///     load_balancer_name="kubernetes",
///     name="kubernetes",
///     primary_agent_pool_name="agentpool1",
///     resource_group_name="rg1",
///     resource_name_="clustername1")
///
/// ```
///
/// ```yaml
/// resources:
///   loadBalancer:
///     type: azure-native:containerservice:LoadBalancer
///     properties:
///       allowServicePlacement: true
///       loadBalancerName: kubernetes
///       name: kubernetes
///       primaryAgentPoolName: agentpool1
///       resourceGroupName: rg1
///       resourceName: clustername1
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
/// $ pulumi import azure-native:containerservice:LoadBalancer kubernetes /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/loadBalancers/{loadBalancerName}
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// Whether to automatically place services on the load balancer. If not supplied, the default value is true. If set to false manually, both of the external and the internal load balancer will not be selected for services unless they explicitly target it.
  late final pulumi.Output<bool?> allowServicePlacement;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Nodes that match this selector will be possible members of this load balancer.
  late final pulumi.Output<LabelSelectorLoadBalancerResponse?> nodeSelector;
  /// Required field. A string value that must specify the ID of an existing agent pool. All nodes in the given pool will always be added to this load balancer. This agent pool must have at least one node and minCount&gt;=1 for autoscaling operations. An agent pool can only be the primary pool for a single load balancer.
  late final pulumi.Output<String> primaryAgentPoolName;
  /// The current provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Only services that must match this selector can be placed on this load balancer.
  late final pulumi.Output<LabelSelectorLoadBalancerResponse?> serviceLabelSelector;
  /// Services created in namespaces that match the selector can be placed on this load balancer.
  late final pulumi.Output<LabelSelectorLoadBalancerResponse?> serviceNamespaceSelector;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_containerservice_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerservice:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowServicePlacement = registerOutput<bool?>('allowServicePlacement');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    nodeSelector = registerOutput<LabelSelectorLoadBalancerResponse?>('nodeSelector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelSelectorLoadBalancerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    primaryAgentPoolName = registerOutput<String>('primaryAgentPoolName');
    provisioningState = registerOutput<String>('provisioningState');
    serviceLabelSelector = registerOutput<LabelSelectorLoadBalancerResponse?>('serviceLabelSelector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelSelectorLoadBalancerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceNamespaceSelector = registerOutput<LabelSelectorLoadBalancerResponse?>('serviceNamespaceSelector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelSelectorLoadBalancerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [LoadBalancer] resource.
  LoadBalancer.reference(String urn)
    : super(
        'azure-native:containerservice:LoadBalancer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowServicePlacement = registerOutput<bool?>('allowServicePlacement');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    nodeSelector = registerOutput<LabelSelectorLoadBalancerResponse?>('nodeSelector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelSelectorLoadBalancerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    primaryAgentPoolName = registerOutput<String>('primaryAgentPoolName');
    provisioningState = registerOutput<String>('provisioningState');
    serviceLabelSelector = registerOutput<LabelSelectorLoadBalancerResponse?>('serviceLabelSelector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelSelectorLoadBalancerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceNamespaceSelector = registerOutput<LabelSelectorLoadBalancerResponse?>('serviceNamespaceSelector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelSelectorLoadBalancerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
