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
    final map = <String, dynamic>{};
    final enableDisplayValue = enableDisplay;
    if (enableDisplayValue != null) {
      map['enableDisplay'] = enableDisplayValue;
    }
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesDisplayDevice(
      enableDisplay:
          map['enableDisplay'] == null ? null : map['enableDisplay'] as bool,
    );
  }
}
