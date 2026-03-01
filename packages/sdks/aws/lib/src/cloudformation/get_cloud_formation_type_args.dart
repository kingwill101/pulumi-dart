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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? type,
    pulumi.Output<String>? typeName,
    pulumi.Output<String>? versionId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      region = pulumi.Input.asOptionalInput<String>(region),
      type = pulumi.Input.asOptionalInput<String>(type),
      typeName = pulumi.Input.asOptionalInput<String>(typeName),
      versionId = pulumi.Input.asOptionalInput<String>(versionId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      typeName: map['typeName'] == null ? null : pulumi.Output.create<String>(map['typeName'] as String),
      versionId: map['versionId'] == null ? null : pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

