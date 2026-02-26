// ignore_for_file: unused_element, unnecessary_cast

class AutomationSelectorTarget {
  /// ID of the `Target`. The value of this field could be one of the following: * The last segment of a target name. It only needs the ID to determine which target is being referred to * "*", all targets in a location.
  final String? id;

  /// Target labels.
  final Map<String, String>? labels;

  AutomationSelectorTarget({
    this.id,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    return map;
  }

  factory AutomationSelectorTarget.fromMap(Map<String, dynamic> map) {
    return AutomationSelectorTarget(
      id: map['id'] == null ? null : map['id'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}
