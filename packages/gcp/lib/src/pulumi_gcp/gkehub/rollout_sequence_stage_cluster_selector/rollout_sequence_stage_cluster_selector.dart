// ignore_for_file: unused_element, unnecessary_cast

class RolloutSequenceStageClusterSelector {
  /// The label selector must be a valid CEL (Common Expression Language) expression which
  /// evaluates resource.labels.
  final String labelSelector;

  RolloutSequenceStageClusterSelector({
    required this.labelSelector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labelSelector'] = labelSelector;
    return map;
  }

  factory RolloutSequenceStageClusterSelector.fromMap(
      Map<String, dynamic> map) {
    return RolloutSequenceStageClusterSelector(
      labelSelector: map['labelSelector'] as String,
    );
  }
}
