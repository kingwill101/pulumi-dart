// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EciScalingConfigurationSecurityContextSysctl {
  /// The system name of the security context in which the elastic container instance is run.
  final pulumi.Input<String>? name;
  /// The system value of the security context in which the elastic container instance is run.
  final pulumi.Input<String>? value;

  /// Creates a new [EciScalingConfigurationSecurityContextSysctl].
  /// [name] The system name of the security context in which the elastic container instance is run.
  /// [value] The system value of the security context in which the elastic container instance is run.
  EciScalingConfigurationSecurityContextSysctl({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory EciScalingConfigurationSecurityContextSysctl.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationSecurityContextSysctl(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

