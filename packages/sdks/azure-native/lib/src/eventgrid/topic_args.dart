// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_type_info.dart';
import 'identity_info.dart';
import 'inbound_ip_rule.dart';
import 'json_input_schema_mapping.dart';

/// {@template pulumi_eventgrid_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_topic_args_doc}
class TopicArgs {
  /// Data Residency Boundary of the resource.
  final pulumi.Input<dynamic>? dataResidencyBoundary;
  /// This boolean is used to enable or disable local auth. Default value is false. When the property is set to true, only AAD token will be used to authenticate if user is allowed to publish to the topic.
  final pulumi.Input<bool?>? disableLocalAuth;
  /// Event Type Information for the user topic. This information is provided by the publisher and can be used by the
  /// subscriber to view different types of events that are published.
  final pulumi.Input<EventTypeInfo?>? eventTypeInfo;
  /// Identity information for the resource.
  final pulumi.Input<IdentityInfo?>? identity;
  /// This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  final pulumi.Input<List<InboundIpRule>?>? inboundIpRules;
  /// This determines the format that Event Grid should expect for incoming events published to the topic.
  final pulumi.Input<dynamic>? inputSchema;
  /// This enables publishing using custom event schemas. An InputSchemaMapping can be specified to map various properties of a source schema to various required properties of the EventGridEvent schema.
  final pulumi.Input<JsonInputSchemaMapping?>? inputSchemaMapping;
  /// Location of the resource.
  final pulumi.Input<String?>? location;
  /// Minimum TLS version of the publisher allowed to publish to this topic
  final pulumi.Input<dynamic>? minimumTlsVersionAllowed;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  /// You can further restrict to specific IPs by configuring &lt;seealso cref="P:Microsoft.Azure.Events.ResourceProvider.Common.Contracts.TopicProperties.InboundIpRules" /&gt;
  final pulumi.Input<dynamic>? publicNetworkAccess;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Tags of the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Name of the topic.
  final pulumi.Input<String?>? topicName;

  /// Creates a new [TopicArgs].
  /// [dataResidencyBoundary] Data Residency Boundary of the resource.
  /// [disableLocalAuth] This boolean is used to enable or disable local auth. Default value is false. When the property is set to true, only AAD token will be used to authenticate if user is allowed to publish to the topic.
  /// [eventTypeInfo] Event Type Information for the user topic. This information is provided by the publisher and can be used by the
  /// [identity] Identity information for the resource.
  /// [inboundIpRules] This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  /// [inputSchema] This determines the format that Event Grid should expect for incoming events published to the topic.
  /// [inputSchemaMapping] This enables publishing using custom event schemas. An InputSchemaMapping can be specified to map various properties of a source schema to various required properties of the EventGridEvent schema.
  /// [location] Location of the resource.
  /// [minimumTlsVersionAllowed] Minimum TLS version of the publisher allowed to publish to this topic
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [tags] Tags of the resource.
  /// [topicName] Name of the topic.
  TopicArgs({
    this.dataResidencyBoundary,
    pulumi.Input<bool?>? disableLocalAuth,
    this.eventTypeInfo,
    this.identity,
    this.inboundIpRules,
    pulumi.Input<dynamic>? inputSchema,
    this.inputSchemaMapping,
    this.location,
    this.minimumTlsVersionAllowed,
    pulumi.Input<dynamic>? publicNetworkAccess,
    required this.resourceGroupName,
    this.tags,
    this.topicName,
  }) : disableLocalAuth = disableLocalAuth ?? pulumi.Input.fromValue(false), inputSchema = inputSchema ?? pulumi.Input.fromValue('EventGridSchema'), publicNetworkAccess = publicNetworkAccess ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataResidencyBoundary': ?dataResidencyBoundary,
      'disableLocalAuth': ?disableLocalAuth,
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
      'topicName': ?topicName,
    };
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      dataResidencyBoundary: (() { final guardedValue = map['dataResidencyBoundary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eventTypeInfo: (() { final guardedValue = map['eventTypeInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventTypeInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inboundIpRules: (() { final guardedValue = map['inboundIpRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InboundIpRule>(guardedValue, (value) => InboundIpRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputSchema: (() { final guardedValue = map['inputSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      inputSchemaMapping: (() { final guardedValue = map['inputSchemaMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JsonInputSchemaMapping.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTlsVersionAllowed: (() { final guardedValue = map['minimumTlsVersionAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      topicName: (() { final guardedValue = map['topicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
