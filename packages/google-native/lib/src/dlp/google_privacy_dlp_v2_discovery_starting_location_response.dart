// ignore_for_file: unused_element, unnecessary_cast

/// The location to begin a discovery scan. Denotes an organization ID or folder ID within an organization.
class GooglePrivacyDlpV2DiscoveryStartingLocationResponse {
  /// The ID of the Folder within an organization to scan.
  final String folderId;

  /// The ID of an organization to scan.
  final String organizationId;

  /// Creates a new [GooglePrivacyDlpV2DiscoveryStartingLocationResponse].
  /// [folderId] The ID of the Folder within an organization to scan.
  /// [organizationId] The ID of an organization to scan.
  GooglePrivacyDlpV2DiscoveryStartingLocationResponse({
    required this.folderId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GooglePrivacyDlpV2DiscoveryStartingLocationResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DiscoveryStartingLocationResponse(
      folderId: map['folderId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
