// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_formation_type_logging_config.dart';

/// Input properties used for looking up and filtering CloudFormationType resources.
class CloudFormationTypeState {
  /// (Optional) Amazon Resource Name (ARN) of the CloudFormation Type version. See also `type_arn`.
  final pulumi.Input<String>? arn;
  /// Identifier of the CloudFormation Type default version.
  final pulumi.Input<String>? defaultVersionId;
  /// Deprecation status of the version.
  final pulumi.Input<String>? deprecatedStatus;
  /// Description of the version.
  final pulumi.Input<String>? description;
  /// URL of the documentation for the CloudFormation Type.
  final pulumi.Input<String>? documentationUrl;
  /// Amazon Resource Name (ARN) of the IAM Role for CloudFormation to assume when invoking the extension. If your extension calls AWS APIs in any of its handlers, you must create an IAM execution role that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. When CloudFormation needs to invoke the extension handler, CloudFormation assumes this execution role to create a temporary session token, which it then passes to the extension handler, thereby supplying your extension with the appropriate credentials.
  final pulumi.Input<String>? executionRoleArn;
  /// Whether the CloudFormation Type version is the default version.
  final pulumi.Input<bool>? isDefaultVersion;
  /// Configuration block containing logging configuration.
  final pulumi.Input<CloudFormationTypeLoggingConfig>? loggingConfig;
  /// Provisioning behavior of the CloudFormation Type.
  final pulumi.Input<String>? provisioningType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// JSON document of the CloudFormation Type schema.
  final pulumi.Input<String>? schema;
  /// URL to the S3 bucket containing the extension project package that contains the necessary files for the extension you want to register. Must begin with `s3://` or `https://`. For example, `s3://example-bucket/example-object`.
  final pulumi.Input<String>? schemaHandlerPackage;
  /// URL of the source code for the CloudFormation Type.
  final pulumi.Input<String>? sourceUrl;
  /// CloudFormation Registry Type. For example, `RESOURCE` or `MODULE`.
  final pulumi.Input<String>? type;
  /// (Optional) Amazon Resource Name (ARN) of the CloudFormation Type. See also `arn`.
  final pulumi.Input<String>? typeArn;
  /// CloudFormation Type name. For example, `ExampleCompany::ExampleService::ExampleResource`.
  final pulumi.Input<String>? typeName;
  /// (Optional) Identifier of the CloudFormation Type version.
  final pulumi.Input<String>? versionId;
  /// Scope of the CloudFormation Type.
  final pulumi.Input<String>? visibility;

  /// Creates a new [CloudFormationTypeState].
  /// [arn] (Optional) Amazon Resource Name (ARN) of the CloudFormation Type version. See also `type_arn`.
  /// [defaultVersionId] Identifier of the CloudFormation Type default version.
  /// [deprecatedStatus] Deprecation status of the version.
  /// [description] Description of the version.
  /// [documentationUrl] URL of the documentation for the CloudFormation Type.
  /// [executionRoleArn] Amazon Resource Name (ARN) of the IAM Role for CloudFormation to assume when invoking the extension. If your extension calls AWS APIs in any of its handlers, you must create an IAM execution role that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. When CloudFormation needs to invoke the extension handler, CloudFormation assumes this execution role to create a temporary session token, which it then passes to the extension handler, thereby supplying your extension with the appropriate credentials.
  /// [isDefaultVersion] Whether the CloudFormation Type version is the default version.
  /// [loggingConfig] Configuration block containing logging configuration.
  /// [provisioningType] Provisioning behavior of the CloudFormation Type.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schema] JSON document of the CloudFormation Type schema.
  /// [schemaHandlerPackage] URL to the S3 bucket containing the extension project package that contains the necessary files for the extension you want to register. Must begin with `s3://` or `https://`. For example, `s3://example-bucket/example-object`.
  /// [sourceUrl] URL of the source code for the CloudFormation Type.
  /// [type] CloudFormation Registry Type. For example, `RESOURCE` or `MODULE`.
  /// [typeArn] (Optional) Amazon Resource Name (ARN) of the CloudFormation Type. See also `arn`.
  /// [typeName] CloudFormation Type name. For example, `ExampleCompany::ExampleService::ExampleResource`.
  /// [versionId] (Optional) Identifier of the CloudFormation Type version.
  /// [visibility] Scope of the CloudFormation Type.
  CloudFormationTypeState({
    this.arn,
    this.defaultVersionId,
    this.deprecatedStatus,
    this.description,
    this.documentationUrl,
    this.executionRoleArn,
    this.isDefaultVersion,
    this.loggingConfig,
    this.provisioningType,
    this.region,
    this.schema,
    this.schemaHandlerPackage,
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
      'isDefaultVersion': ?isDefaultVersion,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<CloudFormationTypeLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'provisioningType': ?provisioningType,
      'region': ?region,
      'schema': ?schema,
      'schemaHandlerPackage': ?schemaHandlerPackage,
      'sourceUrl': ?sourceUrl,
      'type': ?type,
      'typeArn': ?typeArn,
      'typeName': ?typeName,
      'versionId': ?versionId,
      'visibility': ?visibility,
    };
  }

  factory CloudFormationTypeState.fromMap(Map<String, dynamic> map) {
    return CloudFormationTypeState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultVersionId: (() { final guardedValue = map['defaultVersionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deprecatedStatus: (() { final guardedValue = map['deprecatedStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentationUrl: (() { final guardedValue = map['documentationUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefaultVersion: (() { final guardedValue = map['isDefaultVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudFormationTypeLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningType: (() { final guardedValue = map['provisioningType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaHandlerPackage: (() { final guardedValue = map['schemaHandlerPackage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceUrl: (() { final guardedValue = map['sourceUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeArn: (() { final guardedValue = map['typeArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeName: (() { final guardedValue = map['typeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

