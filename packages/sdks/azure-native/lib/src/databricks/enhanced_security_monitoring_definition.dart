// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of Enhanced Security Monitoring feature.
class EnhancedSecurityMonitoringDefinition {
  final pulumi.Input<String>? value;

  /// Creates a new [EnhancedSecurityMonitoringDefinition].
  /// [value] Optional.
  EnhancedSecurityMonitoringDefinition({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory EnhancedSecurityMonitoringDefinition.fromMap(Map<String, dynamic> map) {
    return EnhancedSecurityMonitoringDefinition(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

