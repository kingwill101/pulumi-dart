// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CooWebCcRuleRuleDetailCondition {
  /// Matching content.
  final pulumi.Input<String> content;
  /// The statistic source. Valid values:
  final pulumi.Input<String> field;
  /// Set this parameter only when the statistic source is `header`.
  final pulumi.Input<String>? headerName;
  /// Matching method.
  final pulumi.Input<String> matchMethod;

  /// Creates a new [CooWebCcRuleRuleDetailCondition].
  /// [content] Matching content.
  /// [field] The statistic source. Valid values:
  /// [headerName] Set this parameter only when the statistic source is `header`.
  /// [matchMethod] Matching method.
  CooWebCcRuleRuleDetailCondition({
    required this.content,
    required this.field,
    this.headerName,
    required this.matchMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'field': field,
      'headerName': ?headerName,
      'matchMethod': matchMethod,
    };
  }

  factory CooWebCcRuleRuleDetailCondition.fromMap(Map<String, dynamic> map) {
    return CooWebCcRuleRuleDetailCondition(
      content: (map['content'] as String).input(),
      field: (map['field'] as String).input(),
      headerName: map['headerName'] == null ? null : (map['headerName'] as String).input(),
      matchMethod: (map['matchMethod'] as String).input(),
    );
  }
}

