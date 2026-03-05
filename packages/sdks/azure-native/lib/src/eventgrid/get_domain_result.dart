// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_type_info_response.dart';
import 'identity_info_response.dart';
import 'inbound_ip_rule_response.dart';
import 'json_input_schema_mapping_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDomain.
class GetDomainResult {
  /// This Boolean is used to specify the creation mechanism for 'all' the Event Grid Domain Topics associated with this Event Grid Domain resource.
  /// In this context, creation of domain topic can be auto-managed (when true) or self-managed (when false). The default value for this property is true.
  /// When this property is null or set to true, Event Grid is responsible of automatically creating the domain topic when the first event subscription is
  /// created at the scope of the domain topic. If this property is set to false, then creating the first event subscription will require creating a domain topic
  /// by the user. The self-management mode can be used if the user wants full control of when the domain topic is created, while auto-managed mode provides the
  /// flexibility to perform less operations and manage fewer resources by the user. Also, note that in auto-managed creation mode, user is allowed to create the
  /// domain topic on demand if needed.
  final bool? autoCreateTopicWithFirstSubscription;
  /// This Boolean is used to specify the deletion mechanism for 'all' the Event Grid Domain Topics associated with this Event Grid Domain resource.
  /// In this context, deletion of domain topic can be auto-managed (when true) or self-managed (when false). The default value for this property is true.
  /// When this property is set to true, Event Grid is responsible of automatically deleting the domain topic when the last event subscription at the scope
  /// of the domain topic is deleted. If this property is set to false, then the user needs to manually delete the domain topic when it is no longer needed
  /// (e.g., when last event subscription is deleted and the resource needs to be cleaned up). The self-management mode can be used if the user wants full
  /// control of when the domain topic needs to be deleted, while auto-managed mode provides the flexibility to perform less operations and manage fewer
  /// resources by the user.
  final bool? autoDeleteTopicWithLastSubscription;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Data Residency Boundary of the resource.
  final String? dataResidencyBoundary;
  /// This boolean is used to enable or disable local auth. Default value is false. When the property is set to true, only AAD token will be used to authenticate if user is allowed to publish to the domain.
  final bool? disableLocalAuth;
  /// Endpoint for the Event Grid Domain Resource which is used for publishing the events.
  final String endpoint;
  /// Event Type Information for the domain. This information is provided by the publisher and can be used by the
  /// subscriber to view different types of events that are published.
  final EventTypeInfoResponse? eventTypeInfo;
  /// Fully qualified identifier of the resource.
  final String id;
  /// Identity information for the Event Grid Domain resource.
  final IdentityInfoResponse? identity;
  /// This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  final List<InboundIpRuleResponse>? inboundIpRules;
  /// This determines the format that Event Grid should expect for incoming events published to the Event Grid Domain Resource.
  final String? inputSchema;
  /// Information about the InputSchemaMapping which specified the info about mapping event payload.
  final JsonInputSchemaMappingResponse? inputSchemaMapping;
  /// Location of the resource.
  final String location;
  /// Metric resource id for the Event Grid Domain Resource.
  final String metricResourceId;
  /// Minimum TLS version of the publisher allowed to publish to this domain
  final String? minimumTlsVersionAllowed;
  /// Name of the resource.
  final String name;
  /// List of private endpoint connections.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Provisioning state of the Event Grid Domain Resource.
  final String provisioningState;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  /// You can further restrict to specific IPs by configuring &lt;seealso cref="P:Microsoft.Azure.Events.ResourceProvider.Common.Contracts.DomainProperties.InboundIpRules" /&gt;
  final String? publicNetworkAccess;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;
  /// Tags of the resource.
  final Map<String, String>? tags;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetDomainResult].
  /// [autoCreateTopicWithFirstSubscription] This Boolean is used to specify the creation mechanism for 'all' the Event Grid Domain Topics associated with this Event Grid Domain resource.
  /// [autoDeleteTopicWithLastSubscription] This Boolean is used to specify the deletion mechanism for 'all' the Event Grid Domain Topics associated with this Event Grid Domain resource.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataResidencyBoundary] Data Residency Boundary of the resource.
  /// [disableLocalAuth] This boolean is used to enable or disable local auth. Default value is false. When the property is set to true, only AAD token will be used to authenticate if user is allowed to publish to the domain.
  /// [endpoint] Endpoint for the Event Grid Domain Resource which is used for publishing the events.
  /// [eventTypeInfo] Event Type Information for the domain. This information is provided by the publisher and can be used by the
  /// [id] Fully qualified identifier of the resource.
  /// [identity] Identity information for the Event Grid Domain resource.
  /// [inboundIpRules] This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  /// [inputSchema] This determines the format that Event Grid should expect for incoming events published to the Event Grid Domain Resource.
  /// [inputSchemaMapping] Information about the InputSchemaMapping which specified the info about mapping event payload.
  /// [location] Location of the resource.
  /// [metricResourceId] Metric resource id for the Event Grid Domain Resource.
  /// [minimumTlsVersionAllowed] Minimum TLS version of the publisher allowed to publish to this domain
  /// [name] Name of the resource.
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [provisioningState] Provisioning state of the Event Grid Domain Resource.
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [tags] Tags of the resource.
  /// [type] Type of the resource.
  GetDomainResult({
    this.autoCreateTopicWithFirstSubscription,
    this.autoDeleteTopicWithLastSubscription,
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
      'autoCreateTopicWithFirstSubscription': ?autoCreateTopicWithFirstSubscription,
      'autoDeleteTopicWithLastSubscription': ?autoDeleteTopicWithLastSubscription,
      'azureApiVersion': azureApiVersion,
      'dataResidencyBoundary': ?dataResidencyBoundary,
      'disableLocalAuth': ?disableLocalAuth,
      'endpoint': endpoint,
      'eventTypeInfo': ?eventTypeInfo?.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'inboundIpRules': ?(() { final guardedValue = inboundIpRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<InboundIpRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'inputSchema': ?inputSchema,
      'inputSchemaMapping': ?inputSchemaMapping?.toMap(),
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

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      autoCreateTopicWithFirstSubscription: (() { final guardedValue = map['autoCreateTopicWithFirstSubscription']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      autoDeleteTopicWithLastSubscription: (() { final guardedValue = map['autoDeleteTopicWithLastSubscription']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      dataResidencyBoundary: (() { final guardedValue = map['dataResidencyBoundary']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      endpoint: map['endpoint'] as String,
      eventTypeInfo: (() { final guardedValue = map['eventTypeInfo']; if (guardedValue == null) return null; return EventTypeInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      inboundIpRules: (() { final guardedValue = map['inboundIpRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InboundIpRuleResponse>(guardedValue, (value) => InboundIpRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      inputSchema: (() { final guardedValue = map['inputSchema']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inputSchemaMapping: (() { final guardedValue = map['inputSchemaMapping']; if (guardedValue == null) return null; return JsonInputSchemaMappingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      metricResourceId: map['metricResourceId'] as String,
      minimumTlsVersionAllowed: (() { final guardedValue = map['minimumTlsVersionAllowed']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

