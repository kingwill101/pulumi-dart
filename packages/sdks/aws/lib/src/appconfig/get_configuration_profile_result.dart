// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_profile_validator.dart';

/// Result data returned by getConfigurationProfile.
class GetConfigurationProfileResult {
  final String? applicationId;
  /// ARN of the Configuration Profile.
  final String? arn;
  final String? configurationProfileId;
  /// Description of the Configuration Profile.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// KMS key identifier for encrypting the configuration data.
  final String? kmsKeyIdentifier;
  /// Location URI of the Configuration Profile.
  final String? locationUri;
  /// Name of the Configuration Profile.
  final String? name;
  final String? region;
  /// ARN of an IAM role with permission to access the configuration at the specified location_uri.
  final String? retrievalRoleArn;
  /// Map of tags for the resource.
  final Map<String, String>? tags;
  /// Type of validator. Valid values: JSON_SCHEMA and LAMBDA.
  final String? type;
  /// Nested list of methods for validating the configuration.
  final List<GetConfigurationProfileValidator>? validators;

  /// Creates a new [GetConfigurationProfileResult].
  /// [applicationId] Optional.
  /// [arn] ARN of the Configuration Profile.
  /// [configurationProfileId] Optional.
  /// [description] Description of the Configuration Profile.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyIdentifier] KMS key identifier for encrypting the configuration data.
  /// [locationUri] Location URI of the Configuration Profile.
  /// [name] Name of the Configuration Profile.
  /// [region] Optional.
  /// [retrievalRoleArn] ARN of an IAM role with permission to access the configuration at the specified location_uri.
  /// [tags] Map of tags for the resource.
  /// [type] Type of validator. Valid values: JSON_SCHEMA and LAMBDA.
  /// [validators] Nested list of methods for validating the configuration.
  const GetConfigurationProfileResult({
    this.applicationId,
    this.arn,
    this.configurationProfileId,
    this.description,
    this.id,
    this.kmsKeyIdentifier,
    this.locationUri,
    this.name,
    this.region,
    this.retrievalRoleArn,
    this.tags,
    this.type,
    this.validators,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'arn': ?arn,
      'configurationProfileId': ?configurationProfileId,
      'description': ?description,
      'id': ?id,
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'locationUri': ?locationUri,
      'name': ?name,
      'region': ?region,
      'retrievalRoleArn': ?retrievalRoleArn,
      'tags': ?tags,
      'type': ?type,
      'validators': ?(() { final guardedValue = validators; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationProfileValidator, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetConfigurationProfileResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfileResult(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationProfileId: (() { final guardedValue = map['configurationProfileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyIdentifier: (() { final guardedValue = map['kmsKeyIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationUri: (() { final guardedValue = map['locationUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retrievalRoleArn: (() { final guardedValue = map['retrievalRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validators: (() { final guardedValue = map['validators']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationProfileValidator>(guardedValue, (value) => GetConfigurationProfileValidator.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
