// ignore_for_file: unused_element, unnecessary_cast

class AssociationTarget {
  /// Either `InstanceIds` or `tag:Tag Name` to specify an EC2 tag.
  final String key;

  /// User-defined criteria that maps to Key. A list of instance IDs or tag values.
  final List<String> values;

  /// Creates a new [AssociationTarget].
  /// [key] Either `InstanceIds` or `tag:Tag Name` to specify an EC2 tag.
  /// [values] User-defined criteria that maps to Key. A list of instance IDs or tag values.
  AssociationTarget({required this.key, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'values': values};
  }

  factory AssociationTarget.fromMap(Map<String, dynamic> map) {
    return AssociationTarget(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
