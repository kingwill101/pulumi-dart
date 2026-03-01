// ignore_for_file: unused_element, unnecessary_cast


class HybridMonitorSlsTaskSlsProcessConfigFilterFilter {
  /// The method that is used to filter logs imported from Log Service. Valid values: `>`, `>=`, `=`, `<=`, `<`, `!=`, `contain`, `notContain`.
  final String? operator;
  /// The name of the key that is used to filter logs imported from Log Service.
  final String? slsKeyName;
  final String? value;

  /// Creates a new [HybridMonitorSlsTaskSlsProcessConfigFilterFilter].
  /// [operator] The method that is used to filter logs imported from Log Service. Valid values: `>`, `>=`, `=`, `<=`, `<`, `!=`, `contain`, `notContain`.
  /// [slsKeyName] The name of the key that is used to filter logs imported from Log Service.
  /// [value] Optional.
  HybridMonitorSlsTaskSlsProcessConfigFilterFilter({
    this.operator,
    this.slsKeyName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': ?operator,
      'slsKeyName': ?slsKeyName,
      'value': ?value,
    };
  }

  factory HybridMonitorSlsTaskSlsProcessConfigFilterFilter.fromMap(Map<String, dynamic> map) {
    return HybridMonitorSlsTaskSlsProcessConfigFilterFilter(
      operator: map['operator'] == null ? null : map['operator'] as String,
      slsKeyName: map['slsKeyName'] == null ? null : map['slsKeyName'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

