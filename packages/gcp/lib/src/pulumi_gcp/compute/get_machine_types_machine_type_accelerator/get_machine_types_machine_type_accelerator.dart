// ignore_for_file: unused_element, unnecessary_cast

class GetMachineTypesMachineTypeAccelerator {
  /// Number of accelerator cards exposed to the guest.
  final int guestAcceleratorCount;

  /// The accelerator type resource name, not a full URL, e.g. `nvidia-tesla-t4`.
  final String guestAcceleratorType;

  GetMachineTypesMachineTypeAccelerator({
    required this.guestAcceleratorCount,
    required this.guestAcceleratorType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['guestAcceleratorCount'] = guestAcceleratorCount;
    map['guestAcceleratorType'] = guestAcceleratorType;
    return map;
  }

  factory GetMachineTypesMachineTypeAccelerator.fromMap(
      Map<String, dynamic> map) {
    return GetMachineTypesMachineTypeAccelerator(
      guestAcceleratorCount: map['guestAcceleratorCount'] as int,
      guestAcceleratorType: map['guestAcceleratorType'] as String,
    );
  }
}
