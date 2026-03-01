// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_grid_topic_identity.dart';
import 'event_grid_topic_inbound_ip_rule.dart';
import 'event_grid_topic_input_mapping_default_values.dart';
import 'event_grid_topic_input_mapping_fields.dart';

/// {@template pulumi_eventhub_event_grid_topic_event_grid_topic_args_doc}
/// The set of arguments for EventGridTopic.
/// {@endtemplate}
/// {@macro pulumi_eventhub_event_grid_topic_event_grid_topic_args_doc}
class EventGridTopicArgs {
  /// An `identity` block as defined below.
  final pulumi.Input<EventGridTopicIdentity>? identity;
  /// One or more `inbound_ip_rule` blocks as defined below.
  final pulumi.Input<List<EventGridTopicInboundIpRule>>? inboundIpRules;
  /// A `input_mapping_default_values` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<EventGridTopicInputMappingDefaultValues>? inputMappingDefaultValues;
  /// A `input_mapping_fields` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<EventGridTopicInputMappingFields>? inputMappingFields;
  /// Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? inputSchema;
  /// Whether local authentication methods is enabled for the EventGrid Topic. Defaults to `true`.
  final pulumi.Input<bool>? localAuthEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the EventGrid Topic resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether or not public network access is allowed for this server. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which the EventGrid Topic exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EventGridTopicArgs].
  /// [identity] An `identity` block as defined below.
  /// [inboundIpRules] One or more `inbound_ip_rule` blocks as defined below.
  /// [inputMappingDefaultValues] A `input_mapping_default_values` block as defined below. Changing this forces a new resource to be created.
  /// [inputMappingFields] A `input_mapping_fields` block as defined below. Changing this forces a new resource to be created.
  /// [inputSchema] Specifies the schema in which incoming events will be published to this domain. Allowed values are `CloudEventSchemaV1_0`, `CustomEventSchema`, or `EventGridSchema`. Defaults to `EventGridSchema`. Changing this forces a new resource to be created.
  /// [localAuthEnabled] Whether local authentication methods is enabled for the EventGrid Topic. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the EventGrid Topic resource. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether or not public network access is allowed for this server. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which the EventGrid Topic exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  EventGridTopicArgs({
    EventGridTopicIdentity? identity,
    List<EventGridTopicInboundIpRule>? inboundIpRules,
    EventGridTopicInputMappingDefaultValues? inputMappingDefaultValues,
    EventGridTopicInputMappingFields? inputMappingFields,
    String? inputSchema,
    bool? localAuthEnabled,
    String? location,
    String? name,
    bool? publicNetworkAccessEnabled,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<EventGridTopicIdentity>(identity),
      inboundIpRules = pulumi.Input.asOptionalInput<List<EventGridTopicInboundIpRule>>(inboundIpRules),
      inputMappingDefaultValues = pulumi.Input.asOptionalInput<EventGridTopicInputMappingDefaultValues>(inputMappingDefaultValues),
      inputMappingFields = pulumi.Input.asOptionalInput<EventGridTopicInputMappingFields>(inputMappingFields),
      inputSchema = pulumi.Input.asOptionalInput<String>(inputSchema),
      localAuthEnabled = pulumi.Input.asOptionalInput<bool>(localAuthEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<EventGridTopicIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inboundIpRules': ?pulumi.Input.mapOptionalInputValue<List<EventGridTopicInboundIpRule>, List<Map<String, dynamic>>>(inboundIpRules, (value) => pulumi.Input.encodeList<EventGridTopicInboundIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputMappingDefaultValues': ?pulumi.Input.mapOptionalInputValue<EventGridTopicInputMappingDefaultValues, Map<String, dynamic>>(inputMappingDefaultValues, (value) => value.toMap()),
      'inputMappingFields': ?pulumi.Input.mapOptionalInputValue<EventGridTopicInputMappingFields, Map<String, dynamic>>(inputMappingFields, (value) => value.toMap()),
      'inputSchema': ?inputSchema,
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EventGridTopicArgs.fromMap(Map<String, dynamic> map) {
    return EventGridTopicArgs(
      identity: map['identity'] == null ? null : EventGridTopicIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      inboundIpRules: map['inboundIpRules'] == null ? null : pulumi.Input.decodeList<EventGridTopicInboundIpRule>(map['inboundIpRules'], (value) => EventGridTopicInboundIpRule.fromMap((value as Map).cast<String, dynamic>())),
      inputMappingDefaultValues: map['inputMappingDefaultValues'] == null ? null : EventGridTopicInputMappingDefaultValues.fromMap((map['inputMappingDefaultValues'] as Map).cast<String, dynamic>()),
      inputMappingFields: map['inputMappingFields'] == null ? null : EventGridTopicInputMappingFields.fromMap((map['inputMappingFields'] as Map).cast<String, dynamic>()),
      inputSchema: map['inputSchema'] == null ? null : map['inputSchema'] as String,
      localAuthEnabled: map['localAuthEnabled'] == null ? null : map['localAuthEnabled'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : map['publicNetworkAccessEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

