// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GenerateResourceLimits properties
class GenerateResourceLimitsResponse {
  /// The toggle to enable/disable cpu resource limits.
  final pulumi.Input<String>? cpu;

  /// Creates a new [GenerateResourceLimitsResponse].
  /// [cpu] The toggle to enable/disable cpu resource limits.
  GenerateResourceLimitsResponse({
    this.cpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
    };
  }

  factory GenerateResourceLimitsResponse.fromMap(Map<String, dynamic> map) {
    return GenerateResourceLimitsResponse(
      cpu: map['cpu'] == null ? null : (map['cpu'] as String).input(),
    );
  }
}

