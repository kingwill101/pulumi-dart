// ignore_for_file: unused_element, unnecessary_cast

import 'subscription_feature_registration_response_properties.dart';

/// Result data returned by getSubscriptionFeatureRegistration.
class GetSubscriptionFeatureRegistrationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Azure resource Id.
  final String? id;
  /// Azure resource name.
  final String? name;
  final SubscriptionFeatureRegistrationResponseProperties? properties;
  /// Azure resource type.
  final String? type;

  /// Creates a new [GetSubscriptionFeatureRegistrationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Azure resource Id.
  /// [name] Azure resource name.
  /// [properties] Optional.
  /// [type] Azure resource type.
  const GetSubscriptionFeatureRegistrationResult({
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

  factory GetSubscriptionFeatureRegistrationResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionFeatureRegistrationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return SubscriptionFeatureRegistrationResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
