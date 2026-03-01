// ignore_for_file: unused_element, unnecessary_cast


class AlertJoinConfiguration {
  /// Join condition.
  final String condition;
  /// Join type, including cross_join, inner_join, left_join, right_join, full_join, left_exclude, right_exclude, concat, no_join.
  final String type;

  /// Creates a new [AlertJoinConfiguration].
  /// [condition] Join condition.
  /// [type] Join type, including cross_join, inner_join, left_join, right_join, full_join, left_exclude, right_exclude, concat, no_join.
  AlertJoinConfiguration({
    required this.condition,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'type': type,
    };
  }

  factory AlertJoinConfiguration.fromMap(Map<String, dynamic> map) {
    return AlertJoinConfiguration(
      condition: map['condition'] as String,
      type: map['type'] as String,
    );
  }
}

