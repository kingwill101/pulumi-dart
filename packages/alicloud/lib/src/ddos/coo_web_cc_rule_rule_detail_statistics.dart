// ignore_for_file: unused_element, unnecessary_cast


class CooWebCcRuleRuleDetailStatistics {
  /// The statistic source. Valid values:
  final String field;
  /// Set this parameter only when the statistic source is `header`.
  final String? headerName;
  /// The deduplication mode. Valid values:
  final String mode;

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
      field: map['field'] as String,
      headerName: map['headerName'] == null ? null : map['headerName'] as String,
      mode: map['mode'] as String,
    );
  }
}

