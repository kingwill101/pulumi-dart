// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFolder.
class GetFolderResult {
  /// Optional capabilities configured for this folder.
  final List<String> configuredCapabilities;

  /// Timestamp when the Organization was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String createTime;
  final bool deletionProtection;

  /// The folder's display name.
  final String displayName;
  final String folder;
  final String folderId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Folder's current lifecycle state.
  final String lifecycleState;
  final bool? lookupOrganization;

  /// Management Project associated with this folder (if capability is enabled).
  final String managementProject;

  /// The resource name of the Folder in the form `folders/{folder_id}`.
  final String name;

  /// If `lookup_organization` is enable, the resource name of the Organization that the folder belongs.
  final String organization;

  /// The resource name of the parent Folder or Organization.
  final String parent;

  GetFolderResult({
    required this.configuredCapabilities,
    required this.createTime,
    required this.deletionProtection,
    required this.displayName,
    required this.folder,
    required this.folderId,
    required this.id,
    required this.lifecycleState,
    this.lookupOrganization,
    required this.managementProject,
    required this.name,
    required this.organization,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configuredCapabilities'] = configuredCapabilities;
    map['createTime'] = createTime;
    map['deletionProtection'] = deletionProtection;
    map['displayName'] = displayName;
    map['folder'] = folder;
    map['folderId'] = folderId;
    map['id'] = id;
    map['lifecycleState'] = lifecycleState;
    final lookupOrganizationValue = lookupOrganization;
    if (lookupOrganizationValue != null) {
      map['lookupOrganization'] = lookupOrganizationValue;
    }
    map['managementProject'] = managementProject;
    map['name'] = name;
    map['organization'] = organization;
    map['parent'] = parent;
    return map;
  }

  factory GetFolderResult.fromMap(Map<String, dynamic> map) {
    return GetFolderResult(
      configuredCapabilities:
          (map['configuredCapabilities'] as List).cast<String>(),
      createTime: map['createTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      displayName: map['displayName'] as String,
      folder: map['folder'] as String,
      folderId: map['folderId'] as String,
      id: map['id'] as String,
      lifecycleState: map['lifecycleState'] as String,
      lookupOrganization: map['lookupOrganization'] == null
          ? null
          : map['lookupOrganization'] as bool,
      managementProject: map['managementProject'] as String,
      name: map['name'] as String,
      organization: map['organization'] as String,
      parent: map['parent'] as String,
    );
  }
}
