// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigOrgConfigLocation {
  /// The ID for the folder within an organization to scan
  final String? folderId;

  /// The ID of an organization to scan
  final String? organizationId;

  /// Creates a new [PreventionDiscoveryConfigOrgConfigLocation].
  /// [folderId] The ID for the folder within an organization to scan
  /// [organizationId] The ID of an organization to scan
  PreventionDiscoveryConfigOrgConfigLocation({
    this.folderId,
    this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final folderIdValue = folderId;
    if (folderIdValue != null) {
      map['folderId'] = folderIdValue;
    }
    final organizationIdValue = organizationId;
    if (organizationIdValue != null) {
      map['organizationId'] = organizationIdValue;
    }
    return map;
  }

  factory PreventionDiscoveryConfigOrgConfigLocation.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigOrgConfigLocation(
      folderId: map['folderId'] == null ? null : map['folderId'] as String,
      organizationId: map['organizationId'] == null
          ? null
          : map['organizationId'] as String,
    );
  }
}
