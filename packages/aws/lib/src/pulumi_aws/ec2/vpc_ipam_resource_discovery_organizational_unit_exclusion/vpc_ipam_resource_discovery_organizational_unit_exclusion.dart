// ignore_for_file: unused_element, unnecessary_cast

class VpcIpamResourceDiscoveryOrganizationalUnitExclusion {
  /// AWS Organizations entity path. Build the path for the OU(s) using AWS Organizations IDs separated by a `/`. Include all child OUs by ending the path with `/*`.
  final String organizationsEntityPath;

  VpcIpamResourceDiscoveryOrganizationalUnitExclusion({
    required this.organizationsEntityPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationsEntityPath'] = organizationsEntityPath;
    return map;
  }

  factory VpcIpamResourceDiscoveryOrganizationalUnitExclusion.fromMap(
      Map<String, dynamic> map) {
    return VpcIpamResourceDiscoveryOrganizationalUnitExclusion(
      organizationsEntityPath: map['organizationsEntityPath'] as String,
    );
  }
}
