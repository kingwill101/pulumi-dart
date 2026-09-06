// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of Enhanced Security Monitoring feature.
class EnhancedSecurityMonitoringDefinitionResponse {
  final pulumi.Input<String?>? value;

  /// Creates a new [EnhancedSecurityMonitoringDefinitionResponse].
  /// [value] Optional.
  const EnhancedSecurityMonitoringDefinitionResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory EnhancedSecurityMonitoringDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return EnhancedSecurityMonitoringDefinitionResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
