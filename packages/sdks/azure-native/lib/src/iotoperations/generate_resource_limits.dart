// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GenerateResourceLimits properties
class GenerateResourceLimits {
  /// The toggle to enable/disable cpu resource limits.
  final pulumi.Input<String>? cpu;

  /// Creates a new [GenerateResourceLimits].
  /// [cpu] The toggle to enable/disable cpu resource limits.
  GenerateResourceLimits({
    this.cpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
    };
  }

  factory GenerateResourceLimits.fromMap(Map<String, dynamic> map) {
    return GenerateResourceLimits(
      cpu: map['cpu'] == null ? null : (map['cpu'] as String).input(),
    );
  }
}

