// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource set description.
class ResourceSetDescriptionResponse {
  /// The elements included in the set.
  final pulumi.Input<List<String>>? elements;
  /// The elements that are not included in the set, in case elements contains '*' indicating 'all'.
  final pulumi.Input<List<String>>? exceptions;

  /// Creates a new [ResourceSetDescriptionResponse].
  /// [elements] The elements included in the set.
  /// [exceptions] The elements that are not included in the set, in case elements contains '*' indicating 'all'.
  ResourceSetDescriptionResponse({
    this.elements,
    this.exceptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elements': ?elements,
      'exceptions': ?exceptions,
    };
  }

  factory ResourceSetDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return ResourceSetDescriptionResponse(
      elements: map['elements'] == null ? null : ((map['elements'] as List).cast<String>()).input(),
      exceptions: map['exceptions'] == null ? null : ((map['exceptions'] as List).cast<String>()).input(),
    );
  }
}

