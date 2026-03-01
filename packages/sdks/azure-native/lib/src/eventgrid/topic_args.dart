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
  final pulumi.Input<String>? dataResidencyBoundary;
  /// This boolean is used to enable or disable local auth. Default value is false. When the property is set to true, only AAD token will be used to authenticate if user is allowed to publish to the topic.
  final pulumi.Input<bool>? disableLocalAuth;
  /// Event Type Information for the user topic. This information is provided by the publisher and can be used by the
  /// subscriber to view different types of events that are published.
  final pulumi.Input<EventTypeInfo>? eventTypeInfo;
  /// Identity information for the resource.
  final pulumi.Input<IdentityInfo>? identity;
  /// This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  final pulumi.Input<List<InboundIpRule>>? inboundIpRules;
  /// This determines the format that Event Grid should expect for incoming events published to the topic.
  final pulumi.Input<String>? inputSchema;
  /// This enables publishing using custom event schemas. An InputSchemaMapping can be specified to map various properties of a source schema to various required properties of the EventGridEvent schema.
  final pulumi.Input<JsonInputSchemaMapping>? inputSchemaMapping;
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// Minimum TLS version of the publisher allowed to publish to this topic
  final pulumi.Input<String>? minimumTlsVersionAllowed;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  /// You can further restrict to specific IPs by configuring <seealso cref="P:Microsoft.Azure.Events.ResourceProvider.Common.Contracts.TopicProperties.InboundIpRules" />
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the topic.
  final pulumi.Input<String>? topicName;

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
    pulumi.Output<String>? dataResidencyBoundary,
    pulumi.Output<bool>? disableLocalAuth,
    pulumi.Output<EventTypeInfo>? eventTypeInfo,
    pulumi.Output<IdentityInfo>? identity,
    pulumi.Output<List<InboundIpRule>>? inboundIpRules,
    pulumi.Output<String>? inputSchema,
    pulumi.Output<JsonInputSchemaMapping>? inputSchemaMapping,
    pulumi.Output<String>? location,
    pulumi.Output<String>? minimumTlsVersionAllowed,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? topicName,
  }) :
      dataResidencyBoundary = pulumi.Input.asOptionalInput<String>(dataResidencyBoundary),
      disableLocalAuth = pulumi.Input.asOptionalInput<bool>(disableLocalAuth),
      eventTypeInfo = pulumi.Input.asOptionalInput<EventTypeInfo>(eventTypeInfo),
      identity = pulumi.Input.asOptionalInput<IdentityInfo>(identity),
      inboundIpRules = pulumi.Input.asOptionalInput<List<InboundIpRule>>(inboundIpRules),
      inputSchema = pulumi.Input.asOptionalInput<String>(inputSchema),
      inputSchemaMapping = pulumi.Input.asOptionalInput<JsonInputSchemaMapping>(inputSchemaMapping),
      location = pulumi.Input.asOptionalInput<String>(location),
      minimumTlsVersionAllowed = pulumi.Input.asOptionalInput<String>(minimumTlsVersionAllowed),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      topicName = pulumi.Input.asOptionalInput<String>(topicName);

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
      dataResidencyBoundary: map['dataResidencyBoundary'] == null ? null : pulumi.Output.create<String>(map['dataResidencyBoundary'] as String),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : pulumi.Output.create<bool>(map['disableLocalAuth'] as bool),
      eventTypeInfo: map['eventTypeInfo'] == null ? null : pulumi.Output.create<EventTypeInfo>(EventTypeInfo.fromMap((map['eventTypeInfo'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<IdentityInfo>(IdentityInfo.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      inboundIpRules: map['inboundIpRules'] == null ? null : pulumi.Output.create<List<InboundIpRule>>(pulumi.Input.decodeList<InboundIpRule>(map['inboundIpRules'], (value) => InboundIpRule.fromMap((value as Map).cast<String, dynamic>()))),
      inputSchema: map['inputSchema'] == null ? null : pulumi.Output.create<String>(map['inputSchema'] as String),
      inputSchemaMapping: map['inputSchemaMapping'] == null ? null : pulumi.Output.create<JsonInputSchemaMapping>(JsonInputSchemaMapping.fromMap((map['inputSchemaMapping'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      minimumTlsVersionAllowed: map['minimumTlsVersionAllowed'] == null ? null : pulumi.Output.create<String>(map['minimumTlsVersionAllowed'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      topicName: map['topicName'] == null ? null : pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

