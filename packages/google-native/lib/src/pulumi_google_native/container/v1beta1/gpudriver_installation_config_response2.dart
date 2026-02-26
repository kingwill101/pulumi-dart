// ignore_for_file: unused_element, unnecessary_cast

/// GPUDriverInstallationConfig specifies the version of GPU driver to be auto installed.
class GPUDriverInstallationConfigResponse2 {
  /// Mode for how the GPU driver is installed.
  final String gpuDriverVersion;

  GPUDriverInstallationConfigResponse2({
    required this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gpuDriverVersion'] = gpuDriverVersion;
    return map;
  }

  factory GPUDriverInstallationConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return GPUDriverInstallationConfigResponse2(
      gpuDriverVersion: map['gpuDriverVersion'] as String,
    );
  }
}
