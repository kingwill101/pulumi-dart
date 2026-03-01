// ignore_for_file: unused_element, unnecessary_cast

class QueueHttpTargetHeaderOverrideHeader {
  /// The Key of the header.
  final String key;

  /// The Value of the header.
  final String value;

  /// Creates a new [QueueHttpTargetHeaderOverrideHeader].
  /// [key] The Key of the header.
  /// [value] The Value of the header.
  QueueHttpTargetHeaderOverrideHeader({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory QueueHttpTargetHeaderOverrideHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return QueueHttpTargetHeaderOverrideHeader(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
