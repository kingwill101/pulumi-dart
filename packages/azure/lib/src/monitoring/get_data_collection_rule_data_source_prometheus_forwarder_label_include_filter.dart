// ignore_for_file: unused_element, unnecessary_cast


class GetDataCollectionRuleDataSourcePrometheusForwarderLabelIncludeFilter {
  /// The label of the filter. This label should be unique across all `label_include_fileter` block. Possible value is `microsoft_metrics_include_label`.
  final String label;
  /// The value of the filter.
  final String value;

  /// Creates a new [GetDataCollectionRuleDataSourcePrometheusForwarderLabelIncludeFilter].
  /// [label] The label of the filter. This label should be unique across all `label_include_fileter` block. Possible value is `microsoft_metrics_include_label`.
  /// [value] The value of the filter.
  GetDataCollectionRuleDataSourcePrometheusForwarderLabelIncludeFilter({
    required this.label,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'value': value,
    };
  }

  factory GetDataCollectionRuleDataSourcePrometheusForwarderLabelIncludeFilter.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDataSourcePrometheusForwarderLabelIncludeFilter(
      label: map['label'] as String,
      value: map['value'] as String,
    );
  }
}

