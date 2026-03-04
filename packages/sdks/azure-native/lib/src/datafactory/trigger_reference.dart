// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Trigger reference type.
class TriggerReference {
  /// Reference trigger name.
  final pulumi.Input<String> referenceName;

  /// Trigger reference type.
  final pulumi.Input<String> type;

  /// Creates a new [TriggerReference].
  /// [referenceName] Reference trigger name.
  /// [type] Trigger reference type.
  TriggerReference({required this.referenceName, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'referenceName': referenceName, 'type': type};
  }

  factory TriggerReference.fromMap(Map<String, dynamic> map) {
    return TriggerReference(
      referenceName: pulumi.Input.fromValue(map['referenceName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
