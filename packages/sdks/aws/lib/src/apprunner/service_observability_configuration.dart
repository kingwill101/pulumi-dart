// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceObservabilityConfiguration {
  /// ARN of the observability configuration that is associated with the service. Specified only when `observability_enabled` is `true`.
  final pulumi.Input<String>? observabilityConfigurationArn;
  /// When `true`, an observability configuration resource is associated with the service.
  final pulumi.Input<bool> observabilityEnabled;

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
      observabilityConfigurationArn: (() { final guardedValue = map['observabilityConfigurationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      observabilityEnabled: pulumi.Input.fromValue(map['observabilityEnabled'] as bool),
    );
  }
}

