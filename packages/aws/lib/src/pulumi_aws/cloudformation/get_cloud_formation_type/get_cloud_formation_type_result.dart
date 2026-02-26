// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cloud_formation_type_logging_config/get_cloud_formation_type_logging_config.dart';

/// Result data returned by getCloudFormationType.
class GetCloudFormationTypeResult {
  final String arn;

  /// Identifier of the CloudFormation Type default version.
  final String defaultVersionId;

  /// Deprecation status of the CloudFormation Type.
  final String deprecatedStatus;

  /// Description of the CloudFormation Type.
  final String description;

  /// URL of the documentation for the CloudFormation Type.
  final String documentationUrl;

  /// ARN of the IAM Role used to register the CloudFormation Type.
  final String executionRoleArn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Whether the CloudFormation Type version is the default version.
  final bool isDefaultVersion;

  /// List of objects containing logging configuration.
  final List<GetCloudFormationTypeLoggingConfig> loggingConfigs;

  /// Provisioning behavior of the CloudFormation Type.
  final String provisioningType;
  final String region;

  /// JSON document of the CloudFormation Type schema.
  final String schema;

  /// URL of the source code for the CloudFormation Type.
  final String sourceUrl;
  final String type;
  final String typeArn;
  final String typeName;
  final String? versionId;

  /// Scope of the CloudFormation Type.
  final String visibility;

  GetCloudFormationTypeResult({
    required this.arn,
    required this.defaultVersionId,
    required this.deprecatedStatus,
    required this.description,
    required this.documentationUrl,
    required this.executionRoleArn,
    required this.id,
    required this.isDefaultVersion,
    required this.loggingConfigs,
    required this.provisioningType,
    required this.region,
    required this.schema,
    required this.sourceUrl,
    required this.type,
    required this.typeArn,
    required this.typeName,
    this.versionId,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['defaultVersionId'] = defaultVersionId;
    map['deprecatedStatus'] = deprecatedStatus;
    map['description'] = description;
    map['documentationUrl'] = documentationUrl;
    map['executionRoleArn'] = executionRoleArn;
    map['id'] = id;
    map['isDefaultVersion'] = isDefaultVersion;
    map['loggingConfigs'] = Input.encodeList<GetCloudFormationTypeLoggingConfig,
        Map<String, dynamic>>(loggingConfigs, (value) => value.toMap());
    map['provisioningType'] = provisioningType;
    map['region'] = region;
    map['schema'] = schema;
    map['sourceUrl'] = sourceUrl;
    map['type'] = type;
    map['typeArn'] = typeArn;
    map['typeName'] = typeName;
    final versionIdValue = versionId;
    if (versionIdValue != null) {
      map['versionId'] = versionIdValue;
    }
    map['visibility'] = visibility;
    return map;
  }

  factory GetCloudFormationTypeResult.fromMap(Map<String, dynamic> map) {
    return GetCloudFormationTypeResult(
      arn: map['arn'] as String,
      defaultVersionId: map['defaultVersionId'] as String,
      deprecatedStatus: map['deprecatedStatus'] as String,
      description: map['description'] as String,
      documentationUrl: map['documentationUrl'] as String,
      executionRoleArn: map['executionRoleArn'] as String,
      id: map['id'] as String,
      isDefaultVersion: map['isDefaultVersion'] as bool,
      loggingConfigs: Input.decodeList<GetCloudFormationTypeLoggingConfig>(
          map['loggingConfigs'],
          (value) => GetCloudFormationTypeLoggingConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      provisioningType: map['provisioningType'] as String,
      region: map['region'] as String,
      schema: map['schema'] as String,
      sourceUrl: map['sourceUrl'] as String,
      type: map['type'] as String,
      typeArn: map['typeArn'] as String,
      typeName: map['typeName'] as String,
      versionId: map['versionId'] == null ? null : map['versionId'] as String,
      visibility: map['visibility'] as String,
    );
  }
}
