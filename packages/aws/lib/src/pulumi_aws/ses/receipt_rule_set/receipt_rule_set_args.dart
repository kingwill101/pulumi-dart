// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ReceiptRuleSet.
class ReceiptRuleSetArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the rule set.
  final Input<String> ruleSetName;

  ReceiptRuleSetArgs({
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

  factory ReceiptRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleSetArgs(
      region: Input.asOptionalInput<String>(map['region']),
      ruleSetName: Input.asInput<String>(map['ruleSetName']),
    );
  }
}
