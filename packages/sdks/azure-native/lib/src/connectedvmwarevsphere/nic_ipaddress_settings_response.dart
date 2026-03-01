// ignore_for_file: unused_element, unnecessary_cast


/// IP address information for a virtual network adapter reported by the fabric.
class NicIPAddressSettingsResponse {
  /// Gets the ip address allocation method.
  final String allocationMethod;
  /// Gets the ip address for the nic.
  final String ipAddress;
  /// Gets the mask.
  final String subnetMask;

  /// Creates a new [NicIPAddressSettingsResponse].
  /// [allocationMethod] Gets the ip address allocation method.
  /// [ipAddress] Gets the ip address for the nic.
  /// [subnetMask] Gets the mask.
  NicIPAddressSettingsResponse({
    required this.allocationMethod,
    required this.ipAddress,
    required this.subnetMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationMethod': allocationMethod,
      'ipAddress': ipAddress,
      'subnetMask': subnetMask,
    };
  }

  factory NicIPAddressSettingsResponse.fromMap(Map<String, dynamic> map) {
    return NicIPAddressSettingsResponse(
      allocationMethod: map['allocationMethod'] as String,
      ipAddress: map['ipAddress'] as String,
      subnetMask: map['subnetMask'] as String,
    );
  }
}

