// ignore_for_file: unused_element, unnecessary_cast


class DiagnosticSettingEnabledMetric {
  /// The name of a Diagnostic Metric Category for this Resource.
  ///
  /// > **NOTE:** The Metric Categories available vary depending on the Resource being used. You may wish to use the `azure.monitoring.getDiagnosticCategories` Data Source to identify which categories are available for a given Resource.
  final String category;

  /// Creates a new [DiagnosticSettingEnabledMetric].
  /// [category] The name of a Diagnostic Metric Category for this Resource.
  DiagnosticSettingEnabledMetric({
    required this.category,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
    };
  }

  factory DiagnosticSettingEnabledMetric.fromMap(Map<String, dynamic> map) {
    return DiagnosticSettingEnabledMetric(
      category: map['category'] as String,
    );
  }
}

