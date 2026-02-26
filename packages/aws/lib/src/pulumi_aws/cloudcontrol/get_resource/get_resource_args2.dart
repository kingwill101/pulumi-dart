// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getResource.
class GetResourceArgs2 {
  /// Identifier of the CloudFormation resource type. For example, `vpc-12345678`.
  final Input<String> identifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the IAM Role to assume for operations.
  final Input<String>? roleArn;

  /// CloudFormation resource type name. For example, `AWS::EC2::VPC`.
  ///
  /// The following arguments are optional:
  final Input<String> typeName;

  /// Identifier of the CloudFormation resource type version.
  final Input<String>? typeVersionId;

  GetResourceArgs2({
    required this.identifier,
    this.region,
    this.roleArn,
    required this.typeName,
    this.typeVersionId,
  });

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

  factory GetResourceArgs2.fromMap(Map<String, dynamic> map) {
    return GetResourceArgs2(
      identifier: Input.asInput<String>(map['identifier']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asOptionalInput<String>(map['roleArn']),
      typeName: Input.asInput<String>(map['typeName']),
      typeVersionId: Input.asOptionalInput<String>(map['typeVersionId']),
    );
  }
}
