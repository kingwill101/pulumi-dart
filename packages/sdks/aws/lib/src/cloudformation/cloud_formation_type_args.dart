// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_formation_type_logging_config.dart';

/// {@template pulumi_cloudformation_cloud_formation_type_cloud_formation_type_args_doc}
/// The set of arguments for CloudFormationType.
/// {@endtemplate}
/// {@macro pulumi_cloudformation_cloud_formation_type_cloud_formation_type_args_doc}
class CloudFormationTypeArgs {
  /// ARN of the IAM Role for CloudFormation to assume when invoking the extension. If your extension calls AWS APIs in any of its handlers, you must create an IAM execution role that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. When CloudFormation needs to invoke the extension handler, CloudFormation assumes this execution role to create a temporary session token, which it then passes to the extension handler, thereby supplying your extension with the appropriate credentials.
  final pulumi.Input<String?>? executionRoleArn;
  /// Configuration block containing logging configuration.
  final pulumi.Input<CloudFormationTypeLoggingConfig?>? loggingConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// URL to the S3 bucket containing the extension project package that contains the necessary files for the extension you want to register. Must begin with `s3://` or `https://`. For example, `s3://example-bucket/example-object`.
  final pulumi.Input<String> schemaHandlerPackage;
  /// CloudFormation Registry Type. For example, `RESOURCE` or `MODULE`.
  final pulumi.Input<String?>? type;
  /// CloudFormation Type name. For example, `ExampleCompany::ExampleService::ExampleResource`.
  final pulumi.Input<String> typeName;

  /// Creates a new [CloudFormationTypeArgs].
  /// [executionRoleArn] ARN of the IAM Role for CloudFormation to assume when invoking the extension. If your extension calls AWS APIs in any of its handlers, you must create an IAM execution role that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. When CloudFormation needs to invoke the extension handler, CloudFormation assumes this execution role to create a temporary session token, which it then passes to the extension handler, thereby supplying your extension with the appropriate credentials.
  /// [loggingConfig] Configuration block containing logging configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schemaHandlerPackage] URL to the S3 bucket containing the extension project package that contains the necessary files for the extension you want to register. Must begin with `s3://` or `https://`. For example, `s3://example-bucket/example-object`.
  /// [type] CloudFormation Registry Type. For example, `RESOURCE` or `MODULE`.
  /// [typeName] CloudFormation Type name. For example, `ExampleCompany::ExampleService::ExampleResource`.
  const CloudFormationTypeArgs({
    this.executionRoleArn,
    this.loggingConfig,
    this.region,
    required this.schemaHandlerPackage,
    this.type,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionRoleArn': ?executionRoleArn,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<CloudFormationTypeLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'region': ?region,
      'schemaHandlerPackage': schemaHandlerPackage,
      'type': ?type,
      'typeName': typeName,
    };
  }

  factory CloudFormationTypeArgs.fromMap(Map<String, dynamic> map) {
    return CloudFormationTypeArgs(
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudFormationTypeLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaHandlerPackage: pulumi.Input.fromValue(map['schemaHandlerPackage'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
    );
  }
}
