// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The compression method used on a dataset.
class DatasetCompressionResponse {
  /// The dataset compression level. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? level;
  /// Type of dataset compression. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> type;

  /// Creates a new [DatasetCompressionResponse].
  /// [level] The dataset compression level. Type: string (or Expression with resultType string).
  /// [type] Type of dataset compression. Type: string (or Expression with resultType string).
  const DatasetCompressionResponse({
    this.level,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
      'type': type,
    };
  }

  factory DatasetCompressionResponse.fromMap(Map<String, dynamic> map) {
    return DatasetCompressionResponse(
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type']),
    );
  }
}

