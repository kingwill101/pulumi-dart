// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of Enhanced Security Monitoring feature.
class EnhancedSecurityMonitoringDefinitionResponse {
  final pulumi.Input<String>? value;

  /// Creates a new [EnhancedSecurityMonitoringDefinitionResponse].
  /// [value] Optional.
  EnhancedSecurityMonitoringDefinitionResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory EnhancedSecurityMonitoringDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return EnhancedSecurityMonitoringDefinitionResponse(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

