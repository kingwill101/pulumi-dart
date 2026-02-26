// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ActiveReceiptRuleSet.
class ActiveReceiptRuleSetArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the rule set
  final Input<String> ruleSetName;

  ActiveReceiptRuleSetArgs({
    this.region,
    required this.ruleSetName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['ruleSetName'] = ruleSetName;
    return map;
  }

  factory ActiveReceiptRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return ActiveReceiptRuleSetArgs(
      region: Input.asOptionalInput<String>(map['region']),
      ruleSetName: Input.asInput<String>(map['ruleSetName']),
    );
  }
}
