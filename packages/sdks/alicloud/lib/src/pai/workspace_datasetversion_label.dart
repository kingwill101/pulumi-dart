// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceDatasetversionLabel {
  /// The key of the tags
  final pulumi.Input<String>? key;
  /// The value of the tags
  final pulumi.Input<String>? value;

  /// Creates a new [WorkspaceDatasetversionLabel].
  /// [key] The key of the tags
  /// [value] The value of the tags
  WorkspaceDatasetversionLabel({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory WorkspaceDatasetversionLabel.fromMap(Map<String, dynamic> map) {
    return WorkspaceDatasetversionLabel(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

