// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ip_group_rule/ip_group_rule.dart';

/// The set of arguments for IpGroup.
class IpGroupArgs {
  /// The description of the IP group.
  final Input<String>? description;

  /// The name of the IP group.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// One or more pairs specifying the IP group rule (in CIDR format) from which web requests originate.
  final Input<List<IpGroupRule>>? rules;

  /// A map of tags assigned to the WorkSpaces directory. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  IpGroupArgs({
    this.description,
    this.name,
    this.region,
    this.rules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = Input.mapOptionalInputValue<List<IpGroupRule>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) => Input.encodeList<IpGroupRule, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory IpGroupArgs.fromMap(Map<String, dynamic> map) {
    return IpGroupArgs(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      rules: Input.asOptionalInput<List<IpGroupRule>>(map['rules']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
