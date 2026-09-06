// ignore_for_file: unused_element, unnecessary_cast

import 'subscription_list_response.dart';

/// Result data returned by getMonitoredSubscription.
class GetMonitoredSubscriptionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The id of the monitored subscription resource.
  final String? id;
  /// Name of the monitored subscription resource.
  final String? name;
  /// The request to update subscriptions needed to be monitored by the Elastic monitor resource.
  final SubscriptionListResponse? properties;
  /// The type of the monitored subscription resource.
  final String? type;

  /// Creates a new [GetMonitoredSubscriptionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The id of the monitored subscription resource.
  /// [name] Name of the monitored subscription resource.
  /// [properties] The request to update subscriptions needed to be monitored by the Elastic monitor resource.
  /// [type] The type of the monitored subscription resource.
  const GetMonitoredSubscriptionResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetMonitoredSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetMonitoredSubscriptionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return SubscriptionListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
