// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceModelLabel {
  /// label key
  final pulumi.Input<String>? key;

  /// label value
  final pulumi.Input<String>? value;

  /// Creates a new [WorkspaceModelLabel].
  /// [key] label key
  /// [value] label value
  WorkspaceModelLabel({this.key, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'value': ?value};
  }

  factory WorkspaceModelLabel.fromMap(Map<String, dynamic> map) {
    return WorkspaceModelLabel(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
