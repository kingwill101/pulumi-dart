// ignore_for_file: unused_element, unnecessary_cast

class DeployPolicySelectorTarget {
  /// ID of the `Target`. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine which target is being referred to * "*", all targets in a location.
  final String? id;

  /// Target labels.
  final Map<String, String>? labels;

  /// Creates a new [DeployPolicySelectorTarget].
  /// [id] ID of the `Target`. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine which target is being referred to * "*", all targets in a location.
  /// [labels] Target labels.
  DeployPolicySelectorTarget({this.id, this.labels});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'labels': ?labels};
  }

  factory DeployPolicySelectorTarget.fromMap(Map<String, dynamic> map) {
    return DeployPolicySelectorTarget(
      id: map['id'] == null ? null : map['id'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}
