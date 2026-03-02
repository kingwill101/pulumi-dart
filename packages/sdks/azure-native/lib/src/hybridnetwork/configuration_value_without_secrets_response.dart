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
  ConfigurationValueWithoutSecretsResponse({
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
      configurationGroupSchemaName: (map['configurationGroupSchemaName'] as String).input(),
      configurationGroupSchemaOfferingLocation: (map['configurationGroupSchemaOfferingLocation'] as String).input(),
      configurationGroupSchemaResourceReference: map['configurationGroupSchemaResourceReference'] == null ? null : (OpenDeploymentResourceReferenceResponse.fromMap((map['configurationGroupSchemaResourceReference']! as Map).cast<String, dynamic>())).input(),
      configurationType: (map['configurationType'] as String).input(),
      configurationValue: map['configurationValue'] == null ? null : (map['configurationValue']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publisherName: (map['publisherName'] as String).input(),
      publisherScope: (map['publisherScope'] as String).input(),
    );
  }
}

