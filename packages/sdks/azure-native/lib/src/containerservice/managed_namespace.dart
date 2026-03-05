import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_namespace_args.dart';
import 'namespace_properties_response.dart';
import 'system_data_response.dart';

/// Namespace managed by ARM.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2025-03-02-preview, 2025-04-02-preview, 2025-05-02-preview, 2025-06-02-preview, 2025-07-02-preview, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create/Update Managed Namespace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedNamespace = new AzureNative.ContainerService.ManagedNamespace("managedNamespace", new()
///     {
///         ManagedNamespaceName = "namespace1",
///         Properties = new AzureNative.ContainerService.Inputs.NamespacePropertiesArgs
///         {
///             AdoptionPolicy = AzureNative.ContainerService.AdoptionPolicy.IfIdentical,
///             Annotations =
///             {
///                 { "annatationKey", "annatationValue" },
///             },
///             DefaultNetworkPolicy = new AzureNative.ContainerService.Inputs.NetworkPoliciesArgs
///             {
///                 Egress = AzureNative.ContainerService.PolicyRule.AllowAll,
///                 Ingress = AzureNative.ContainerService.PolicyRule.AllowSameNamespace,
///             },
///             DefaultResourceQuota = new AzureNative.ContainerService.Inputs.ResourceQuotaArgs
///             {
///                 CpuLimit = "3m",
///                 CpuRequest = "3m",
///                 MemoryLimit = "5Gi",
///                 MemoryRequest = "5Gi",
///             },
///             DeletePolicy = AzureNative.ContainerService.DeletePolicy.Keep,
///             Labels =
///             {
///                 { "kubernetes.io/metadata.name", "true" },
///             },
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         Tags =
///         {
///             { "tagKey1", "tagValue1" },
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedNamespace(ctx, "managedNamespace", &containerservice.ManagedNamespaceArgs{
/// 			ManagedNamespaceName: pulumi.String("namespace1"),
/// 			Properties: &containerservice.NamespacePropertiesArgs{
/// 				AdoptionPolicy: pulumi.String(containerservice.AdoptionPolicyIfIdentical),
/// 				Annotations: pulumi.StringMap{
/// 					"annatationKey": pulumi.String("annatationValue"),
/// 				},
/// 				DefaultNetworkPolicy: &containerservice.NetworkPoliciesArgs{
/// 					Egress:  pulumi.String(containerservice.PolicyRuleAllowAll),
/// 					Ingress: pulumi.String(containerservice.PolicyRuleAllowSameNamespace),
/// 				},
/// 				DefaultResourceQuota: &containerservice.ResourceQuotaArgs{
/// 					CpuLimit:      pulumi.String("3m"),
/// 					CpuRequest:    pulumi.String("3m"),
/// 					MemoryLimit:   pulumi.String("5Gi"),
/// 					MemoryRequest: pulumi.String("5Gi"),
/// 				},
/// 				DeletePolicy: pulumi.String(containerservice.DeletePolicyKeep),
/// 				Labels: pulumi.StringMap{
/// 					"kubernetes.io/metadata.name": pulumi.String("true"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			Tags: pulumi.StringMap{
/// 				"tagKey1": pulumi.String("tagValue1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.containerservice.ManagedNamespace;
/// import com.pulumi.azurenative.containerservice.ManagedNamespaceArgs;
/// import com.pulumi.azurenative.containerservice.inputs.NamespacePropertiesArgs;
/// import com.pulumi.azurenative.containerservice.inputs.NetworkPoliciesArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ResourceQuotaArgs;
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
///         var managedNamespace = new ManagedNamespace("managedNamespace", ManagedNamespaceArgs.builder()
///             .managedNamespaceName("namespace1")
///             .properties(NamespacePropertiesArgs.builder()
///                 .adoptionPolicy("IfIdentical")
///                 .annotations(Map.of("annatationKey", "annatationValue"))
///                 .defaultNetworkPolicy(NetworkPoliciesArgs.builder()
///                     .egress("AllowAll")
///                     .ingress("AllowSameNamespace")
///                     .build())
///                 .defaultResourceQuota(ResourceQuotaArgs.builder()
///                     .cpuLimit("3m")
///                     .cpuRequest("3m")
///                     .memoryLimit("5Gi")
///                     .memoryRequest("5Gi")
///                     .build())
///                 .deletePolicy("Keep")
///                 .labels(Map.of("kubernetes.io/metadata.name", "true"))
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .tags(Map.of("tagKey1", "tagValue1"))
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
/// const managedNamespace = new azure_native.containerservice.ManagedNamespace("managedNamespace", {
///     managedNamespaceName: "namespace1",
///     properties: {
///         adoptionPolicy: azure_native.containerservice.AdoptionPolicy.IfIdentical,
///         annotations: {
///             annatationKey: "annatationValue",
///         },
///         defaultNetworkPolicy: {
///             egress: azure_native.containerservice.PolicyRule.AllowAll,
///             ingress: azure_native.containerservice.PolicyRule.AllowSameNamespace,
///         },
///         defaultResourceQuota: {
///             cpuLimit: "3m",
///             cpuRequest: "3m",
///             memoryLimit: "5Gi",
///             memoryRequest: "5Gi",
///         },
///         deletePolicy: azure_native.containerservice.DeletePolicy.Keep,
///         labels: {
///             "kubernetes.io/metadata.name": "true",
///         },
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     tags: {
///         tagKey1: "tagValue1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_namespace = azure_native.containerservice.ManagedNamespace("managedNamespace",
///     managed_namespace_name="namespace1",
///     properties={
///         "adoption_policy": azure_native.containerservice.AdoptionPolicy.IF_IDENTICAL,
///         "annotations": {
///             "annatationKey": "annatationValue",
///         },
///         "default_network_policy": {
///             "egress": azure_native.containerservice.PolicyRule.ALLOW_ALL,
///             "ingress": azure_native.containerservice.PolicyRule.ALLOW_SAME_NAMESPACE,
///         },
///         "default_resource_quota": {
///             "cpu_limit": "3m",
///             "cpu_request": "3m",
///             "memory_limit": "5Gi",
///             "memory_request": "5Gi",
///         },
///         "delete_policy": azure_native.containerservice.DeletePolicy.KEEP,
///         "labels": {
///             "kubernetes.io/metadata.name": "true",
///         },
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     tags={
///         "tagKey1": "tagValue1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedNamespace:
///     type: azure-native:containerservice:ManagedNamespace
///     properties:
///       managedNamespaceName: namespace1
///       properties:
///         adoptionPolicy: IfIdentical
///         annotations:
///           annatationKey: annatationValue
///         defaultNetworkPolicy:
///           egress: AllowAll
///           ingress: AllowSameNamespace
///         defaultResourceQuota:
///           cpuLimit: 3m
///           cpuRequest: 3m
///           memoryLimit: 5Gi
///           memoryRequest: 5Gi
///         deletePolicy: Keep
///         labels:
///           kubernetes.io/metadata.name: 'true'
///       resourceGroupName: rg1
///       resourceName: clustername1
///       tags:
///         tagKey1: tagValue1
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
/// $ pulumi import azure-native:containerservice:ManagedNamespace namespace1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/managedNamespaces/{managedNamespaceName}
/// ```
class ManagedNamespace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Unique read-only string used to implement optimistic concurrency. The eTag value will change when the resource is updated. Specify an if-match or if-none-match header with the eTag value for a subsequent request to enable optimistic concurrency per the normal eTag convention.
  late final pulumi.Output<String> eTag;
  /// The location of the namespace.
  late final pulumi.Output<String?> location;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String> name;
  /// Properties of a namespace.
  late final pulumi.Output<NamespacePropertiesResponse> properties;
  /// The system metadata relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tags to be persisted on the managed cluster namespace.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedNamespace]. {@macro pulumi_containerservice_managed_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedNamespace(
    String name, {
    ManagedNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerservice:ManagedNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NamespacePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamespacePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
