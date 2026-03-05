// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Iceberg write settings.
class IcebergWriteSettings {
  /// The write setting type.
  /// Expected value is 'IcebergWriteSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [IcebergWriteSettings].
  /// [type] The write setting type.
  IcebergWriteSettings({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory IcebergWriteSettings.fromMap(Map<String, dynamic> map) {
    return IcebergWriteSettings(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

