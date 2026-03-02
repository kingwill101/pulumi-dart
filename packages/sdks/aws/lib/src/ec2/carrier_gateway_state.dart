// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CarrierGateway resources.
class CarrierGatewayState {
  /// The ARN of the carrier gateway.
  final pulumi.Input<String>? arn;
  /// The AWS account ID of the owner of the carrier gateway.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ID of the VPC to associate with the carrier gateway.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [CarrierGatewayState].
  /// [arn] The ARN of the carrier gateway.
  /// [ownerId] The AWS account ID of the owner of the carrier gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] The ID of the VPC to associate with the carrier gateway.
  CarrierGatewayState({
    this.arn,
    this.ownerId,
    this.region,
    this.tags,
    this.tagsAll,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'ownerId': ?ownerId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory CarrierGatewayState.fromMap(Map<String, dynamic> map) {
    return CarrierGatewayState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

