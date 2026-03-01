// ignore_for_file: unused_element, unnecessary_cast

/// GPUDriverInstallationConfig specifies the version of GPU driver to be auto installed.
class GPUDriverInstallationConfigResponseContainerV1beta1 {
  /// Mode for how the GPU driver is installed.
  final String gpuDriverVersion;

  /// Creates a new [GPUDriverInstallationConfigResponseContainerV1beta1].
  /// [gpuDriverVersion] Mode for how the GPU driver is installed.
  GPUDriverInstallationConfigResponseContainerV1beta1({
    required this.gpuDriverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'gpuDriverVersion': gpuDriverVersion};
  }

  factory GPUDriverInstallationConfigResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return GPUDriverInstallationConfigResponseContainerV1beta1(
      gpuDriverVersion: map['gpuDriverVersion'] as String,
    );
  }
}
