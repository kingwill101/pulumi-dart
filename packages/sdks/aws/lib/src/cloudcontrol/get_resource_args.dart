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
  GetResourceArgs({
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
      identifier: (map['identifier'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      typeName: (map['typeName'] as String).input(),
      typeVersionId: map['typeVersionId'] == null ? null : ((map['typeVersionId'] as String).input()).input(),
    );
  }
}

