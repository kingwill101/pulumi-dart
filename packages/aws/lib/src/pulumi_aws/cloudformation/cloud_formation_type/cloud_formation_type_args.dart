// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cloud_formation_type_logging_config/cloud_formation_type_logging_config.dart';

/// The set of arguments for CloudFormationType.
class CloudFormationTypeArgs {
  /// Amazon Resource Name (ARN) of the IAM Role for CloudFormation to assume when invoking the extension. If your extension calls AWS APIs in any of its handlers, you must create an IAM execution role that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. When CloudFormation needs to invoke the extension handler, CloudFormation assumes this execution role to create a temporary session token, which it then passes to the extension handler, thereby supplying your extension with the appropriate credentials.
  final pulumi.Input<String>? executionRoleArn;

  /// Configuration block containing logging configuration.
  final pulumi.Input<CloudFormationTypeLoggingConfig>? loggingConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// URL to the S3 bucket containing the extension project package that contains the necessary files for the extension you want to register. Must begin with `s3://` or `https://`. For example, `s3://example-bucket/example-object`.
  final pulumi.Input<String> schemaHandlerPackage;

  /// CloudFormation Registry Type. For example, `RESOURCE` or `MODULE`.
  final pulumi.Input<String>? type;

  /// CloudFormation Type name. For example, `ExampleCompany::ExampleService::ExampleResource`.
  final pulumi.Input<String> typeName;

  CloudFormationTypeArgs({
    this.executionRoleArn,
    this.loggingConfig,
    this.region,
    required this.schemaHandlerPackage,
    this.type,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final executionRoleArnValue = executionRoleArn;
    if (executionRoleArnValue != null) {
      map['executionRoleArn'] = executionRoleArnValue;
    }
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = pulumi.Input.mapOptionalInputValue<
          CloudFormationTypeLoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['schemaHandlerPackage'] = schemaHandlerPackage;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    map['typeName'] = typeName;
    return map;
  }

  factory CloudFormationTypeArgs.fromMap(Map<String, dynamic> map) {
    return CloudFormationTypeArgs(
      executionRoleArn:
          pulumi.Input.asOptionalInput<String>(map['executionRoleArn']),
      loggingConfig:
          pulumi.Input.asOptionalInput<CloudFormationTypeLoggingConfig>(
              map['loggingConfig']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      schemaHandlerPackage:
          pulumi.Input.asInput<String>(map['schemaHandlerPackage']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
      typeName: pulumi.Input.asInput<String>(map['typeName']),
    );
  }
}
