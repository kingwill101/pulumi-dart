// ignore_for_file: unused_element, unnecessary_cast


class InstanceFromMachineImageSchedulingOnInstanceStopAction {
  /// If true, the contents of any attached Local SSD disks will be discarded.
  final bool? discardLocalSsd;

  /// Creates a new [InstanceFromMachineImageSchedulingOnInstanceStopAction].
  /// [discardLocalSsd] If true, the contents of any attached Local SSD disks will be discarded.
  InstanceFromMachineImageSchedulingOnInstanceStopAction({
    this.discardLocalSsd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discardLocalSsd': ?discardLocalSsd,
    };
  }

  factory InstanceFromMachineImageSchedulingOnInstanceStopAction.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageSchedulingOnInstanceStopAction(
      discardLocalSsd: map['discardLocalSsd'] == null ? null : map['discardLocalSsd'] as bool,
    );
  }
}

