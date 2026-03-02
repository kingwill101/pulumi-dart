// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_configuration_response.dart';
import 'routing_enrichments_response.dart';
import 'routing_identity_info_response.dart';

/// Properties of the Topic Spaces Configuration.
class TopicSpacesConfigurationResponse {
  /// List of custom domain configurations for the namespace.
  final pulumi.Input<List<CustomDomainConfigurationResponse>>? customDomains;
  /// The endpoint for the topic spaces configuration. This is a read-only property.
  final pulumi.Input<String> hostname;
  /// The maximum number of sessions per authentication name. The property default value is 1.
  /// Min allowed value is 1 and max allowed value is 100.
  final pulumi.Input<int>? maximumClientSessionsPerAuthenticationName;
  /// The maximum session expiry in hours. The property default value is 1 hour.
  /// Min allowed value is 1 hour and max allowed value is 8 hours.
  final pulumi.Input<int>? maximumSessionExpiryInHours;
  /// Fully qualified Azure Resource Id for the Event Grid Topic to which events will be routed to from TopicSpaces under a namespace.
  /// This property should be in the following format '/subscriptions/{subId}/resourcegroups/{resourceGroupName}/providers/microsoft.EventGrid/topics/{topicName}'.
  /// This topic should reside in the same region where namespace is located.
  final pulumi.Input<String>? routeTopicResourceId;
  /// Routing enrichments for topic spaces configuration
  final pulumi.Input<RoutingEnrichmentsResponse>? routingEnrichments;
  /// Routing identity info for topic spaces configuration.
  final pulumi.Input<RoutingIdentityInfoResponse>? routingIdentityInfo;
  /// Indicate if Topic Spaces Configuration is enabled for the namespace. Default is Disabled.
  final pulumi.Input<String>? state;

  /// Creates a new [TopicSpacesConfigurationResponse].
  /// [customDomains] List of custom domain configurations for the namespace.
  /// [hostname] The endpoint for the topic spaces configuration. This is a read-only property.
  /// [maximumClientSessionsPerAuthenticationName] The maximum number of sessions per authentication name. The property default value is 1.
  /// [maximumSessionExpiryInHours] The maximum session expiry in hours. The property default value is 1 hour.
  /// [routeTopicResourceId] Fully qualified Azure Resource Id for the Event Grid Topic to which events will be routed to from TopicSpaces under a namespace.
  /// [routingEnrichments] Routing enrichments for topic spaces configuration
  /// [routingIdentityInfo] Routing identity info for topic spaces configuration.
  /// [state] Indicate if Topic Spaces Configuration is enabled for the namespace. Default is Disabled.
  TopicSpacesConfigurationResponse({
    this.customDomains,
    required this.hostname,
    this.maximumClientSessionsPerAuthenticationName,
    this.maximumSessionExpiryInHours,
    this.routeTopicResourceId,
    this.routingEnrichments,
    this.routingIdentityInfo,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomains': ?pulumi.Input.mapOptionalInputValue<List<CustomDomainConfigurationResponse>, List<Map<String, dynamic>>>(customDomains, (value) => pulumi.Input.encodeList<CustomDomainConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostname': hostname,
      'maximumClientSessionsPerAuthenticationName': ?maximumClientSessionsPerAuthenticationName,
      'maximumSessionExpiryInHours': ?maximumSessionExpiryInHours,
      'routeTopicResourceId': ?routeTopicResourceId,
      'routingEnrichments': ?pulumi.Input.mapOptionalInputValue<RoutingEnrichmentsResponse, Map<String, dynamic>>(routingEnrichments, (value) => value.toMap()),
      'routingIdentityInfo': ?pulumi.Input.mapOptionalInputValue<RoutingIdentityInfoResponse, Map<String, dynamic>>(routingIdentityInfo, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory TopicSpacesConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TopicSpacesConfigurationResponse(
      customDomains: map['customDomains'] == null ? null : (pulumi.Input.decodeList<CustomDomainConfigurationResponse>(map['customDomains']!, (value) => CustomDomainConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostname: (map['hostname'] as String).input(),
      maximumClientSessionsPerAuthenticationName: map['maximumClientSessionsPerAuthenticationName'] == null ? null : (map['maximumClientSessionsPerAuthenticationName']! as int).input(),
      maximumSessionExpiryInHours: map['maximumSessionExpiryInHours'] == null ? null : (map['maximumSessionExpiryInHours']! as int).input(),
      routeTopicResourceId: map['routeTopicResourceId'] == null ? null : (map['routeTopicResourceId']! as String).input(),
      routingEnrichments: map['routingEnrichments'] == null ? null : (RoutingEnrichmentsResponse.fromMap((map['routingEnrichments']! as Map).cast<String, dynamic>())).input(),
      routingIdentityInfo: map['routingIdentityInfo'] == null ? null : (RoutingIdentityInfoResponse.fromMap((map['routingIdentityInfo']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

