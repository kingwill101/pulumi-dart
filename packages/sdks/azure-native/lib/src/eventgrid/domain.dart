import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'event_type_info_response.dart';
import 'identity_info_response.dart';
import 'json_input_schema_mapping_response.dart';
import 'system_data_response.dart';

/// EventGrid Domain.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2022-06-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Domains_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var domain = new AzureNative.EventGrid.Domain("domain", new()
///     {
///         DomainName = "exampledomain1",
///         InboundIpRules = new[]
///         {
///             new AzureNative.EventGrid.Inputs.InboundIpRuleArgs
///             {
///                 Action = AzureNative.EventGrid.IpActionType.Allow,
///                 IpMask = "12.18.30.15",
///             },
///             new AzureNative.EventGrid.Inputs.InboundIpRuleArgs
///             {
///                 Action = AzureNative.EventGrid.IpActionType.Allow,
///                 IpMask = "12.18.176.1",
///             },
///         },
///         Location = "westus2",
///         PublicNetworkAccess = AzureNative.EventGrid.PublicNetworkAccess.Enabled,
///         ResourceGroupName = "examplerg",
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
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
/// 		_, err := eventgrid.NewDomain(ctx, "domain", &eventgrid.DomainArgs{
/// 			DomainName: pulumi.String("exampledomain1"),
/// 			InboundIpRules: eventgrid.InboundIpRuleArray{
/// 				&eventgrid.InboundIpRuleArgs{
/// 					Action: pulumi.String(eventgrid.IpActionTypeAllow),
/// 					IpMask: pulumi.String("12.18.30.15"),
/// 				},
/// 				&eventgrid.InboundIpRuleArgs{
/// 					Action: pulumi.String(eventgrid.IpActionTypeAllow),
/// 					IpMask: pulumi.String("12.18.176.1"),
/// 				},
/// 			},
/// 			Location:            pulumi.String("westus2"),
/// 			PublicNetworkAccess: pulumi.String(eventgrid.PublicNetworkAccessEnabled),
/// 			ResourceGroupName:   pulumi.String("examplerg"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
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
/// import com.pulumi.azurenative.eventgrid.Domain;
/// import com.pulumi.azurenative.eventgrid.DomainArgs;
/// import com.pulumi.azurenative.eventgrid.inputs.InboundIpRuleArgs;
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
///         var domain = new Domain("domain", DomainArgs.builder()
///             .domainName("exampledomain1")
///             .inboundIpRules(
///                 InboundIpRuleArgs.builder()
///                     .action("Allow")
///                     .ipMask("12.18.30.15")
///                     .build(),
///                 InboundIpRuleArgs.builder()
///                     .action("Allow")
///                     .ipMask("12.18.176.1")
///                     .build())
///             .location("westus2")
///             .publicNetworkAccess("Enabled")
///             .resourceGroupName("examplerg")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
///             ))
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
/// const domain = new azure_native.eventgrid.Domain("domain", {
///     domainName: "exampledomain1",
///     inboundIpRules: [
///         {
///             action: azure_native.eventgrid.IpActionType.Allow,
///             ipMask: "12.18.30.15",
///         },
///         {
///             action: azure_native.eventgrid.IpActionType.Allow,
///             ipMask: "12.18.176.1",
///         },
///     ],
///     location: "westus2",
///     publicNetworkAccess: azure_native.eventgrid.PublicNetworkAccess.Enabled,
///     resourceGroupName: "examplerg",
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// domain = azure_native.eventgrid.Domain("domain",
///     domain_name="exampledomain1",
///     inbound_ip_rules=[
///         {
///             "action": azure_native.eventgrid.IpActionType.ALLOW,
///             "ip_mask": "12.18.30.15",
///         },
///         {
///             "action": azure_native.eventgrid.IpActionType.ALLOW,
///             "ip_mask": "12.18.176.1",
///         },
///     ],
///     location="westus2",
///     public_network_access=azure_native.eventgrid.PublicNetworkAccess.ENABLED,
///     resource_group_name="examplerg",
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   domain:
///     type: azure-native:eventgrid:Domain
///     properties:
///       domainName: exampledomain1
///       inboundIpRules:
///         - action: Allow
///           ipMask: 12.18.30.15
///         - action: Allow
///           ipMask: 12.18.176.1
///       location: westus2
///       publicNetworkAccess: Enabled
///       resourceGroupName: examplerg
///       tags:
///         tag1: value1
///         tag2: value2
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
/// $ pulumi import azure-native:eventgrid:Domain exampledomain1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/domains/{domainName}
/// ```
class Domain extends pulumi.CustomResource {
  /// This Boolean is used to specify the creation mechanism for 'all' the Event Grid Domain Topics associated with this Event Grid Domain resource.
  /// In this context, creation of domain topic can be auto-managed (when true) or self-managed (when false). The default value for this property is true.
  /// When this property is null or set to true, Event Grid is responsible of automatically creating the domain topic when the first event subscription is
  /// created at the scope of the domain topic. If this property is set to false, then creating the first event subscription will require creating a domain topic
  /// by the user. The self-management mode can be used if the user wants full control of when the domain topic is created, while auto-managed mode provides the
  /// flexibility to perform less operations and manage fewer resources by the user. Also, note that in auto-managed creation mode, user is allowed to create the
  /// domain topic on demand if needed.
  late final pulumi.Output<bool?> autoCreateTopicWithFirstSubscription;

  /// This Boolean is used to specify the deletion mechanism for 'all' the Event Grid Domain Topics associated with this Event Grid Domain resource.
  /// In this context, deletion of domain topic can be auto-managed (when true) or self-managed (when false). The default value for this property is true.
  /// When this property is set to true, Event Grid is responsible of automatically deleting the domain topic when the last event subscription at the scope
  /// of the domain topic is deleted. If this property is set to false, then the user needs to manually delete the domain topic when it is no longer needed
  /// (e.g., when last event subscription is deleted and the resource needs to be cleaned up). The self-management mode can be used if the user wants full
  /// control of when the domain topic needs to be deleted, while auto-managed mode provides the flexibility to perform less operations and manage fewer
  /// resources by the user.
  late final pulumi.Output<bool?> autoDeleteTopicWithLastSubscription;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Data Residency Boundary of the resource.
  late final pulumi.Output<String?> dataResidencyBoundary;

  /// This boolean is used to enable or disable local auth. Default value is false. When the property is set to true, only AAD token will be used to authenticate if user is allowed to publish to the domain.
  late final pulumi.Output<bool?> disableLocalAuth;

  /// Endpoint for the Event Grid Domain Resource which is used for publishing the events.
  late final pulumi.Output<String> endpoint;

  /// Event Type Information for the domain. This information is provided by the publisher and can be used by the
  /// subscriber to view different types of events that are published.
  late final pulumi.Output<EventTypeInfoResponse?> eventTypeInfo;

  /// Identity information for the Event Grid Domain resource.
  late final pulumi.Output<IdentityInfoResponse?> identity;

  /// This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  late final pulumi.Output<List<Map<String, dynamic>>?> inboundIpRules;

  /// This determines the format that Event Grid should expect for incoming events published to the Event Grid Domain Resource.
  late final pulumi.Output<String?> inputSchema;

  /// Information about the InputSchemaMapping which specified the info about mapping event payload.
  late final pulumi.Output<JsonInputSchemaMappingResponse?> inputSchemaMapping;

  /// Location of the resource.
  late final pulumi.Output<String> location;

  /// Metric resource id for the Event Grid Domain Resource.
  late final pulumi.Output<String> metricResourceId;

  /// Minimum TLS version of the publisher allowed to publish to this domain
  late final pulumi.Output<String?> minimumTlsVersionAllowed;

  /// Name of the resource.
  late final pulumi.Output<String> name;

  /// List of private endpoint connections.
  late final pulumi.Output<List<Map<String, dynamic>>>
  privateEndpointConnections;

  /// Provisioning state of the Event Grid Domain Resource.
  late final pulumi.Output<String> provisioningState;

  /// This determines if traffic is allowed over public network. By default it is enabled.
  /// You can further restrict to specific IPs by configuring &lt;seealso cref="P:Microsoft.Azure.Events.ResourceProvider.Common.Contracts.DomainProperties.InboundIpRules" /&gt;
  late final pulumi.Output<String?> publicNetworkAccess;

  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_eventgrid_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(String name, {DomainArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:eventgrid:Domain',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    autoCreateTopicWithFirstSubscription = registerOutput<bool?>(
      'autoCreateTopicWithFirstSubscription',
    );
    autoDeleteTopicWithLastSubscription = registerOutput<bool?>(
      'autoDeleteTopicWithLastSubscription',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataResidencyBoundary = registerOutput<String?>('dataResidencyBoundary');
    disableLocalAuth = registerOutput<bool?>('disableLocalAuth');
    endpoint = registerOutput<String>('endpoint');
    eventTypeInfo = registerOutput<EventTypeInfoResponse?>(
      'eventTypeInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventTypeInfoResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    identity = registerOutput<IdentityInfoResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return IdentityInfoResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    inboundIpRules = registerOutput<List<Map<String, dynamic>>?>(
      'inboundIpRules',
    );
    inputSchema = registerOutput<String?>('inputSchema');
    inputSchemaMapping = registerOutput<JsonInputSchemaMappingResponse?>(
      'inputSchemaMapping',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JsonInputSchemaMappingResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    metricResourceId = registerOutput<String>('metricResourceId');
    minimumTlsVersionAllowed = registerOutput<String?>(
      'minimumTlsVersionAllowed',
    );
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>(
      'privateEndpointConnections',
    );
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
