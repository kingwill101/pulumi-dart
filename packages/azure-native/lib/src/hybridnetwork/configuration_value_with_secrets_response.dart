// ignore_for_file: unused_element, unnecessary_cast

import 'open_deployment_resource_reference_response.dart';

/// The ConfigurationValue with secrets.
class ConfigurationValueWithSecretsResponse {
  /// The configuration group schema name.
  final String configurationGroupSchemaName;
  /// The location of the configuration group schema offering.
  final String configurationGroupSchemaOfferingLocation;
  /// The configuration group schema resource reference.
  final OpenDeploymentResourceReferenceResponse? configurationGroupSchemaResourceReference;
  /// The secret type which indicates if secret or not.
  /// Expected value is 'Secret'.
  final String configurationType;
  /// The provisioning state of the site resource.
  final String provisioningState;
  /// The publisher name for the configuration group schema.
  final String publisherName;
  /// The scope of the publisher.
  final String publisherScope;

  /// Creates a new [ConfigurationValueWithSecretsResponse].
  /// [configurationGroupSchemaName] The configuration group schema name.
  /// [configurationGroupSchemaOfferingLocation] The location of the configuration group schema offering.
  /// [configurationGroupSchemaResourceReference] The configuration group schema resource reference.
  /// [configurationType] The secret type which indicates if secret or not.
  /// [provisioningState] The provisioning state of the site resource.
  /// [publisherName] The publisher name for the configuration group schema.
  /// [publisherScope] The scope of the publisher.
  ConfigurationValueWithSecretsResponse({
    required this.configurationGroupSchemaName,
    required this.configurationGroupSchemaOfferingLocation,
    this.configurationGroupSchemaResourceReference,
    required this.configurationType,
    required this.provisioningState,
    required this.publisherName,
    required this.publisherScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationGroupSchemaName': configurationGroupSchemaName,
      'configurationGroupSchemaOfferingLocation': configurationGroupSchemaOfferingLocation,
      'configurationGroupSchemaResourceReference': ?configurationGroupSchemaResourceReference == null ? null : configurationGroupSchemaResourceReference!.toMap(),
      'configurationType': configurationType,
      'provisioningState': provisioningState,
      'publisherName': publisherName,
      'publisherScope': publisherScope,
    };
  }

  factory ConfigurationValueWithSecretsResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationValueWithSecretsResponse(
      configurationGroupSchemaName: map['configurationGroupSchemaName'] as String,
      configurationGroupSchemaOfferingLocation: map['configurationGroupSchemaOfferingLocation'] as String,
      configurationGroupSchemaResourceReference: map['configurationGroupSchemaResourceReference'] == null ? null : OpenDeploymentResourceReferenceResponse.fromMap((map['configurationGroupSchemaResourceReference'] as Map).cast<String, dynamic>()),
      configurationType: map['configurationType'] as String,
      provisioningState: map['provisioningState'] as String,
      publisherName: map['publisherName'] as String,
      publisherScope: map['publisherScope'] as String,
    );
  }
}

