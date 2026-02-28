// ignore_for_file: unused_element, unnecessary_cast


/// Contains criteria for selecting Targets. Attributes provided must match the target resource in order for policy restrictions to apply. E.g. if id "prod" and labels "foo: bar" are given the target resource must match both that id and have that label in order to be selected.
class TargetAttribute {
  /// ID of the `Target`. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine which target is being referred to * "*", all targets in a location.
  final String? id;
  /// Target labels.
  final Map<String, String>? labels;

  /// Creates a new [TargetAttribute].
  /// [id] ID of the `Target`. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine which target is being referred to * "*", all targets in a location.
  /// [labels] Target labels.
  TargetAttribute({
    this.id,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'labels': ?labels,
    };
  }

  factory TargetAttribute.fromMap(Map<String, dynamic> map) {
    return TargetAttribute(
      id: map['id'] == null ? null : map['id'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
    );
  }
}

