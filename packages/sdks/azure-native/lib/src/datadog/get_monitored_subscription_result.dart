// ignore_for_file: unused_element, unnecessary_cast

import 'subscription_list_response.dart';

/// Result data returned by getMonitoredSubscription.
class GetMonitoredSubscriptionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The id of the monitored subscription resource.
  final String id;
  /// Name of the monitored subscription resource.
  final String name;
  /// The request to update subscriptions needed to be monitored by the Datadog monitor resource.
  final SubscriptionListResponse properties;
  /// The type of the monitored subscription resource.
  final String type;

  /// Creates a new [GetMonitoredSubscriptionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The id of the monitored subscription resource.
  /// [name] Name of the monitored subscription resource.
  /// [properties] The request to update subscriptions needed to be monitored by the Datadog monitor resource.
  /// [type] The type of the monitored subscription resource.
  const GetMonitoredSubscriptionResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetMonitoredSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetMonitoredSubscriptionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: SubscriptionListResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
