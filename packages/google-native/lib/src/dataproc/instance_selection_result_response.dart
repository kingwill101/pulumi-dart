// ignore_for_file: unused_element, unnecessary_cast

/// Defines a mapping from machine types to the number of VMs that are created with each machine type.
class InstanceSelectionResultResponse {
  /// Full machine-type names, e.g. "n1-standard-16".
  final String machineType;

  /// Number of VM provisioned with the machine_type.
  final int vmCount;

  /// Creates a new [InstanceSelectionResultResponse].
  /// [machineType] Full machine-type names, e.g. "n1-standard-16".
  /// [vmCount] Number of VM provisioned with the machine_type.
  InstanceSelectionResultResponse({
    required this.machineType,
    required this.vmCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['machineType'] = machineType;
    map['vmCount'] = vmCount;
    return map;
  }

  factory InstanceSelectionResultResponse.fromMap(Map<String, dynamic> map) {
    return InstanceSelectionResultResponse(
      machineType: map['machineType'] as String,
      vmCount: map['vmCount'] as int,
    );
  }
}
