// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// controller details
class ControllerDetailsResponse {
  /// controller arm resource id
  final pulumi.Input<String>? id;

  /// Creates a new [ControllerDetailsResponse].
  /// [id] controller arm resource id
  const ControllerDetailsResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ControllerDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ControllerDetailsResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

