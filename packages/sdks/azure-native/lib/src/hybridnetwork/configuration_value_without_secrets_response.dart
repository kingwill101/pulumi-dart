// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_deployment_resource_reference_response.dart';

/// The ConfigurationValue with no secrets.
class ConfigurationValueWithoutSecretsResponse {
  /// The configuration group schema name.
  final pulumi.Input<String> configurationGroupSchemaName;
  /// The location of the configuration group schema offering.
  final pulumi.Input<String> configurationGroupSchemaOfferingLocation;
  /// The configuration group schema resource reference.
  final pulumi.Input<OpenDeploymentResourceReferenceResponse>? configurationGroupSchemaResourceReference;
  /// The secret type which indicates if secret or not.
  /// Expected value is 'Open'.
  final pulumi.Input<String> configurationType;
  /// Name and value pairs that define the configuration value. It can be a well formed escaped JSON string.
  final pulumi.Input<String>? configurationValue;
  /// The provisioning state of the site resource.
  final pulumi.Input<String> provisioningState;
  /// The publisher name for the configuration group schema.
  final pulumi.Input<String> publisherName;
  /// The scope of the publisher.
  final pulumi.Input<String> publisherScope;

  /// Creates a new [ConfigurationValueWithoutSecretsResponse].
  /// [configurationGroupSchemaName] The configuration group schema name.
  /// [configurationGroupSchemaOfferingLocation] The location of the configuration group schema offering.
  /// [configurationGroupSchemaResourceReference] The configuration group schema resource reference.
  /// [configurationType] The secret type which indicates if secret or not.
  /// [configurationValue] Name and value pairs that define the configuration value. It can be a well formed escaped JSON string.
  /// [provisioningState] The provisioning state of the site resource.
  /// [publisherName] The publisher name for the configuration group schema.
  /// [publisherScope] The scope of the publisher.
  const ConfigurationValueWithoutSecretsResponse({
    required this.configurationGroupSchemaName,
    required this.configurationGroupSchemaOfferingLocation,
    this.configurationGroupSchemaResourceReference,
    required this.configurationType,
    this.configurationValue,
    required this.provisioningState,
    required this.publisherName,
    required this.publisherScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationGroupSchemaName': configurationGroupSchemaName,
      'configurationGroupSchemaOfferingLocation': configurationGroupSchemaOfferingLocation,
      'configurationGroupSchemaResourceReference': ?pulumi.Input.mapOptionalInputValue<OpenDeploymentResourceReferenceResponse, Map<String, dynamic>>(configurationGroupSchemaResourceReference, (value) => value.toMap()),
      'configurationType': configurationType,
      'configurationValue': ?configurationValue,
      'provisioningState': provisioningState,
      'publisherName': publisherName,
      'publisherScope': publisherScope,
    };
  }

  factory ConfigurationValueWithoutSecretsResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationValueWithoutSecretsResponse(
      configurationGroupSchemaName: pulumi.Input.fromValue(map['configurationGroupSchemaName'] as String),
      configurationGroupSchemaOfferingLocation: pulumi.Input.fromValue(map['configurationGroupSchemaOfferingLocation'] as String),
      configurationGroupSchemaResourceReference: (() { final guardedValue = map['configurationGroupSchemaResourceReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenDeploymentResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configurationType: pulumi.Input.fromValue(map['configurationType'] as String),
      configurationValue: (() { final guardedValue = map['configurationValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publisherName: pulumi.Input.fromValue(map['publisherName'] as String),
      publisherScope: pulumi.Input.fromValue(map['publisherScope'] as String),
    );
  }
}

