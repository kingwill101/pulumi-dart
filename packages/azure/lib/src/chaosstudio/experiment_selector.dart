// ignore_for_file: unused_element, unnecessary_cast


class ExperimentSelector {
  /// A list of Chaos Studio Target IDs that should be part of this Selector.
  final List<String> chaosStudioTargetIds;
  /// The name of this Selector.
  final String name;

  /// Creates a new [ExperimentSelector].
  /// [chaosStudioTargetIds] A list of Chaos Studio Target IDs that should be part of this Selector.
  /// [name] The name of this Selector.
  ExperimentSelector({
    required this.chaosStudioTargetIds,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chaosStudioTargetIds': chaosStudioTargetIds,
      'name': name,
    };
  }

  factory ExperimentSelector.fromMap(Map<String, dynamic> map) {
    return ExperimentSelector(
      chaosStudioTargetIds: (map['chaosStudioTargetIds'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}

