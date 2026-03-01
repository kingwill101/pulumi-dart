// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceTemplateSchedulingNodeAffinity {
  /// The key for the node affinity label.
  final String key;

  /// The operator. Can be `IN` for node-affinities
  /// or `NOT_IN` for anti-affinities.
  final String operator;
  final List<String> values;

  /// Creates a new [GetRegionInstanceTemplateSchedulingNodeAffinity].
  /// [key] The key for the node affinity label.
  /// [operator] The operator. Can be `IN` for node-affinities
  /// [values] Required.
  GetRegionInstanceTemplateSchedulingNodeAffinity({
    required this.key,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'operator': operator,
      'values': values,
    };
  }

  factory GetRegionInstanceTemplateSchedulingNodeAffinity.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionInstanceTemplateSchedulingNodeAffinity(
      key: map['key'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
