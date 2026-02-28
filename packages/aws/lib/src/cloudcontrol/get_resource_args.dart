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
    required String identifier,
    String? region,
    String? roleArn,
    required String typeName,
    String? typeVersionId,
  })  : identifier = pulumi.Input.asInput<String>(identifier),
        region = pulumi.Input.asOptionalInput<String>(region),
        roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
        typeName = pulumi.Input.asInput<String>(typeName),
        typeVersionId = pulumi.Input.asOptionalInput<String>(typeVersionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    map['typeName'] = typeName;
    final typeVersionIdValue = typeVersionId;
    if (typeVersionIdValue != null) {
      map['typeVersionId'] = typeVersionIdValue;
    }
    return map;
  }

  factory GetResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceArgs(
      identifier: map['identifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      typeName: map['typeName'] as String,
      typeVersionId:
          map['typeVersionId'] == null ? null : map['typeVersionId'] as String,
    );
  }
}
