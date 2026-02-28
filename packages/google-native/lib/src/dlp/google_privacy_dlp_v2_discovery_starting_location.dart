// ignore_for_file: unused_element, unnecessary_cast

/// The location to begin a discovery scan. Denotes an organization ID or folder ID within an organization.
class GooglePrivacyDlpV2DiscoveryStartingLocation {
  /// The ID of the Folder within an organization to scan.
  final String? folderId;

  /// The ID of an organization to scan.
  final String? organizationId;

  /// Creates a new [GooglePrivacyDlpV2DiscoveryStartingLocation].
  /// [folderId] The ID of the Folder within an organization to scan.
  /// [organizationId] The ID of an organization to scan.
  GooglePrivacyDlpV2DiscoveryStartingLocation({
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

  factory GooglePrivacyDlpV2DiscoveryStartingLocation.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DiscoveryStartingLocation(
      folderId: map['folderId'] == null ? null : map['folderId'] as String,
      organizationId: map['organizationId'] == null
          ? null
          : map['organizationId'] as String,
    );
  }
}
