// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceDatasetLabel {
  /// The key of the tag. The length is limited to 128 bytes. "=" and "," are not supported.
  final pulumi.Input<String>? key;
  /// The value of the tag. The length is limited to 128 bytes. "=" and "," are not supported.
  final pulumi.Input<String>? value;

  /// Creates a new [WorkspaceDatasetLabel].
  /// [key] The key of the tag. The length is limited to 128 bytes. "=" and "," are not supported.
  /// [value] The value of the tag. The length is limited to 128 bytes. "=" and "," are not supported.
  WorkspaceDatasetLabel({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory WorkspaceDatasetLabel.fromMap(Map<String, dynamic> map) {
    return WorkspaceDatasetLabel(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

