import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_info_response.dart';
import 'inbound_ip_rule_response.dart';
import 'namespace_args.dart';
import 'namespace_sku_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';
import 'topic_spaces_configuration_response.dart';
import 'topics_configuration_response.dart';

/// Namespace resource.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview, 2025-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Namespaces_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @namespace = new AzureNative.EventGrid.Namespace("namespace", new()
///     {
///         Location = "westus",
///         NamespaceName = "exampleNamespaceName1",
///         ResourceGroupName = "examplerg",
///         Tags =
///         {
///             { "tag1", "value11" },
///             { "tag2", "value22" },
///         },
///         TopicSpacesConfiguration = new AzureNative.EventGrid.Inputs.TopicSpacesConfigurationArgs
///         {
///             RouteTopicResourceId = "/subscriptions/8f6b6269-84f2-4d09-9e31-1127efcd1e40/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic1",
///             State = AzureNative.EventGrid.TopicSpacesConfigurationState.Enabled,
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
/// 	eventgrid "github.com/pulumi/pulumi-azure-native-sdk/eventgrid/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventgrid.NewNamespace(ctx, "namespace", &eventgrid.NamespaceArgs{
/// 			Location:          pulumi.String("westus"),
/// 			NamespaceName:     pulumi.String("exampleNamespaceName1"),
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value11"),
/// 				"tag2": pulumi.String("value22"),
/// 			},
/// 			TopicSpacesConfiguration: &eventgrid.TopicSpacesConfigurationArgs{
/// 				RouteTopicResourceId: pulumi.String("/subscriptions/8f6b6269-84f2-4d09-9e31-1127efcd1e40/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic1"),
/// 				State:                pulumi.String(eventgrid.TopicSpacesConfigurationStateEnabled),
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
/// resource "azure-native_eventgrid_namespace" "namespace" {
///   location            = "westus"
///   namespace_name      = "exampleNamespaceName1"
///   resource_group_name = "examplerg"
///   tags = {
///     "tag1" = "value11"
///     "tag2" = "value22"
///   }
///   topic_spaces_configuration = {
///     route_topic_resource_id = "/subscriptions/8f6b6269-84f2-4d09-9e31-1127efcd1e40/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic1"
///     state                   = "Enabled"
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
/// import com.pulumi.azurenative.eventgrid.Namespace;
/// import com.pulumi.azurenative.eventgrid.NamespaceArgs;
/// import com.pulumi.azurenative.eventgrid.inputs.TopicSpacesConfigurationArgs;
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
///             .location("westus")
///             .namespaceName("exampleNamespaceName1")
///             .resourceGroupName("examplerg")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value11"),
///                 Map.entry("tag2", "value22")
///             ))
///             .topicSpacesConfiguration(TopicSpacesConfigurationArgs.builder()
///                 .routeTopicResourceId("/subscriptions/8f6b6269-84f2-4d09-9e31-1127efcd1e40/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic1")
///                 .state("Enabled")
///                 .build())
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
/// const namespace = new azure_native.eventgrid.Namespace("namespace", {
///     location: "westus",
///     namespaceName: "exampleNamespaceName1",
///     resourceGroupName: "examplerg",
///     tags: {
///         tag1: "value11",
///         tag2: "value22",
///     },
///     topicSpacesConfiguration: {
///         routeTopicResourceId: "/subscriptions/8f6b6269-84f2-4d09-9e31-1127efcd1e40/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic1",
///         state: azure_native.eventgrid.TopicSpacesConfigurationState.Enabled,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// namespace = azure_native.eventgrid.Namespace("namespace",
///     location="westus",
///     namespace_name="exampleNamespaceName1",
///     resource_group_name="examplerg",
///     tags={
///         "tag1": "value11",
///         "tag2": "value22",
///     },
///     topic_spaces_configuration={
///         "route_topic_resource_id": "/subscriptions/8f6b6269-84f2-4d09-9e31-1127efcd1e40/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic1",
///         "state": azure_native.eventgrid.TopicSpacesConfigurationState.ENABLED,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   namespace:
///     type: azure-native:eventgrid:Namespace
///     properties:
///       location: westus
///       namespaceName: exampleNamespaceName1
///       resourceGroupName: examplerg
///       tags:
///         tag1: value11
///         tag2: value22
///       topicSpacesConfiguration:
///         routeTopicResourceId: /subscriptions/8f6b6269-84f2-4d09-9e31-1127efcd1e40/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic1
///         state: Enabled
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
/// $ pulumi import azure-native:eventgrid:Namespace exampleNamespaceName1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/namespaces/{namespaceName}
/// ```
class Namespace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Identity information for the Namespace resource.
  late final pulumi.Output<IdentityInfoResponse?> identity;
  /// This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  late final pulumi.Output<List<InboundIpRuleResponse>?> inboundIpRules;
  /// This is an optional property and it allows the user to specify if the namespace resource supports zone-redundancy capability or not. If this
  /// property is not specified explicitly by the user, its default value depends on the following conditions:
  /// a. For Availability Zones enabled regions - The default property value would be true.
  /// b. For non-Availability Zones enabled regions - The default property value would be false.
  /// Once specified, this property cannot be updated.
  late final pulumi.Output<bool?> isZoneRedundant;
  /// Location of the resource.
  late final pulumi.Output<String> location;
  /// Minimum TLS version of the publisher allowed to publish to this namespace. Only TLS version 1.2 is supported.
  late final pulumi.Output<String?> minimumTlsVersionAllowed;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// List of private endpoint connections.
  late final pulumi.Output<List<PrivateEndpointConnectionResponse>?> privateEndpointConnections;
  /// Provisioning state of the namespace resource.
  late final pulumi.Output<String> provisioningState;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  /// You can further restrict to specific IPs by configuring &lt;seealso cref="P:Microsoft.Azure.Events.ResourceProvider.Common.Contracts.PubSub.NamespaceProperties.InboundIpRules" /&gt;
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Represents available Sku pricing tiers.
  late final pulumi.Output<NamespaceSkuResponse?> sku;
  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Topic spaces configuration information for the namespace resource
  late final pulumi.Output<TopicSpacesConfigurationResponse?> topicSpacesConfiguration;
  /// Topics configuration information for the namespace resource
  late final pulumi.Output<TopicsConfigurationResponse?> topicsConfiguration;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_eventgrid_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventgrid:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityInfoResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inboundIpRules = registerOutput<List<InboundIpRuleResponse>?>('inboundIpRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InboundIpRuleResponse>(guardedValue, (value) => InboundIpRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    isZoneRedundant = registerOutput<bool?>('isZoneRedundant');
    location = registerOutput<String>('location');
    minimumTlsVersionAllowed = registerOutput<String?>('minimumTlsVersionAllowed');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>?>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    sku = registerOutput<NamespaceSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamespaceSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    topicSpacesConfiguration = registerOutput<TopicSpacesConfigurationResponse?>('topicSpacesConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicSpacesConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    topicsConfiguration = registerOutput<TopicsConfigurationResponse?>('topicsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Namespace] resource.
  Namespace.reference(String urn)
    : super(
        'azure-native:eventgrid:Namespace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityInfoResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inboundIpRules = registerOutput<List<InboundIpRuleResponse>?>('inboundIpRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InboundIpRuleResponse>(guardedValue, (value) => InboundIpRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    isZoneRedundant = registerOutput<bool?>('isZoneRedundant');
    location = registerOutput<String>('location');
    minimumTlsVersionAllowed = registerOutput<String?>('minimumTlsVersionAllowed');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>?>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    sku = registerOutput<NamespaceSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamespaceSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    topicSpacesConfiguration = registerOutput<TopicSpacesConfigurationResponse?>('topicSpacesConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicSpacesConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    topicsConfiguration = registerOutput<TopicsConfigurationResponse?>('topicsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
