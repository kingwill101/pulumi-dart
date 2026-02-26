// ignore_for_file: unused_element, unnecessary_cast

class InstanceSchedulingNodeAffinity {
  /// The key for the node affinity label.
  final String key;

  /// The operator. Can be `IN` for node-affinities
  /// or `NOT_IN` for anti-affinities.
  final String operator;

  /// The values for the node affinity label.
  final List<String> values;

  InstanceSchedulingNodeAffinity({
    required this.key,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['operator'] = operator;
    map['values'] = values;
    return map;
  }

  factory InstanceSchedulingNodeAffinity.fromMap(Map<String, dynamic> map) {
    return InstanceSchedulingNodeAffinity(
      key: map['key'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
