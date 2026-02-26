// ignore_for_file: unused_element, unnecessary_cast

class MetricMetricDescriptorLabel {
  /// A human-readable description for the label.
  final String? description;

  /// The label key.
  final String key;

  /// The type of data that can be assigned to the label.
  /// Default value is `STRING`.
  /// Possible values are: `BOOL`, `INT64`, `STRING`.
  final String? valueType;

  MetricMetricDescriptorLabel({
    this.description,
    required this.key,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['key'] = key;
    final valueTypeValue = valueType;
    if (valueTypeValue != null) {
      map['valueType'] = valueTypeValue;
    }
    return map;
  }

  factory MetricMetricDescriptorLabel.fromMap(Map<String, dynamic> map) {
    return MetricMetricDescriptorLabel(
      description:
          map['description'] == null ? null : map['description'] as String,
      key: map['key'] as String,
      valueType: map['valueType'] == null ? null : map['valueType'] as String,
    );
  }
}
