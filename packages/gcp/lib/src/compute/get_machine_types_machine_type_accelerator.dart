// ignore_for_file: unused_element, unnecessary_cast

class GetMachineTypesMachineTypeAccelerator {
  /// Number of accelerator cards exposed to the guest.
  final int guestAcceleratorCount;

  /// The accelerator type resource name, not a full URL, e.g. `nvidia-tesla-t4`.
  final String guestAcceleratorType;

  /// Creates a new [GetMachineTypesMachineTypeAccelerator].
  /// [guestAcceleratorCount] Number of accelerator cards exposed to the guest.
  /// [guestAcceleratorType] The accelerator type resource name, not a full URL, e.g. `nvidia-tesla-t4`.
  GetMachineTypesMachineTypeAccelerator({
    required this.guestAcceleratorCount,
    required this.guestAcceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestAcceleratorCount': guestAcceleratorCount,
      'guestAcceleratorType': guestAcceleratorType,
    };
  }

  factory GetMachineTypesMachineTypeAccelerator.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetMachineTypesMachineTypeAccelerator(
      guestAcceleratorCount: map['guestAcceleratorCount'] as int,
      guestAcceleratorType: map['guestAcceleratorType'] as String,
    );
  }
}
