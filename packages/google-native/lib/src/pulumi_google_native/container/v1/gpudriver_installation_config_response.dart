// ignore_for_file: unused_element, unnecessary_cast

/// GPUDriverInstallationConfig specifies the version of GPU driver to be auto installed.
class GPUDriverInstallationConfigResponse {
  /// Mode for how the GPU driver is installed.
  final String gpuDriverVersion;

  GPUDriverInstallationConfigResponse({
    required this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gpuDriverVersion'] = gpuDriverVersion;
    return map;
  }

  factory GPUDriverInstallationConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GPUDriverInstallationConfigResponse(
      gpuDriverVersion: map['gpuDriverVersion'] as String,
    );
  }
}
