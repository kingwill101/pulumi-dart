// ignore_for_file: unused_element, unnecessary_cast


class RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice {
  /// Optional. Enables display for the Compute Engine VM.
  final bool? enableDisplay;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice].
  /// [enableDisplay] Optional. Enables display for the Compute Engine VM.
  RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice({
    this.enableDisplay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDisplay': ?enableDisplay,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice(
      enableDisplay: map['enableDisplay'] == null ? null : map['enableDisplay'] as bool,
    );
  }
}

