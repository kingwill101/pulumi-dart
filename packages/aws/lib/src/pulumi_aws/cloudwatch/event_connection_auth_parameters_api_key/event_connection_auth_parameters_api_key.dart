// ignore_for_file: unused_element, unnecessary_cast

class EventConnectionAuthParametersApiKey {
  /// Header Name.
  final String key;

  /// Header Value. Created and stored in AWS Secrets Manager.
  final String value;

  EventConnectionAuthParametersApiKey({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory EventConnectionAuthParametersApiKey.fromMap(
      Map<String, dynamic> map) {
    return EventConnectionAuthParametersApiKey(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
