// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CooWebCcRuleRuleDetailStatistics {
  /// The statistic source. Valid values:
  final pulumi.Input<String> field;

  /// Set this parameter only when the statistic source is `header`.
  final pulumi.Input<String>? headerName;

  /// The deduplication mode. Valid values:
  final pulumi.Input<String> mode;

  /// Creates a new [CooWebCcRuleRuleDetailStatistics].
  /// [field] The statistic source. Valid values:
  /// [headerName] Set this parameter only when the statistic source is `header`.
  /// [mode] The deduplication mode. Valid values:
  CooWebCcRuleRuleDetailStatistics({
    required this.field,
    this.headerName,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field,
      'headerName': ?headerName,
      'mode': mode,
    };
  }

  factory CooWebCcRuleRuleDetailStatistics.fromMap(Map<String, dynamic> map) {
    return CooWebCcRuleRuleDetailStatistics(
      field: pulumi.Input.fromValue(map['field'] as String),
      headerName: (() {
        final guardedValue = map['headerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
