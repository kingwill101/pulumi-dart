// ignore_for_file: unused_element, unnecessary_cast

class InstanceFromMachineImageGuestAccelerator {
  /// The number of the guest accelerator cards exposed to this instance.
  final int count;

  /// The accelerator type resource exposed to this instance. E.g. nvidia-tesla-k80.
  final String type;

  /// Creates a new [InstanceFromMachineImageGuestAccelerator].
  /// [count] The number of the guest accelerator cards exposed to this instance.
  /// [type] The accelerator type resource exposed to this instance. E.g. nvidia-tesla-k80.
  InstanceFromMachineImageGuestAccelerator({
    required this.count,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['type'] = type;
    return map;
  }

  factory InstanceFromMachineImageGuestAccelerator.fromMap(
      Map<String, dynamic> map) {
    return InstanceFromMachineImageGuestAccelerator(
      count: map['count'] as int,
      type: map['type'] as String,
    );
  }
}
