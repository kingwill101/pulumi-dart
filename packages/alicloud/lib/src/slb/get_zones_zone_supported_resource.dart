// ignore_for_file: unused_element, unnecessary_cast


class GetZonesZoneSupportedResource {
  /// The type of IP address.
  final String addressIpVersion;
  /// The type of network.
  final String addressType;

  /// Creates a new [GetZonesZoneSupportedResource].
  /// [addressIpVersion] The type of IP address.
  /// [addressType] The type of network.
  GetZonesZoneSupportedResource({
    required this.addressIpVersion,
    required this.addressType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressIpVersion': addressIpVersion,
      'addressType': addressType,
    };
  }

  factory GetZonesZoneSupportedResource.fromMap(Map<String, dynamic> map) {
    return GetZonesZoneSupportedResource(
      addressIpVersion: map['addressIpVersion'] as String,
      addressType: map['addressType'] as String,
    );
  }
}

