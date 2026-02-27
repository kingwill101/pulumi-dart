// ignore_for_file: unused_element, unnecessary_cast

class ServiceObservabilityConfiguration {
  /// ARN of the observability configuration that is associated with the service. Specified only when `observability_enabled` is `true`.
  final String? observabilityConfigurationArn;

  /// When `true`, an observability configuration resource is associated with the service.
  final bool observabilityEnabled;

  ServiceObservabilityConfiguration({
    this.observabilityConfigurationArn,
    required this.observabilityEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final observabilityConfigurationArnValue = observabilityConfigurationArn;
    if (observabilityConfigurationArnValue != null) {
      map['observabilityConfigurationArn'] = observabilityConfigurationArnValue;
    }
    map['observabilityEnabled'] = observabilityEnabled;
    return map;
  }

  factory ServiceObservabilityConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceObservabilityConfiguration(
      observabilityConfigurationArn:
          map['observabilityConfigurationArn'] == null
              ? null
              : map['observabilityConfigurationArn'] as String,
      observabilityEnabled: map['observabilityEnabled'] as bool,
    );
  }
}
