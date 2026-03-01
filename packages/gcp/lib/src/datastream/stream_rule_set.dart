// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_rule_set_customization_rule.dart';
import 'stream_rule_set_object_filter.dart';

class StreamRuleSet {
  /// List of customization rules to apply.
  /// Structure is documented below.
  final List<StreamRuleSetCustomizationRule> customizationRules;

  /// Object filter to apply the customization rules to.
  /// Structure is documented below.
  final StreamRuleSetObjectFilter objectFilter;

  /// Creates a new [StreamRuleSet].
  /// [customizationRules] List of customization rules to apply.
  /// [objectFilter] Object filter to apply the customization rules to.
  StreamRuleSet({required this.customizationRules, required this.objectFilter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customizationRules':
          pulumi.Input.encodeList<
            StreamRuleSetCustomizationRule,
            Map<String, dynamic>
          >(customizationRules, (value) => value.toMap()),
      'objectFilter': objectFilter.toMap(),
    };
  }

  factory StreamRuleSet.fromMap(Map<String, dynamic> map) {
    return StreamRuleSet(
      customizationRules:
          pulumi.Input.decodeList<StreamRuleSetCustomizationRule>(
            map['customizationRules'],
            (value) => StreamRuleSetCustomizationRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      objectFilter: StreamRuleSetObjectFilter.fromMap(
        (map['objectFilter'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
