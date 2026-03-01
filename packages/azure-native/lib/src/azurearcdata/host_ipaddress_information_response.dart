// ignore_for_file: unused_element, unnecessary_cast


/// IP address and subnet mask.
class HostIPAddressInformationResponse {
  /// IP address
  final String ipAddress;
  /// Subnet mask
  final String subnetMask;

  /// Creates a new [HostIPAddressInformationResponse].
  /// [ipAddress] IP address
  /// [subnetMask] Subnet mask
  HostIPAddressInformationResponse({
    required this.ipAddress,
    required this.subnetMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'subnetMask': subnetMask,
    };
  }

  factory HostIPAddressInformationResponse.fromMap(Map<String, dynamic> map) {
    return HostIPAddressInformationResponse(
      ipAddress: map['ipAddress'] as String,
      subnetMask: map['subnetMask'] as String,
    );
  }
}

