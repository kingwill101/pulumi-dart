// ignore_for_file: unused_element, unnecessary_cast


class GetHybridMonitorDatasDataLabel {
  /// Label key.
  final String key;
  /// Label value.
  final String value;

  /// Creates a new [GetHybridMonitorDatasDataLabel].
  /// [key] Label key.
  /// [value] Label value.
  GetHybridMonitorDatasDataLabel({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetHybridMonitorDatasDataLabel.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorDatasDataLabel(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

