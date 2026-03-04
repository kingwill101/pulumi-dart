// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key-value pair for additional credit parameters and metadata
class CreditDimension {
  /// The dimension key (e.g., productFamily, description, creditType)
  final pulumi.Input<String> key;

  /// The dimension value
  final pulumi.Input<String> value;

  /// Creates a new [CreditDimension].
  /// [key] The dimension key (e.g., productFamily, description, creditType)
  /// [value] The dimension value
  CreditDimension({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory CreditDimension.fromMap(Map<String, dynamic> map) {
    return CreditDimension(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
