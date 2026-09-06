// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to another resource along with its state.
class ActivatedResourceReference {
  /// Resource ID.
  final pulumi.Input<String?>? id;

  /// Creates a new [ActivatedResourceReference].
  /// [id] Resource ID.
  const ActivatedResourceReference({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ActivatedResourceReference.fromMap(Map<String, dynamic> map) {
    return ActivatedResourceReference(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
