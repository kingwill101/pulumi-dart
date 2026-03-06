// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Iceberg write settings.
class IcebergWriteSettingsResponse {
  /// The write setting type.
  /// Expected value is 'IcebergWriteSettings'.
  final pulumi.Input<String> type;

  /// Creates a new [IcebergWriteSettingsResponse].
  /// [type] The write setting type.
  const IcebergWriteSettingsResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory IcebergWriteSettingsResponse.fromMap(Map<String, dynamic> map) {
    return IcebergWriteSettingsResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

