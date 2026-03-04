// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The compression method used on a dataset.
class DatasetCompression {
  /// The dataset compression level. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? level;

  /// Type of dataset compression. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> type;

  /// Creates a new [DatasetCompression].
  /// [level] The dataset compression level. Type: string (or Expression with resultType string).
  /// [type] Type of dataset compression. Type: string (or Expression with resultType string).
  DatasetCompression({this.level, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'level': ?level, 'type': type};
  }

  factory DatasetCompression.fromMap(Map<String, dynamic> map) {
    return DatasetCompression(
      level: (() {
        final guardedValue = map['level'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type']),
    );
  }
}
