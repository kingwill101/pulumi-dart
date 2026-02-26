// ignore_for_file: unused_element, unnecessary_cast

/// Label object for CompositeTypes
class CompositeTypeLabelEntryResponse {
  /// Key of the label
  final String key;

  /// Value of the label
  final String value;

  CompositeTypeLabelEntryResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory CompositeTypeLabelEntryResponse.fromMap(Map<String, dynamic> map) {
    return CompositeTypeLabelEntryResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
