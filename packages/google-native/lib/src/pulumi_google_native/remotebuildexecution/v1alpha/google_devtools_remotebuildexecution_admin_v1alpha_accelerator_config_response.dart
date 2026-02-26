// ignore_for_file: unused_element, unnecessary_cast

/// AcceleratorConfig defines the accelerator cards to attach to the VM.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfigResponse {
  /// The number of guest accelerator cards exposed to each VM.
  final String acceleratorCount;

  /// The type of accelerator to attach to each VM, e.g. "nvidia-tesla-k80" for nVidia Tesla K80.
  final String acceleratorType;

  GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfigResponse({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorCount'] = acceleratorCount;
    map['acceleratorType'] = acceleratorType;
    return map;
  }

  factory GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfigResponse(
      acceleratorCount: map['acceleratorCount'] as String,
      acceleratorType: map['acceleratorType'] as String,
    );
  }
}
