// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceModelVersionLabel {
  /// label key.
  final pulumi.Input<String>? key;
  /// label value.
  final pulumi.Input<String>? value;

  /// Creates a new [WorkspaceModelVersionLabel].
  /// [key] label key.
  /// [value] label value.
  WorkspaceModelVersionLabel({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory WorkspaceModelVersionLabel.fromMap(Map<String, dynamic> map) {
    return WorkspaceModelVersionLabel(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

