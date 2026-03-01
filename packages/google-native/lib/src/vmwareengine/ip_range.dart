// ignore_for_file: unused_element, unnecessary_cast

/// An IP range provided in any one of the supported formats.
class IpRange {
  /// The name of an `ExternalAddress` resource. The external address must have been reserved in the scope of this external access rule's parent network policy. Provide the external address name in the form of `projects/{project}/locations/{location}/privateClouds/{private_cloud}/externalAddresses/{external_address}`. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/externalAddresses/my-address`.
  final String? externalAddress;

  /// A single IP address. For example: `10.0.0.5`.
  final String? ipAddress;

  /// An IP address range in the CIDR format. For example: `10.0.0.0/24`.
  final String? ipAddressRange;

  /// Creates a new [IpRange].
  /// [externalAddress] The name of an `ExternalAddress` resource. The external address must have been reserved in the scope of this external access rule's parent network policy. Provide the external address name in the form of `projects/{project}/locations/{location}/privateClouds/{private_cloud}/externalAddresses/{external_address}`. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/externalAddresses/my-address`.
  /// [ipAddress] A single IP address. For example: `10.0.0.5`.
  /// [ipAddressRange] An IP address range in the CIDR format. For example: `10.0.0.0/24`.
  IpRange({this.externalAddress, this.ipAddress, this.ipAddressRange});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalAddress': ?externalAddress,
      'ipAddress': ?ipAddress,
      'ipAddressRange': ?ipAddressRange,
    };
  }

  factory IpRange.fromMap(Map<String, dynamic> map) {
    return IpRange(
      externalAddress: map['externalAddress'] == null
          ? null
          : map['externalAddress'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipAddressRange: map['ipAddressRange'] == null
          ? null
          : map['ipAddressRange'] as String,
    );
  }
}
