// ignore_for_file: unused_element, unnecessary_cast


/// The hardware profile.
class HardwareProfileResponse {
  /// The size of the VM
  final String? vmSize;

  /// Creates a new [HardwareProfileResponse].
  /// [vmSize] The size of the VM
  HardwareProfileResponse({
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmSize': ?vmSize,
    };
  }

  factory HardwareProfileResponse.fromMap(Map<String, dynamic> map) {
    return HardwareProfileResponse(
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
    );
  }
}

