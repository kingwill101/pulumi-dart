// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_group_rule.dart';

/// Input properties used for looking up and filtering IpGroup resources.
class IpGroupState {
  /// The description of the IP group.
  final pulumi.Input<String>? description;
  /// The name of the IP group.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// One or more pairs specifying the IP group rule (in CIDR format) from which web requests originate.
  final pulumi.Input<List<IpGroupRule>>? rules;
  /// A map of tags assigned to the WorkSpaces directory. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [IpGroupState].
  /// [description] The description of the IP group.
  /// [name] The name of the IP group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] One or more pairs specifying the IP group rule (in CIDR format) from which web requests originate.
  /// [tags] A map of tags assigned to the WorkSpaces directory. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  IpGroupState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<IpGroupRule>>? rules,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      rules = pulumi.Input.asOptionalInput<List<IpGroupRule>>(rules),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<IpGroupRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<IpGroupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory IpGroupState.fromMap(Map<String, dynamic> map) {
    return IpGroupState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<IpGroupRule>>(pulumi.Input.decodeList<IpGroupRule>(map['rules'], (value) => IpGroupRule.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

