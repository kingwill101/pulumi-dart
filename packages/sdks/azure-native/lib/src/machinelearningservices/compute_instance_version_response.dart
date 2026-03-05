// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Version of computeInstance.
class ComputeInstanceVersionResponse {
  /// Runtime of compute instance.
  final pulumi.Input<String>? runtime;

  /// Creates a new [ComputeInstanceVersionResponse].
  /// [runtime] Runtime of compute instance.
  ComputeInstanceVersionResponse({
    this.runtime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtime': ?runtime,
    };
  }

  factory ComputeInstanceVersionResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceVersionResponse(
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

