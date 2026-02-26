// ignore_for_file: unused_element, unnecessary_cast

class ObservabilityConfigurationTraceConfiguration {
  /// Implementation provider chosen for tracing App Runner services. Valid values: `AWSXRAY`.
  final String? vendor;

  ObservabilityConfigurationTraceConfiguration({
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final vendorValue = vendor;
    if (vendorValue != null) {
      map['vendor'] = vendorValue;
    }
    return map;
  }

  factory ObservabilityConfigurationTraceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ObservabilityConfigurationTraceConfiguration(
      vendor: map['vendor'] == null ? null : map['vendor'] as String,
    );
  }
}
