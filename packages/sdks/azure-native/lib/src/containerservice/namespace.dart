import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';
import 'namespace_properties_namespace_response.dart';
import 'system_data_response.dart';

/// Namespace managed by ARM.
///
/// Uses Azure REST API version 2025-02-02-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create/Update Namespace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @namespace = new AzureNative.ContainerService.Namespace("namespace", new()
///     {
///         NamespaceName = "namespace1",
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
/// 		_, err := containerservice.NewNamespace(ctx, "namespace", &containerservice.NamespaceArgs{
/// 			NamespaceName: pulumi.String("namespace1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_namespace" "namespace" {
///   namespace_name = "namespace1"
///   properties = {
///     adoption_policy = "IfIdentical"
///     annotations = {
///       "annatationKey" = "annatationValue"
///     }
///     default_network_policy = {
///       egress  = "AllowAll"
///       ingress = "AllowSameNamespace"
///     }
///     default_resource_quota = {
///       cpu_limit      = "3m"
///       cpu_request    = "3m"
///       memory_limit   = "5Gi"
///       memory_request = "5Gi"
///     }
///     delete_policy = "Keep"
///     labels = {
///       "kubernetes.io/metadata.name" = "true"
///     }
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   tags = {
///     "tagKey1" = "tagValue1"
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
/// import com.pulumi.azurenative.containerservice.Namespace;
/// import com.pulumi.azurenative.containerservice.NamespaceArgs;
/// import com.pulumi.azurenative.containerservice.inputs.NamespacePropertiesArgs;
/// import com.pulumi.azurenative.containerservice.inputs.NetworkPoliciesArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ResourceQuotaArgs;
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
///         var namespace = new Namespace("namespace", NamespaceArgs.builder()
///             .namespaceName("namespace1")
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
/// const namespace = new azure_native.containerservice.Namespace("namespace", {
///     namespaceName: "namespace1",
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
/// namespace = azure_native.containerservice.Namespace("namespace",
///     namespace_name="namespace1",
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
///   namespace:
///     type: azure-native:containerservice:Namespace
///     properties:
///       namespaceName: namespace1
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
/// $ pulumi import azure-native:containerservice:Namespace namespace1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/namespaces/{namespaceName}
/// ```
class Namespace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Unique read-only string used to implement optimistic concurrency. The eTag value will change when the resource is updated. Specify an if-match or if-none-match header with the eTag value for a subsequent request to enable optimistic concurrency per the normal etag convention.
  late final pulumi.Output<String> eTag;
  /// The location of the namespace.
  late final pulumi.Output<String?> location;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String> name;
  /// Properties of a namespace.
  late final pulumi.Output<NamespacePropertiesNamespaceResponse> properties;
  /// The system metadata relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tags to be persisted on the managed cluster namespace.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_containerservice_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerservice:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NamespacePropertiesNamespaceResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamespacePropertiesNamespaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Namespace] resource.
  Namespace.reference(String urn)
    : super(
        'azure-native:containerservice:Namespace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NamespacePropertiesNamespaceResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamespacePropertiesNamespaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
