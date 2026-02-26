// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCloudFormationType.
class GetCloudFormationTypeArgs {
  /// ARN of the CloudFormation Type. For example, `arn:aws:cloudformation:us-west-2::type/resource/AWS-EC2-VPC`.
  final Input<String>? arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// CloudFormation Registry Type. For example, `RESOURCE`.
  final Input<String>? type;

  /// CloudFormation Type name. For example, `AWS::EC2::VPC`.
  final Input<String>? typeName;

  /// Identifier of the CloudFormation Type version.
  final Input<String>? versionId;

  GetCloudFormationTypeArgs({
    this.arn,
    this.region,
    this.type,
    this.typeName,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final typeNameValue = typeName;
    if (typeNameValue != null) {
      map['typeName'] = typeNameValue;
    }
    final versionIdValue = versionId;
    if (versionIdValue != null) {
      map['versionId'] = versionIdValue;
    }
    return map;
  }

  factory GetCloudFormationTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudFormationTypeArgs(
      arn: Input.asOptionalInput<String>(map['arn']),
      region: Input.asOptionalInput<String>(map['region']),
      type: Input.asOptionalInput<String>(map['type']),
      typeName: Input.asOptionalInput<String>(map['typeName']),
      versionId: Input.asOptionalInput<String>(map['versionId']),
    );
  }
}
