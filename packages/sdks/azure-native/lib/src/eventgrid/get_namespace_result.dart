// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_info_response.dart';
import 'inbound_ip_rule_response.dart';
import 'namespace_sku_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';
import 'topic_spaces_configuration_response.dart';
import 'topics_configuration_response.dart';

/// Result data returned by getNamespace.
class GetNamespaceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified identifier of the resource.
  final String id;
  /// Identity information for the Namespace resource.
  final IdentityInfoResponse? identity;
  /// This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  final List<InboundIpRuleResponse>? inboundIpRules;
  /// This is an optional property and it allows the user to specify if the namespace resource supports zone-redundancy capability or not. If this
  /// property is not specified explicitly by the user, its default value depends on the following conditions:
  /// a. For Availability Zones enabled regions - The default property value would be true.
  /// b. For non-Availability Zones enabled regions - The default property value would be false.
  /// Once specified, this property cannot be updated.
  final bool? isZoneRedundant;
  /// Location of the resource.
  final String location;
  /// Minimum TLS version of the publisher allowed to publish to this namespace. Only TLS version 1.2 is supported.
  final String? minimumTlsVersionAllowed;
  /// Name of the resource.
  final String name;
  /// List of private endpoint connections.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// Provisioning state of the namespace resource.
  final String provisioningState;
  /// This determines if traffic is allowed over public network. By default it is enabled.
  /// You can further restrict to specific IPs by configuring <seealso cref="P:Microsoft.Azure.Events.ResourceProvider.Common.Contracts.PubSub.NamespaceProperties.InboundIpRules" />
  final String? publicNetworkAccess;
  /// Represents available Sku pricing tiers.
  final NamespaceSkuResponse? sku;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;
  /// Tags of the resource.
  final Map<String, String>? tags;
  /// Topic spaces configuration information for the namespace resource
  final TopicSpacesConfigurationResponse? topicSpacesConfiguration;
  /// Topics configuration information for the namespace resource
  final TopicsConfigurationResponse? topicsConfiguration;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetNamespaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified identifier of the resource.
  /// [identity] Identity information for the Namespace resource.
  /// [inboundIpRules] This can be used to restrict traffic from specific IPs instead of all IPs. Note: These are considered only if PublicNetworkAccess is enabled.
  /// [isZoneRedundant] This is an optional property and it allows the user to specify if the namespace resource supports zone-redundancy capability or not. If this
  /// [location] Location of the resource.
  /// [minimumTlsVersionAllowed] Minimum TLS version of the publisher allowed to publish to this namespace. Only TLS version 1.2 is supported.
  /// [name] Name of the resource.
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [provisioningState] Provisioning state of the namespace resource.
  /// [publicNetworkAccess] This determines if traffic is allowed over public network. By default it is enabled.
  /// [sku] Represents available Sku pricing tiers.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [tags] Tags of the resource.
  /// [topicSpacesConfiguration] Topic spaces configuration information for the namespace resource
  /// [topicsConfiguration] Topics configuration information for the namespace resource
  /// [type] Type of the resource.
  GetNamespaceResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.inboundIpRules,
    this.isZoneRedundant,
    required this.location,
    this.minimumTlsVersionAllowed,
    required this.name,
    this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    this.sku,
    required this.systemData,
    this.tags,
    this.topicSpacesConfiguration,
    this.topicsConfiguration,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'inboundIpRules': ?inboundIpRules == null ? null : pulumi.Input.encodeList<InboundIpRuleResponse, Map<String, dynamic>>(inboundIpRules!, (value) => value.toMap()),
      'isZoneRedundant': ?isZoneRedundant,
      'location': location,
      'minimumTlsVersionAllowed': ?minimumTlsVersionAllowed,
      'name': name,
      'privateEndpointConnections': ?privateEndpointConnections == null ? null : pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'sku': ?sku == null ? null : sku!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'topicSpacesConfiguration': ?topicSpacesConfiguration == null ? null : topicSpacesConfiguration!.toMap(),
      'topicsConfiguration': ?topicsConfiguration == null ? null : topicsConfiguration!.toMap(),
      'type': type,
    };
  }

  factory GetNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityInfoResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      inboundIpRules: map['inboundIpRules'] == null ? null : pulumi.Input.decodeList<InboundIpRuleResponse>(map['inboundIpRules']!, (value) => InboundIpRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      isZoneRedundant: map['isZoneRedundant'] == null ? null : map['isZoneRedundant']! as bool,
      location: map['location'] as String,
      minimumTlsVersionAllowed: map['minimumTlsVersionAllowed'] == null ? null : map['minimumTlsVersionAllowed']! as String,
      name: map['name'] as String,
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess']! as String,
      sku: map['sku'] == null ? null : NamespaceSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      topicSpacesConfiguration: map['topicSpacesConfiguration'] == null ? null : TopicSpacesConfigurationResponse.fromMap((map['topicSpacesConfiguration']! as Map).cast<String, dynamic>()),
      topicsConfiguration: map['topicsConfiguration'] == null ? null : TopicsConfigurationResponse.fromMap((map['topicsConfiguration']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

