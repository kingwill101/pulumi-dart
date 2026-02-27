// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRule.
class GetRuleWafregionalArgs {
  /// Name of the WAF Regional rule.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetRuleWafregionalArgs({
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetRuleWafregionalArgs.fromMap(Map<String, dynamic> map) {
    return GetRuleWafregionalArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
