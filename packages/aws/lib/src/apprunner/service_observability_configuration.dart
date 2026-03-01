// ignore_for_file: unused_element, unnecessary_cast

class ServiceObservabilityConfiguration {
  /// ARN of the observability configuration that is associated with the service. Specified only when `observability_enabled` is `true`.
  final String? observabilityConfigurationArn;

  /// When `true`, an observability configuration resource is associated with the service.
  final bool observabilityEnabled;

  /// Creates a new [ServiceObservabilityConfiguration].
  /// [observabilityConfigurationArn] ARN of the observability configuration that is associated with the service. Specified only when `observability_enabled` is `true`.
  /// [observabilityEnabled] When `true`, an observability configuration resource is associated with the service.
  ServiceObservabilityConfiguration({
    this.observabilityConfigurationArn,
    required this.observabilityEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'observabilityConfigurationArn': ?observabilityConfigurationArn,
      'observabilityEnabled': observabilityEnabled,
    };
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
