// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key-value pair for additional credit parameters and metadata
class CreditDimensionResponse {
  /// The dimension key (e.g., productFamily, description, creditType)
  final pulumi.Input<String> key;
  /// The dimension value
  final pulumi.Input<String> value;

  /// Creates a new [CreditDimensionResponse].
  /// [key] The dimension key (e.g., productFamily, description, creditType)
  /// [value] The dimension value
  CreditDimensionResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory CreditDimensionResponse.fromMap(Map<String, dynamic> map) {
    return CreditDimensionResponse(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

