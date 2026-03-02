// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Compute runtime config for feature store type workspace.
class ComputeRuntimeDtoResponse {
  final pulumi.Input<String>? sparkRuntimeVersion;

  /// Creates a new [ComputeRuntimeDtoResponse].
  /// [sparkRuntimeVersion] Optional.
  ComputeRuntimeDtoResponse({
    this.sparkRuntimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sparkRuntimeVersion': ?sparkRuntimeVersion,
    };
  }

  factory ComputeRuntimeDtoResponse.fromMap(Map<String, dynamic> map) {
    return ComputeRuntimeDtoResponse(
      sparkRuntimeVersion: map['sparkRuntimeVersion'] == null ? null : (map['sparkRuntimeVersion'] as String).input(),
    );
  }
}

