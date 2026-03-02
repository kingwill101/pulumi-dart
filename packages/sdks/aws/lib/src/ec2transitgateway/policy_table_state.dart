// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolicyTable resources.
class PolicyTableState {
  /// EC2 Transit Gateway Policy Table Amazon Resource Name (ARN).
  final pulumi.Input<String>? arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The state of the EC2 Transit Gateway Policy Table.
  final pulumi.Input<String>? state;
  /// Key-value tags for the EC2 Transit Gateway Policy Table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// EC2 Transit Gateway identifier.
  final pulumi.Input<String>? transitGatewayId;

  /// Creates a new [PolicyTableState].
  /// [arn] EC2 Transit Gateway Policy Table Amazon Resource Name (ARN).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] The state of the EC2 Transit Gateway Policy Table.
  /// [tags] Key-value tags for the EC2 Transit Gateway Policy Table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayId] EC2 Transit Gateway identifier.
  PolicyTableState({
    this.arn,
    this.region,
    this.state,
    this.tags,
    this.tagsAll,
    this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayId': ?transitGatewayId,
    };
  }

  factory PolicyTableState.fromMap(Map<String, dynamic> map) {
    return PolicyTableState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      transitGatewayId: map['transitGatewayId'] == null ? null : (map['transitGatewayId'] as String).input(),
    );
  }
}

