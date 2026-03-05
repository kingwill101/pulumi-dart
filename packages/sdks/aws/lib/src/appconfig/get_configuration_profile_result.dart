// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_profile_validator.dart';

/// Result data returned by getConfigurationProfile.
class GetConfigurationProfileResult {
  final String applicationId;

  /// ARN of the Configuration Profile.
  final String arn;
  final String configurationProfileId;

  /// Description of the Configuration Profile.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKeyIdentifier;

  /// Location URI of the Configuration Profile.
  final String locationUri;

  /// Name of the Configuration Profile.
  final String name;
  final String region;

  /// ARN of an IAM role with permission to access the configuration at the specified location_uri.
  final String retrievalRoleArn;

  /// Map of tags for the resource.
  final Map<String, String> tags;

  /// Type of validator. Valid values: JSON_SCHEMA and LAMBDA.
  final String type;

  /// Nested list of methods for validating the configuration.
  final List<GetConfigurationProfileValidator> validators;

  /// Creates a new [GetConfigurationProfileResult].
  /// [applicationId] Required.
  /// [arn] ARN of the Configuration Profile.
  /// [configurationProfileId] Required.
  /// [description] Description of the Configuration Profile.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyIdentifier] Required.
  /// [locationUri] Location URI of the Configuration Profile.
  /// [name] Name of the Configuration Profile.
  /// [region] Required.
  /// [retrievalRoleArn] ARN of an IAM role with permission to access the configuration at the specified location_uri.
  /// [tags] Map of tags for the resource.
  /// [type] Type of validator. Valid values: JSON_SCHEMA and LAMBDA.
  /// [validators] Nested list of methods for validating the configuration.
  GetConfigurationProfileResult({
    required this.applicationId,
    required this.arn,
    required this.configurationProfileId,
    required this.description,
    required this.id,
    required this.kmsKeyIdentifier,
    required this.locationUri,
    required this.name,
    required this.region,
    required this.retrievalRoleArn,
    required this.tags,
    required this.type,
    required this.validators,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'arn': arn,
      'configurationProfileId': configurationProfileId,
      'description': description,
      'id': id,
      'kmsKeyIdentifier': kmsKeyIdentifier,
      'locationUri': locationUri,
      'name': name,
      'region': region,
      'retrievalRoleArn': retrievalRoleArn,
      'tags': tags,
      'type': type,
      'validators':
          pulumi.Input.encodeList<
            GetConfigurationProfileValidator,
            Map<String, dynamic>
          >(validators, (value) => value.toMap()),
    };
  }

  factory GetConfigurationProfileResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfileResult(
      applicationId: map['applicationId'] as String,
      arn: map['arn'] as String,
      configurationProfileId: map['configurationProfileId'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      kmsKeyIdentifier: map['kmsKeyIdentifier'] as String,
      locationUri: map['locationUri'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      retrievalRoleArn: map['retrievalRoleArn'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      validators: pulumi.Input.decodeList<GetConfigurationProfileValidator>(
        map['validators']!,
        (value) => GetConfigurationProfileValidator.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
