// ignore_for_file: unused_element, unnecessary_cast


/// The hardware profile.
class HardwareProfile {
  /// The size of the VM
  final String? vmSize;

  /// Creates a new [HardwareProfile].
  /// [vmSize] The size of the VM
  HardwareProfile({
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmSize': ?vmSize,
    };
  }

  factory HardwareProfile.fromMap(Map<String, dynamic> map) {
    return HardwareProfile(
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
    );
  }
}

