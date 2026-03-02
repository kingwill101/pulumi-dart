// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHybridMonitorDatasDataLabel {
  /// Label key.
  final pulumi.Input<String> key;
  /// Label value.
  final pulumi.Input<String> value;

  /// Creates a new [GetHybridMonitorDatasDataLabel].
  /// [key] Label key.
  /// [value] Label value.
  GetHybridMonitorDatasDataLabel({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetHybridMonitorDatasDataLabel.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorDatasDataLabel(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

