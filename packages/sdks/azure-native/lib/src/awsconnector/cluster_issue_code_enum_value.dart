// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ClusterIssueCodeEnumValue
class ClusterIssueCodeEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ClusterIssueCodeEnumValue].
  /// [value] Property value
  const ClusterIssueCodeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ClusterIssueCodeEnumValue.fromMap(Map<String, dynamic> map) {
    return ClusterIssueCodeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
