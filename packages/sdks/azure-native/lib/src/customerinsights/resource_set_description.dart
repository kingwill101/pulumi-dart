// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource set description.
class ResourceSetDescription {
  /// The elements included in the set.
  final pulumi.Input<List<String>>? elements;
  /// The elements that are not included in the set, in case elements contains '*' indicating 'all'.
  final pulumi.Input<List<String>>? exceptions;

  /// Creates a new [ResourceSetDescription].
  /// [elements] The elements included in the set.
  /// [exceptions] The elements that are not included in the set, in case elements contains '*' indicating 'all'.
  const ResourceSetDescription({
    this.elements,
    this.exceptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elements': ?elements,
      'exceptions': ?exceptions,
    };
  }

  factory ResourceSetDescription.fromMap(Map<String, dynamic> map) {
    return ResourceSetDescription(
      elements: (() { final guardedValue = map['elements']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exceptions: (() { final guardedValue = map['exceptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

