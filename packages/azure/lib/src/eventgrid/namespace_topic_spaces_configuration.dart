// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_topic_spaces_configuration_dynamic_routing_enrichment.dart';
import 'namespace_topic_spaces_configuration_static_routing_enrichment.dart';

class NamespaceTopicSpacesConfiguration {
  /// Specifies a list of alternative sources for the client authentication name from the client certificate. Possible values are `ClientCertificateDns`, `ClientCertificateEmail`, `ClientCertificateIp`, `ClientCertificateSubject` and `ClientCertificateUri`.
  final List<String>? alternativeAuthenticationNameSources;
  /// One or more `dynamic_routing_enrichment` blocks as defined below.
  final List<NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment>? dynamicRoutingEnrichments;
  /// Specifies the maximum number of client sessions per authentication name. Valid values can be between `1` and `100`.
  final int? maximumClientSessionsPerAuthenticationName;
  /// Specifies the maximum session expiry interval allowed for all MQTT clients connecting to the Event Grid namespace. Valid values can be between `1` and `8`.
  final int? maximumSessionExpiryInHours;
  /// Specifies the Event Grid topic resource ID to route messages to.
  final String? routeTopicId;
  /// One or more `static_routing_enrichment` blocks as defined below.
  final List<NamespaceTopicSpacesConfigurationStaticRoutingEnrichment>? staticRoutingEnrichments;

  /// Creates a new [NamespaceTopicSpacesConfiguration].
  /// [alternativeAuthenticationNameSources] Specifies a list of alternative sources for the client authentication name from the client certificate. Possible values are `ClientCertificateDns`, `ClientCertificateEmail`, `ClientCertificateIp`, `ClientCertificateSubject` and `ClientCertificateUri`.
  /// [dynamicRoutingEnrichments] One or more `dynamic_routing_enrichment` blocks as defined below.
  /// [maximumClientSessionsPerAuthenticationName] Specifies the maximum number of client sessions per authentication name. Valid values can be between `1` and `100`.
  /// [maximumSessionExpiryInHours] Specifies the maximum session expiry interval allowed for all MQTT clients connecting to the Event Grid namespace. Valid values can be between `1` and `8`.
  /// [routeTopicId] Specifies the Event Grid topic resource ID to route messages to.
  /// [staticRoutingEnrichments] One or more `static_routing_enrichment` blocks as defined below.
  NamespaceTopicSpacesConfiguration({
    this.alternativeAuthenticationNameSources,
    this.dynamicRoutingEnrichments,
    this.maximumClientSessionsPerAuthenticationName,
    this.maximumSessionExpiryInHours,
    this.routeTopicId,
    this.staticRoutingEnrichments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternativeAuthenticationNameSources': ?alternativeAuthenticationNameSources,
      'dynamicRoutingEnrichments': ?dynamicRoutingEnrichments == null ? null : pulumi.Input.encodeList<NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment, Map<String, dynamic>>(dynamicRoutingEnrichments!, (value) => value.toMap()),
      'maximumClientSessionsPerAuthenticationName': ?maximumClientSessionsPerAuthenticationName,
      'maximumSessionExpiryInHours': ?maximumSessionExpiryInHours,
      'routeTopicId': ?routeTopicId,
      'staticRoutingEnrichments': ?staticRoutingEnrichments == null ? null : pulumi.Input.encodeList<NamespaceTopicSpacesConfigurationStaticRoutingEnrichment, Map<String, dynamic>>(staticRoutingEnrichments!, (value) => value.toMap()),
    };
  }

  factory NamespaceTopicSpacesConfiguration.fromMap(Map<String, dynamic> map) {
    return NamespaceTopicSpacesConfiguration(
      alternativeAuthenticationNameSources: map['alternativeAuthenticationNameSources'] == null ? null : (map['alternativeAuthenticationNameSources'] as List).cast<String>(),
      dynamicRoutingEnrichments: map['dynamicRoutingEnrichments'] == null ? null : pulumi.Input.decodeList<NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment>(map['dynamicRoutingEnrichments'], (value) => NamespaceTopicSpacesConfigurationDynamicRoutingEnrichment.fromMap((value as Map).cast<String, dynamic>())),
      maximumClientSessionsPerAuthenticationName: map['maximumClientSessionsPerAuthenticationName'] == null ? null : map['maximumClientSessionsPerAuthenticationName'] as int,
      maximumSessionExpiryInHours: map['maximumSessionExpiryInHours'] == null ? null : map['maximumSessionExpiryInHours'] as int,
      routeTopicId: map['routeTopicId'] == null ? null : map['routeTopicId'] as String,
      staticRoutingEnrichments: map['staticRoutingEnrichments'] == null ? null : pulumi.Input.decodeList<NamespaceTopicSpacesConfigurationStaticRoutingEnrichment>(map['staticRoutingEnrichments'], (value) => NamespaceTopicSpacesConfigurationStaticRoutingEnrichment.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

