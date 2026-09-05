// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_formation_type_logging_config.dart';

/// Result data returned by getCloudFormationType.
class GetCloudFormationTypeResult {
  final String? arn;
  /// Identifier of the CloudFormation Type default version.
  final String? defaultVersionId;
  /// Deprecation status of the CloudFormation Type.
  final String? deprecatedStatus;
  /// Description of the CloudFormation Type.
  final String? description;
  /// URL of the documentation for the CloudFormation Type.
  final String? documentationUrl;
  /// ARN of the IAM Role used to register the CloudFormation Type.
  final String? executionRoleArn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Whether the CloudFormation Type version is the default version.
  final bool? isDefaultVersion;
  /// List of objects containing logging configuration.
  final List<GetCloudFormationTypeLoggingConfig>? loggingConfigs;
  /// Provisioning behavior of the CloudFormation Type.
  final String? provisioningType;
  final String? region;
  /// JSON document of the CloudFormation Type schema.
  final String? schema;
  /// URL of the source code for the CloudFormation Type.
  final String? sourceUrl;
  final String? type;
  final String? typeArn;
  final String? typeName;
  final String? versionId;
  /// Scope of the CloudFormation Type.
  final String? visibility;

  /// Creates a new [GetCloudFormationTypeResult].
  /// [arn] Optional.
  /// [defaultVersionId] Identifier of the CloudFormation Type default version.
  /// [deprecatedStatus] Deprecation status of the CloudFormation Type.
  /// [description] Description of the CloudFormation Type.
  /// [documentationUrl] URL of the documentation for the CloudFormation Type.
  /// [executionRoleArn] ARN of the IAM Role used to register the CloudFormation Type.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isDefaultVersion] Whether the CloudFormation Type version is the default version.
  /// [loggingConfigs] List of objects containing logging configuration.
  /// [provisioningType] Provisioning behavior of the CloudFormation Type.
  /// [region] Optional.
  /// [schema] JSON document of the CloudFormation Type schema.
  /// [sourceUrl] URL of the source code for the CloudFormation Type.
  /// [type] Optional.
  /// [typeArn] Optional.
  /// [typeName] Optional.
  /// [versionId] Optional.
  /// [visibility] Scope of the CloudFormation Type.
  const GetCloudFormationTypeResult({
    this.arn,
    this.defaultVersionId,
    this.deprecatedStatus,
    this.description,
    this.documentationUrl,
    this.executionRoleArn,
    this.id,
    this.isDefaultVersion,
    this.loggingConfigs,
    this.provisioningType,
    this.region,
    this.schema,
    this.sourceUrl,
    this.type,
    this.typeArn,
    this.typeName,
    this.versionId,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultVersionId': ?defaultVersionId,
      'deprecatedStatus': ?deprecatedStatus,
      'description': ?description,
      'documentationUrl': ?documentationUrl,
      'executionRoleArn': ?executionRoleArn,
      'id': ?id,
      'isDefaultVersion': ?isDefaultVersion,
      'loggingConfigs': ?(() { final guardedValue = loggingConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudFormationTypeLoggingConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningType': ?provisioningType,
      'region': ?region,
      'schema': ?schema,
      'sourceUrl': ?sourceUrl,
      'type': ?type,
      'typeArn': ?typeArn,
      'typeName': ?typeName,
      'versionId': ?versionId,
      'visibility': ?visibility,
    };
  }

  factory GetCloudFormationTypeResult.fromMap(Map<String, dynamic> map) {
    return GetCloudFormationTypeResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultVersionId: (() { final guardedValue = map['defaultVersionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deprecatedStatus: (() { final guardedValue = map['deprecatedStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentationUrl: (() { final guardedValue = map['documentationUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDefaultVersion: (() { final guardedValue = map['isDefaultVersion']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      loggingConfigs: (() { final guardedValue = map['loggingConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudFormationTypeLoggingConfig>(guardedValue, (value) => GetCloudFormationTypeLoggingConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningType: (() { final guardedValue = map['provisioningType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceUrl: (() { final guardedValue = map['sourceUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      typeArn: (() { final guardedValue = map['typeArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      typeName: (() { final guardedValue = map['typeName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
