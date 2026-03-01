// ignore_for_file: unused_element, unnecessary_cast


class HybridMonitorSlsTaskAttachLabel {
  /// The tag key of the metric.
  final String? name;
  /// The tag value of the metric.
  final String? value;

  /// Creates a new [HybridMonitorSlsTaskAttachLabel].
  /// [name] The tag key of the metric.
  /// [value] The tag value of the metric.
  HybridMonitorSlsTaskAttachLabel({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory HybridMonitorSlsTaskAttachLabel.fromMap(Map<String, dynamic> map) {
    return HybridMonitorSlsTaskAttachLabel(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

