// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceVirtualPortParamsVnTag8011qbh {
  /// Sets the profile ID for the VNTag8011QBH virtual port parameters.
  final String? profileId;

  /// Creates a new [DomainDevicesInterfaceVirtualPortParamsVnTag8011qbh].
  /// [profileId] Sets the profile ID for the VNTag8011QBH virtual port parameters.
  DomainDevicesInterfaceVirtualPortParamsVnTag8011qbh({
    this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileId': ?profileId,
    };
  }

  factory DomainDevicesInterfaceVirtualPortParamsVnTag8011qbh.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceVirtualPortParamsVnTag8011qbh(
      profileId: map['profileId'] == null ? null : map['profileId'] as String,
    );
  }
}

