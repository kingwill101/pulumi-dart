// ignore_for_file: unused_element, unnecessary_cast


/// Compute runtime config for feature store type workspace.
class ComputeRuntimeDto {
  final String? sparkRuntimeVersion;

  /// Creates a new [ComputeRuntimeDto].
  /// [sparkRuntimeVersion] Optional.
  ComputeRuntimeDto({
    this.sparkRuntimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sparkRuntimeVersion': ?sparkRuntimeVersion,
    };
  }

  factory ComputeRuntimeDto.fromMap(Map<String, dynamic> map) {
    return ComputeRuntimeDto(
      sparkRuntimeVersion: map['sparkRuntimeVersion'] == null ? null : map['sparkRuntimeVersion'] as String,
    );
  }
}

