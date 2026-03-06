// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HybridMonitorSlsTaskSlsProcessConfigFilterFilter {
  /// The method that is used to filter logs imported from Log Service. Valid values: `&gt;`, `&gt;=`, `=`, `&lt;=`, `&lt;`, `!=`, `contain`, `notContain`.
  final pulumi.Input<String>? operator;
  /// The name of the key that is used to filter logs imported from Log Service.
  final pulumi.Input<String>? slsKeyName;
  final pulumi.Input<String>? value;

  /// Creates a new [HybridMonitorSlsTaskSlsProcessConfigFilterFilter].
  /// [operator] The method that is used to filter logs imported from Log Service. Valid values: `&gt;`, `&gt;=`, `=`, `&lt;=`, `&lt;`, `!=`, `contain`, `notContain`.
  /// [slsKeyName] The name of the key that is used to filter logs imported from Log Service.
  /// [value] Optional.
  const HybridMonitorSlsTaskSlsProcessConfigFilterFilter({
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
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsKeyName: (() { final guardedValue = map['slsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

