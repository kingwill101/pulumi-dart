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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? transitGatewayId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      transitGatewayId = pulumi.Input.asOptionalInput<String>(transitGatewayId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      transitGatewayId: map['transitGatewayId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayId'] as String),
    );
  }
}

