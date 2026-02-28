// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceGroupManagerStandbyPolicy {
  /// Specifies the number of seconds that the MIG should wait to suspend or stop a VM after that VM was created. The initial delay gives the initialization script the time to prepare your VM for a quick scale out. The value of initial delay must be between 0 and 3600 seconds. The default value is 0.
  final int initialDelaySec;

  /// Defines how a MIG resumes or starts VMs from a standby pool when the group scales out. The default mode is "MANUAL".
  final String mode;

  /// Creates a new [GetRegionInstanceGroupManagerStandbyPolicy].
  /// [initialDelaySec] Specifies the number of seconds that the MIG should wait to suspend or stop a VM after that VM was created. The initial delay gives the initialization script the time to prepare your VM for a quick scale out. The value of initial delay must be between 0 and 3600 seconds. The default value is 0.
  /// [mode] Defines how a MIG resumes or starts VMs from a standby pool when the group scales out. The default mode is "MANUAL".
  GetRegionInstanceGroupManagerStandbyPolicy({
    required this.initialDelaySec,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['initialDelaySec'] = initialDelaySec;
    map['mode'] = mode;
    return map;
  }

  factory GetRegionInstanceGroupManagerStandbyPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerStandbyPolicy(
      initialDelaySec: map['initialDelaySec'] as int,
      mode: map['mode'] as String,
    );
  }
}
