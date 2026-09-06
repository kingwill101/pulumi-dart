// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// controller details
class ControllerDetails {
  /// controller arm resource id
  final pulumi.Input<String?>? id;

  /// Creates a new [ControllerDetails].
  /// [id] controller arm resource id
  const ControllerDetails({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ControllerDetails.fromMap(Map<String, dynamic> map) {
    return ControllerDetails(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
