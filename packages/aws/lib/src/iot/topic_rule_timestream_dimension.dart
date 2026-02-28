// ignore_for_file: unused_element, unnecessary_cast


class TopicRuleTimestreamDimension {
  /// The metadata dimension name. This is the name of the column in the Amazon Timestream database table record.
  final String name;
  /// The value to write in this column of the database record.
  final String value;

  /// Creates a new [TopicRuleTimestreamDimension].
  /// [name] The metadata dimension name. This is the name of the column in the Amazon Timestream database table record.
  /// [value] The value to write in this column of the database record.
  TopicRuleTimestreamDimension({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory TopicRuleTimestreamDimension.fromMap(Map<String, dynamic> map) {
    return TopicRuleTimestreamDimension(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

