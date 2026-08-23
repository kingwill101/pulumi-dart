// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ComputeRuntimeDtoResponse {
  final pulumi.Input<String>? sparkRuntimeVersion;

  /// Creates a new [ComputeRuntimeDtoResponse].
  /// [sparkRuntimeVersion] Optional.
  const ComputeRuntimeDtoResponse({
    this.sparkRuntimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sparkRuntimeVersion': ?sparkRuntimeVersion,
    };
  }

  factory ComputeRuntimeDtoResponse.fromMap(Map<String, dynamic> map) {
    return ComputeRuntimeDtoResponse(
      sparkRuntimeVersion: (() { final guardedValue = map['sparkRuntimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
