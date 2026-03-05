// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The detector information. By default this is not populated, unless it's specified in expandDetector
class Detector {
  /// The detector id.
  final pulumi.Input<String> id;
  /// The detector's parameters.'
  final pulumi.Input<Map<String, dynamic>>? parameters;

  /// Creates a new [Detector].
  /// [id] The detector id.
  /// [parameters] The detector's parameters.'
  Detector({
    required this.id,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'parameters': ?parameters,
    };
  }

  factory Detector.fromMap(Map<String, dynamic> map) {
    return Detector(
      id: pulumi.Input.fromValue(map['id'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

