// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_configuration.dart';
import 'routing_enrichments.dart';
import 'routing_identity_info.dart';

/// Properties of the Topic Spaces Configuration.
class TopicSpacesConfiguration {
  /// List of custom domain configurations for the namespace.
  final pulumi.Input<List<CustomDomainConfiguration>>? customDomains;
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
  final pulumi.Input<RoutingEnrichments>? routingEnrichments;
  /// Routing identity info for topic spaces configuration.
  final pulumi.Input<RoutingIdentityInfo>? routingIdentityInfo;
  /// Indicate if Topic Spaces Configuration is enabled for the namespace. Default is Disabled.
  final pulumi.Input<String>? state;

  /// Creates a new [TopicSpacesConfiguration].
  /// [customDomains] List of custom domain configurations for the namespace.
  /// [maximumClientSessionsPerAuthenticationName] The maximum number of sessions per authentication name. The property default value is 1.
  /// [maximumSessionExpiryInHours] The maximum session expiry in hours. The property default value is 1 hour.
  /// [routeTopicResourceId] Fully qualified Azure Resource Id for the Event Grid Topic to which events will be routed to from TopicSpaces under a namespace.
  /// [routingEnrichments] Routing enrichments for topic spaces configuration
  /// [routingIdentityInfo] Routing identity info for topic spaces configuration.
  /// [state] Indicate if Topic Spaces Configuration is enabled for the namespace. Default is Disabled.
  const TopicSpacesConfiguration({
    this.customDomains,
    this.maximumClientSessionsPerAuthenticationName,
    this.maximumSessionExpiryInHours,
    this.routeTopicResourceId,
    this.routingEnrichments,
    this.routingIdentityInfo,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomains': ?pulumi.Input.mapOptionalInputValue<List<CustomDomainConfiguration>, List<Map<String, dynamic>>>(customDomains, (value) => pulumi.Input.encodeList<CustomDomainConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maximumClientSessionsPerAuthenticationName': ?maximumClientSessionsPerAuthenticationName,
      'maximumSessionExpiryInHours': ?maximumSessionExpiryInHours,
      'routeTopicResourceId': ?routeTopicResourceId,
      'routingEnrichments': ?pulumi.Input.mapOptionalInputValue<RoutingEnrichments, Map<String, dynamic>>(routingEnrichments, (value) => value.toMap()),
      'routingIdentityInfo': ?pulumi.Input.mapOptionalInputValue<RoutingIdentityInfo, Map<String, dynamic>>(routingIdentityInfo, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory TopicSpacesConfiguration.fromMap(Map<String, dynamic> map) {
    return TopicSpacesConfiguration(
      customDomains: (() { final guardedValue = map['customDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomDomainConfiguration>(guardedValue, (value) => CustomDomainConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maximumClientSessionsPerAuthenticationName: (() { final guardedValue = map['maximumClientSessionsPerAuthenticationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maximumSessionExpiryInHours: (() { final guardedValue = map['maximumSessionExpiryInHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      routeTopicResourceId: (() { final guardedValue = map['routeTopicResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingEnrichments: (() { final guardedValue = map['routingEnrichments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingEnrichments.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routingIdentityInfo: (() { final guardedValue = map['routingIdentityInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingIdentityInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

