// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudformation_get_cloud_formation_type_get_cloud_formation_type_args_doc}
/// Arguments for getCloudFormationType.
/// {@endtemplate}
/// {@macro pulumi_cloudformation_get_cloud_formation_type_get_cloud_formation_type_args_doc}
class GetCloudFormationTypeArgs {
  /// ARN of the CloudFormation Type. For example, `arn:aws:cloudformation:us-west-2::type/resource/AWS-EC2-VPC`.
  final pulumi.Input<String>? arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// CloudFormation Registry Type. For example, `RESOURCE`.
  final pulumi.Input<String>? type;
  /// CloudFormation Type name. For example, `AWS::EC2::VPC`.
  final pulumi.Input<String>? typeName;
  /// Identifier of the CloudFormation Type version.
  final pulumi.Input<String>? versionId;

  /// Creates a new [GetCloudFormationTypeArgs].
  /// [arn] ARN of the CloudFormation Type. For example, `arn:aws:cloudformation:us-west-2::type/resource/AWS-EC2-VPC`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] CloudFormation Registry Type. For example, `RESOURCE`.
  /// [typeName] CloudFormation Type name. For example, `AWS::EC2::VPC`.
  /// [versionId] Identifier of the CloudFormation Type version.
  GetCloudFormationTypeArgs({
    this.arn,
    this.region,
    this.type,
    this.typeName,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'region': ?region,
      'type': ?type,
      'typeName': ?typeName,
      'versionId': ?versionId,
    };
  }

  factory GetCloudFormationTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudFormationTypeArgs(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
      typeName: map['typeName'] == null ? null : ((map['typeName'] as String).input()).input(),
      versionId: map['versionId'] == null ? null : ((map['versionId'] as String).input()).input(),
    );
  }
}

