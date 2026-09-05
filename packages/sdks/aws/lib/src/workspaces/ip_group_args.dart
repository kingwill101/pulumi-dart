// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_group_rule.dart';

/// {@template pulumi_workspaces_ip_group_ip_group_args_doc}
/// The set of arguments for IpGroup.
/// {@endtemplate}
/// {@macro pulumi_workspaces_ip_group_ip_group_args_doc}
class IpGroupArgs {
  /// The description of the IP group.
  final pulumi.Input<String?>? description;
  /// The name of the IP group.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// One or more pairs specifying the IP group rule (in CIDR format) from which web requests originate.
  final pulumi.Input<List<IpGroupRule>?>? rules;
  /// A map of tags assigned to the WorkSpaces directory. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [IpGroupArgs].
  /// [description] The description of the IP group.
  /// [name] The name of the IP group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] One or more pairs specifying the IP group rule (in CIDR format) from which web requests originate.
  /// [tags] A map of tags assigned to the WorkSpaces directory. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const IpGroupArgs({
    this.description,
    this.name,
    this.region,
    this.rules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<IpGroupRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<IpGroupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory IpGroupArgs.fromMap(Map<String, dynamic> map) {
    return IpGroupArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpGroupRule>(guardedValue, (value) => IpGroupRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
