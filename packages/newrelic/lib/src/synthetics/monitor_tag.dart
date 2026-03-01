// ignore_for_file: unused_element, unnecessary_cast


class MonitorTag {
  /// Name of the tag key.
  final String key;
  /// Values associated with the tag key.
  final List<String> values;

  /// Creates a new [MonitorTag].
  /// [key] Name of the tag key.
  /// [values] Values associated with the tag key.
  MonitorTag({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory MonitorTag.fromMap(Map<String, dynamic> map) {
    return MonitorTag(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

