// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_type_info_response.dart';
import 'identity_info_response.dart';
import 'inbound_ip_rule_response.dart';
import 'json_input_schema_mapping_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getTopic.
class GetTopicResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Data Residency Boundary of the resource.
  final String? dataResidencyBoundary;
  /// This boolean is used to enable or disable local auth. Default value is false. When the property is set to true, only AAD token will be used to authenticate if user is allowed to publish to the topic.
  final bool? disableLocalAuth;
  /// Endpoint for the topic.
  final String endpoint;
  /// Event Type Information for the user topic. This information is provided by the publisher and can be used by the
  /// subscriber to view different types of events that are published.
  final EventTypeInfoResponse? eventTypeInfo;
  /// Fully qualified identifier of the resource.
  final String id;
  /// Identity information for the resource.
  final IdentityInfoResponse? identity;
  /// This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  final List<InboundIpRuleResponse>? inboundIpRules;
  /// This determines the format that Event Grid should expect for incoming events published to the topic.
  final String? inputSchema;
  /// This enables publishing using custom event schemas. An InputSchemaMapping can be specified to map various properties of a source schema to various required properties of the EventGridEvent schema.
  final JsonInputSchemaMappingResponse? inputSchemaMapping;
  /// Location of the resource.
  final String location;
  /// Metric resource id for the topic.
  final String metricResourceId;
  /// Minimum TLS version of the publisher allowed to publish to this topic
  final String? minimumTlsVersionAllowed;
  /// Name of the resource.
  final String name;
  /// List of private endpoint connections.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Provisioning state of the topic.
  final String provisioningState;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  /// You can further restrict to specific IPs by configuring <seealso cref="P:Microsoft.Azure.Events.ResourceProvider.Common.Contracts.TopicProperties.InboundIpRules" />
  final String? publicNetworkAccess;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;
  /// Tags of the resource.
  final Map<String, String>? tags;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetTopicResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataResidencyBoundary] Data Residency Boundary of the resource.
  /// [disableLocalAuth] This boolean is used to enable or disable local auth. Default value is false. When the property is set to true, only AAD token will be used to authenticate if user is allowed to publish to the topic.
  /// [endpoint] Endpoint for the topic.
  /// [eventTypeInfo] Event Type Information for the user topic. This information is provided by the publisher and can be used by the
  /// [id] Fully qualified identifier of the resource.
  /// [identity] Identity information for the resource.
  /// [inboundIpRules] This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  /// [inputSchema] This determines the format that Event Grid should expect for incoming events published to the topic.
  /// [inputSchemaMapping] This enables publishing using custom event schemas. An InputSchemaMapping can be specified to map various properties of a source schema to various required properties of the EventGridEvent schema.
  /// [location] Location of the resource.
  /// [metricResourceId] Metric resource id for the topic.
  /// [minimumTlsVersionAllowed] Minimum TLS version of the publisher allowed to publish to this topic
  /// [name] Name of the resource.
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [provisioningState] Provisioning state of the topic.
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [tags] Tags of the resource.
  /// [type] Type of the resource.
  GetTopicResult({
    required this.azureApiVersion,
    this.dataResidencyBoundary,
    this.disableLocalAuth,
    required this.endpoint,
    this.eventTypeInfo,
    required this.id,
    this.identity,
    this.inboundIpRules,
    this.inputSchema,
    this.inputSchemaMapping,
    required this.location,
    required this.metricResourceId,
    this.minimumTlsVersionAllowed,
    required this.name,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataResidencyBoundary': ?dataResidencyBoundary,
      'disableLocalAuth': ?disableLocalAuth,
      'endpoint': endpoint,
      'eventTypeInfo': ?eventTypeInfo == null ? null : eventTypeInfo!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'inboundIpRules': ?inboundIpRules == null ? null : pulumi.Input.encodeList<InboundIpRuleResponse, Map<String, dynamic>>(inboundIpRules!, (value) => value.toMap()),
      'inputSchema': ?inputSchema,
      'inputSchemaMapping': ?inputSchemaMapping == null ? null : inputSchemaMapping!.toMap(),
      'location': location,
      'metricResourceId': metricResourceId,
      'minimumTlsVersionAllowed': ?minimumTlsVersionAllowed,
      'name': name,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetTopicResult.fromMap(Map<String, dynamic> map) {
    return GetTopicResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataResidencyBoundary: map['dataResidencyBoundary'] == null ? null : map['dataResidencyBoundary']! as String,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth']! as bool,
      endpoint: map['endpoint'] as String,
      eventTypeInfo: map['eventTypeInfo'] == null ? null : EventTypeInfoResponse.fromMap((map['eventTypeInfo']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityInfoResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      inboundIpRules: map['inboundIpRules'] == null ? null : pulumi.Input.decodeList<InboundIpRuleResponse>(map['inboundIpRules']!, (value) => InboundIpRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      inputSchema: map['inputSchema'] == null ? null : map['inputSchema']! as String,
      inputSchemaMapping: map['inputSchemaMapping'] == null ? null : JsonInputSchemaMappingResponse.fromMap((map['inputSchemaMapping']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      metricResourceId: map['metricResourceId'] as String,
      minimumTlsVersionAllowed: map['minimumTlsVersionAllowed'] == null ? null : map['minimumTlsVersionAllowed']! as String,
      name: map['name'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

