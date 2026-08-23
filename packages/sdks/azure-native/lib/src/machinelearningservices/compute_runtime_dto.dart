// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ComputeRuntimeDto {
  final pulumi.Input<String>? sparkRuntimeVersion;

  /// Creates a new [ComputeRuntimeDto].
  /// [sparkRuntimeVersion] Optional.
  const ComputeRuntimeDto({
    this.sparkRuntimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sparkRuntimeVersion': ?sparkRuntimeVersion,
    };
  }

  factory ComputeRuntimeDto.fromMap(Map<String, dynamic> map) {
    return ComputeRuntimeDto(
      sparkRuntimeVersion: (() { final guardedValue = map['sparkRuntimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
