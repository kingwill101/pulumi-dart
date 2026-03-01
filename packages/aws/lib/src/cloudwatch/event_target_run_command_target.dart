// ignore_for_file: unused_element, unnecessary_cast

class EventTargetRunCommandTarget {
  /// Can be either `tag:tag-key` or `InstanceIds`.
  final String key;

  /// If Key is `tag:tag-key`, Values is a list of tag values. If Key is `InstanceIds`, Values is a list of Amazon EC2 instance IDs.
  final List<String> values;

  /// Creates a new [EventTargetRunCommandTarget].
  /// [key] Can be either `tag:tag-key` or `InstanceIds`.
  /// [values] If Key is `tag:tag-key`, Values is a list of tag values. If Key is `InstanceIds`, Values is a list of Amazon EC2 instance IDs.
  EventTargetRunCommandTarget({required this.key, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'values': values};
  }

  factory EventTargetRunCommandTarget.fromMap(Map<String, dynamic> map) {
    return EventTargetRunCommandTarget(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
