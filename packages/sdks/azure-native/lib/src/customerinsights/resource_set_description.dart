// ignore_for_file: unused_element, unnecessary_cast


/// The resource set description.
class ResourceSetDescription {
  /// The elements included in the set.
  final List<String>? elements;
  /// The elements that are not included in the set, in case elements contains '*' indicating 'all'.
  final List<String>? exceptions;

  /// Creates a new [ResourceSetDescription].
  /// [elements] The elements included in the set.
  /// [exceptions] The elements that are not included in the set, in case elements contains '*' indicating 'all'.
  ResourceSetDescription({
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
      elements: map['elements'] == null ? null : (map['elements'] as List).cast<String>(),
      exceptions: map['exceptions'] == null ? null : (map['exceptions'] as List).cast<String>(),
    );
  }
}

