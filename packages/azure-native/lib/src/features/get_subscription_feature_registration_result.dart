// ignore_for_file: unused_element, unnecessary_cast

import 'subscription_feature_registration_response_properties.dart';

/// Result data returned by getSubscriptionFeatureRegistration.
class GetSubscriptionFeatureRegistrationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Azure resource Id.
  final String id;
  /// Azure resource name.
  final String name;
  final SubscriptionFeatureRegistrationResponseProperties properties;
  /// Azure resource type.
  final String type;

  /// Creates a new [GetSubscriptionFeatureRegistrationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Azure resource Id.
  /// [name] Azure resource name.
  /// [properties] Required.
  /// [type] Azure resource type.
  GetSubscriptionFeatureRegistrationResult({
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

  factory GetSubscriptionFeatureRegistrationResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionFeatureRegistrationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: SubscriptionFeatureRegistrationResponseProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

