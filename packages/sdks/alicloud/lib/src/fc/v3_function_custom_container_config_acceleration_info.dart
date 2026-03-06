// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3FunctionCustomContainerConfigAccelerationInfo {
  /// Image Acceleration Status (Deprecated)
  final pulumi.Input<String>? status;

  /// Creates a new [V3FunctionCustomContainerConfigAccelerationInfo].
  /// [status] Image Acceleration Status (Deprecated)
  const V3FunctionCustomContainerConfigAccelerationInfo({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory V3FunctionCustomContainerConfigAccelerationInfo.fromMap(Map<String, dynamic> map) {
    return V3FunctionCustomContainerConfigAccelerationInfo(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

