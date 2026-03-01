// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_ip_rule_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPartnerNamespace.
class GetPartnerNamespaceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// This boolean is used to enable or disable local auth. Default value is false. When the property is set to true, only AAD token will be used to authenticate if user is allowed to publish to the partner namespace.
  final bool? disableLocalAuth;
  /// Endpoint for the partner namespace.
  final String endpoint;
  /// Fully qualified identifier of the resource.
  final String id;
  /// This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  final List<InboundIpRuleResponse>? inboundIpRules;
  /// Location of the resource.
  final String location;
  /// Minimum TLS version of the publisher allowed to publish to this partner namespace
  final String? minimumTlsVersionAllowed;
  /// Name of the resource.
  final String name;
  /// The fully qualified ARM Id of the partner registration that should be associated with this partner namespace. This takes the following format:
  /// /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/partnerRegistrations/{partnerRegistrationName}.
  final String? partnerRegistrationFullyQualifiedId;
  /// This determines if events published to this partner namespace should use the source attribute in the event payload
  /// or use the channel name in the header when matching to the partner topic. If none is specified, source attribute routing will be used to match the partner topic.
  final String? partnerTopicRoutingMode;
  /// List of private endpoint connections.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Provisioning state of the partner namespace.
  final String provisioningState;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  /// You can further restrict to specific IPs by configuring <seealso cref="P:Microsoft.Azure.Events.ResourceProvider.Common.Contracts.PartnerNamespaceProperties.InboundIpRules" />
  final String? publicNetworkAccess;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;
  /// Tags of the resource.
  final Map<String, String>? tags;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetPartnerNamespaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [disableLocalAuth] This boolean is used to enable or disable local auth. Default value is false. When the property is set to true, only AAD token will be used to authenticate if user is allowed to publish to the partner namespace.
  /// [endpoint] Endpoint for the partner namespace.
  /// [id] Fully qualified identifier of the resource.
  /// [inboundIpRules] This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  /// [location] Location of the resource.
  /// [minimumTlsVersionAllowed] Minimum TLS version of the publisher allowed to publish to this partner namespace
  /// [name] Name of the resource.
  /// [partnerRegistrationFullyQualifiedId] The fully qualified ARM Id of the partner registration that should be associated with this partner namespace. This takes the following format:
  /// [partnerTopicRoutingMode] This determines if events published to this partner namespace should use the source attribute in the event payload
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [provisioningState] Provisioning state of the partner namespace.
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [tags] Tags of the resource.
  /// [type] Type of the resource.
  GetPartnerNamespaceResult({
    required this.azureApiVersion,
    this.disableLocalAuth,
    required this.endpoint,
    required this.id,
    this.inboundIpRules,
    required this.location,
    this.minimumTlsVersionAllowed,
    required this.name,
    this.partnerRegistrationFullyQualifiedId,
    this.partnerTopicRoutingMode,
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
      'disableLocalAuth': ?disableLocalAuth,
      'endpoint': endpoint,
      'id': id,
      'inboundIpRules': ?inboundIpRules == null ? null : pulumi.Input.encodeList<InboundIpRuleResponse, Map<String, dynamic>>(inboundIpRules!, (value) => value.toMap()),
      'location': location,
      'minimumTlsVersionAllowed': ?minimumTlsVersionAllowed,
      'name': name,
      'partnerRegistrationFullyQualifiedId': ?partnerRegistrationFullyQualifiedId,
      'partnerTopicRoutingMode': ?partnerTopicRoutingMode,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPartnerNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerNamespaceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth'] as bool,
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      inboundIpRules: map['inboundIpRules'] == null ? null : pulumi.Input.decodeList<InboundIpRuleResponse>(map['inboundIpRules'], (value) => InboundIpRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      minimumTlsVersionAllowed: map['minimumTlsVersionAllowed'] == null ? null : map['minimumTlsVersionAllowed'] as String,
      name: map['name'] as String,
      partnerRegistrationFullyQualifiedId: map['partnerRegistrationFullyQualifiedId'] == null ? null : map['partnerRegistrationFullyQualifiedId'] as String,
      partnerTopicRoutingMode: map['partnerTopicRoutingMode'] == null ? null : map['partnerTopicRoutingMode'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

