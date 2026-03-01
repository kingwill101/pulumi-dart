// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverFirewallRuleGroup resources.
class ResolverFirewallRuleGroupState {
  /// The ARN (Amazon Resource Name) of the rule group.
  final pulumi.Input<String>? arn;
  /// A name that lets you identify the rule group, to manage and use it.
  final pulumi.Input<String>? name;
  /// The AWS account ID for the account that created the rule group. When a rule group is shared with your account, this is the account that has shared the rule group with you.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether the rule group is shared with other AWS accounts, or was shared with the current account by another AWS account. Sharing is configured through AWS Resource Access Manager (AWS RAM). Valid values: `NOT_SHARED`, `SHARED_BY_ME`, `SHARED_WITH_ME`
  final pulumi.Input<String>? shareStatus;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ResolverFirewallRuleGroupState].
  /// [arn] The ARN (Amazon Resource Name) of the rule group.
  /// [name] A name that lets you identify the rule group, to manage and use it.
  /// [ownerId] The AWS account ID for the account that created the rule group. When a rule group is shared with your account, this is the account that has shared the rule group with you.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shareStatus] Whether the rule group is shared with other AWS accounts, or was shared with the current account by another AWS account. Sharing is configured through AWS Resource Access Manager (AWS RAM). Valid values: `NOT_SHARED`, `SHARED_BY_ME`, `SHARED_WITH_ME`
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ResolverFirewallRuleGroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? shareStatus,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      shareStatus = pulumi.Input.asOptionalInput<String>(shareStatus),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'ownerId': ?ownerId,
      'region': ?region,
      'shareStatus': ?shareStatus,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ResolverFirewallRuleGroupState.fromMap(Map<String, dynamic> map) {
    return ResolverFirewallRuleGroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shareStatus: map['shareStatus'] == null ? null : pulumi.Output.create<String>(map['shareStatus'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

