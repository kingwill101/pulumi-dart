// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudcontrol_get_resource_get_resource_args_doc}
/// Arguments for getResource.
/// {@endtemplate}
/// {@macro pulumi_cloudcontrol_get_resource_get_resource_args_doc}
class GetResourceArgs {
  /// Identifier of the CloudFormation resource type. For example, `vpc-12345678`.
  final pulumi.Input<String> identifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the IAM Role to assume for operations.
  final pulumi.Input<String>? roleArn;
  /// CloudFormation resource type name. For example, `AWS::EC2::VPC`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> typeName;
  /// Identifier of the CloudFormation resource type version.
  final pulumi.Input<String>? typeVersionId;

  /// Creates a new [GetResourceArgs].
  /// [identifier] Identifier of the CloudFormation resource type. For example, `vpc-12345678`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM Role to assume for operations.
  /// [typeName] CloudFormation resource type name. For example, `AWS::EC2::VPC`.
  /// [typeVersionId] Identifier of the CloudFormation resource type version.
  const GetResourceArgs({
    required this.identifier,
    this.region,
    this.roleArn,
    required this.typeName,
    this.typeVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'region': ?region,
      'roleArn': ?roleArn,
      'typeName': typeName,
      'typeVersionId': ?typeVersionId,
    };
  }

  factory GetResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceArgs(
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
      typeVersionId: (() { final guardedValue = map['typeVersionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
