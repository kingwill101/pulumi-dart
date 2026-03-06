// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ObservabilityConfigurationTraceConfiguration {
  /// Implementation provider chosen for tracing App Runner services. Valid values: `AWSXRAY`.
  final pulumi.Input<String>? vendor;

  /// Creates a new [ObservabilityConfigurationTraceConfiguration].
  /// [vendor] Implementation provider chosen for tracing App Runner services. Valid values: `AWSXRAY`.
  const ObservabilityConfigurationTraceConfiguration({
    this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vendor': ?vendor,
    };
  }

  factory ObservabilityConfigurationTraceConfiguration.fromMap(Map<String, dynamic> map) {
    return ObservabilityConfigurationTraceConfiguration(
      vendor: (() { final guardedValue = map['vendor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

