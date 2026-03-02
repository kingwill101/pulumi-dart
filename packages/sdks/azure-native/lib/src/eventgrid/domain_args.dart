// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_type_info.dart';
import 'identity_info.dart';
import 'inbound_ip_rule.dart';
import 'json_input_schema_mapping.dart';

/// {@template pulumi_eventgrid_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_domain_args_doc}
class DomainArgs {
  /// This Boolean is used to specify the creation mechanism for 'all' the Event Grid Domain Topics associated with this Event Grid Domain resource.
  /// In this context, creation of domain topic can be auto-managed (when true) or self-managed (when false). The default value for this property is true.
  /// When this property is null or set to true, Event Grid is responsible of automatically creating the domain topic when the first event subscription is
  /// created at the scope of the domain topic. If this property is set to false, then creating the first event subscription will require creating a domain topic
  /// by the user. The self-management mode can be used if the user wants full control of when the domain topic is created, while auto-managed mode provides the
  /// flexibility to perform less operations and manage fewer resources by the user. Also, note that in auto-managed creation mode, user is allowed to create the
  /// domain topic on demand if needed.
  final pulumi.Input<bool>? autoCreateTopicWithFirstSubscription;
  /// This Boolean is used to specify the deletion mechanism for 'all' the Event Grid Domain Topics associated with this Event Grid Domain resource.
  /// In this context, deletion of domain topic can be auto-managed (when true) or self-managed (when false). The default value for this property is true.
  /// When this property is set to true, Event Grid is responsible of automatically deleting the domain topic when the last event subscription at the scope
  /// of the domain topic is deleted. If this property is set to false, then the user needs to manually delete the domain topic when it is no longer needed
  /// (e.g., when last event subscription is deleted and the resource needs to be cleaned up). The self-management mode can be used if the user wants full
  /// control of when the domain topic needs to be deleted, while auto-managed mode provides the flexibility to perform less operations and manage fewer
  /// resources by the user.
  final pulumi.Input<bool>? autoDeleteTopicWithLastSubscription;
  /// Data Residency Boundary of the resource.
  final pulumi.Input<String>? dataResidencyBoundary;
  /// This boolean is used to enable or disable local auth. Default value is false. When the property is set to true, only AAD token will be used to authenticate if user is allowed to publish to the domain.
  final pulumi.Input<bool>? disableLocalAuth;
  /// Name of the domain.
  final pulumi.Input<String>? domainName;
  /// Event Type Information for the domain. This information is provided by the publisher and can be used by the
  /// subscriber to view different types of events that are published.
  final pulumi.Input<EventTypeInfo>? eventTypeInfo;
  /// Identity information for the Event Grid Domain resource.
  final pulumi.Input<IdentityInfo>? identity;
  /// This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  final pulumi.Input<List<InboundIpRule>>? inboundIpRules;
  /// This determines the format that Event Grid should expect for incoming events published to the Event Grid Domain Resource.
  final pulumi.Input<String>? inputSchema;
  /// Information about the InputSchemaMapping which specified the info about mapping event payload.
  final pulumi.Input<JsonInputSchemaMapping>? inputSchemaMapping;
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// Minimum TLS version of the publisher allowed to publish to this domain
  final pulumi.Input<String>? minimumTlsVersionAllowed;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  /// You can further restrict to specific IPs by configuring <seealso cref="P:Microsoft.Azure.Events.ResourceProvider.Common.Contracts.DomainProperties.InboundIpRules" />
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DomainArgs].
  /// [autoCreateTopicWithFirstSubscription] This Boolean is used to specify the creation mechanism for 'all' the Event Grid Domain Topics associated with this Event Grid Domain resource.
  /// [autoDeleteTopicWithLastSubscription] This Boolean is used to specify the deletion mechanism for 'all' the Event Grid Domain Topics associated with this Event Grid Domain resource.
  /// [dataResidencyBoundary] Data Residency Boundary of the resource.
  /// [disableLocalAuth] This boolean is used to enable or disable local auth. Default value is false. When the property is set to true, only AAD token will be used to authenticate if user is allowed to publish to the domain.
  /// [domainName] Name of the domain.
  /// [eventTypeInfo] Event Type Information for the domain. This information is provided by the publisher and can be used by the
  /// [identity] Identity information for the Event Grid Domain resource.
  /// [inboundIpRules] This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  /// [inputSchema] This determines the format that Event Grid should expect for incoming events published to the Event Grid Domain Resource.
  /// [inputSchemaMapping] Information about the InputSchemaMapping which specified the info about mapping event payload.
  /// [location] Location of the resource.
  /// [minimumTlsVersionAllowed] Minimum TLS version of the publisher allowed to publish to this domain
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [tags] Tags of the resource.
  DomainArgs({
    this.autoCreateTopicWithFirstSubscription,
    this.autoDeleteTopicWithLastSubscription,
    this.dataResidencyBoundary,
    this.disableLocalAuth,
    this.domainName,
    this.eventTypeInfo,
    this.identity,
    this.inboundIpRules,
    this.inputSchema,
    this.inputSchemaMapping,
    this.location,
    this.minimumTlsVersionAllowed,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreateTopicWithFirstSubscription': ?autoCreateTopicWithFirstSubscription,
      'autoDeleteTopicWithLastSubscription': ?autoDeleteTopicWithLastSubscription,
      'dataResidencyBoundary': ?dataResidencyBoundary,
      'disableLocalAuth': ?disableLocalAuth,
      'domainName': ?domainName,
      'eventTypeInfo': ?pulumi.Input.mapOptionalInputValue<EventTypeInfo, Map<String, dynamic>>(eventTypeInfo, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityInfo, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inboundIpRules': ?pulumi.Input.mapOptionalInputValue<List<InboundIpRule>, List<Map<String, dynamic>>>(inboundIpRules, (value) => pulumi.Input.encodeList<InboundIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputSchema': ?inputSchema,
      'inputSchemaMapping': ?pulumi.Input.mapOptionalInputValue<JsonInputSchemaMapping, Map<String, dynamic>>(inputSchemaMapping, (value) => value.toMap()),
      'location': ?location,
      'minimumTlsVersionAllowed': ?minimumTlsVersionAllowed,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      autoCreateTopicWithFirstSubscription: map['autoCreateTopicWithFirstSubscription'] == null ? null : (map['autoCreateTopicWithFirstSubscription'] as bool).input(),
      autoDeleteTopicWithLastSubscription: map['autoDeleteTopicWithLastSubscription'] == null ? null : (map['autoDeleteTopicWithLastSubscription'] as bool).input(),
      dataResidencyBoundary: map['dataResidencyBoundary'] == null ? null : (map['dataResidencyBoundary'] as String).input(),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : (map['disableLocalAuth'] as bool).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      eventTypeInfo: map['eventTypeInfo'] == null ? null : (EventTypeInfo.fromMap((map['eventTypeInfo'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (IdentityInfo.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      inboundIpRules: map['inboundIpRules'] == null ? null : (pulumi.Input.decodeList<InboundIpRule>(map['inboundIpRules'], (value) => InboundIpRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inputSchema: map['inputSchema'] == null ? null : (map['inputSchema'] as String).input(),
      inputSchemaMapping: map['inputSchemaMapping'] == null ? null : (JsonInputSchemaMapping.fromMap((map['inputSchemaMapping'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      minimumTlsVersionAllowed: map['minimumTlsVersionAllowed'] == null ? null : (map['minimumTlsVersionAllowed'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

