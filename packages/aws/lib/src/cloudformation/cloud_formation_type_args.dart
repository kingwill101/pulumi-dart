// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_formation_type_logging_config.dart';

/// {@template pulumi_cloudformation_cloud_formation_type_cloud_formation_type_args_doc}
/// The set of arguments for CloudFormationType.
/// {@endtemplate}
/// {@macro pulumi_cloudformation_cloud_formation_type_cloud_formation_type_args_doc}
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

  /// Creates a new [CloudFormationTypeArgs].
  /// [executionRoleArn] Amazon Resource Name (ARN) of the IAM Role for CloudFormation to assume when invoking the extension. If your extension calls AWS APIs in any of its handlers, you must create an IAM execution role that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. When CloudFormation needs to invoke the extension handler, CloudFormation assumes this execution role to create a temporary session token, which it then passes to the extension handler, thereby supplying your extension with the appropriate credentials.
  /// [loggingConfig] Configuration block containing logging configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schemaHandlerPackage] URL to the S3 bucket containing the extension project package that contains the necessary files for the extension you want to register. Must begin with `s3://` or `https://`. For example, `s3://example-bucket/example-object`.
  /// [type] CloudFormation Registry Type. For example, `RESOURCE` or `MODULE`.
  /// [typeName] CloudFormation Type name. For example, `ExampleCompany::ExampleService::ExampleResource`.
  CloudFormationTypeArgs({
    String? executionRoleArn,
    CloudFormationTypeLoggingConfig? loggingConfig,
    String? region,
    required String schemaHandlerPackage,
    String? type,
    required String typeName,
  }) :
      executionRoleArn = pulumi.Input.asOptionalInput<String>(executionRoleArn),
      loggingConfig = pulumi.Input.asOptionalInput<CloudFormationTypeLoggingConfig>(loggingConfig),
      region = pulumi.Input.asOptionalInput<String>(region),
      schemaHandlerPackage = pulumi.Input.asInput<String>(schemaHandlerPackage),
      type = pulumi.Input.asOptionalInput<String>(type),
      typeName = pulumi.Input.asInput<String>(typeName);

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
      executionRoleArn: map['executionRoleArn'] == null ? null : map['executionRoleArn'] as String,
      loggingConfig: map['loggingConfig'] == null ? null : CloudFormationTypeLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      schemaHandlerPackage: map['schemaHandlerPackage'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      typeName: map['typeName'] as String,
    );
  }
}

