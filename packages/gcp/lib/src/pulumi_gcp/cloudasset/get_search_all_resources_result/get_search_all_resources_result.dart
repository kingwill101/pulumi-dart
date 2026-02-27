// ignore_for_file: unused_element, unnecessary_cast

class GetSearchAllResourcesResult {
  /// The type of this resource.
  final String assetType;

  /// The create timestamp of this resource, at which the resource was created.
  final String createTime;

  /// One or more paragraphs of text description of this resource. Maximum length could be up to 1M bytes.
  final String description;

  /// The display name of this resource.
  final String displayName;

  /// The folder(s) that this resource belongs to, in the form of `folders/{FOLDER_NUMBER}`. This field is available when the resource belongs to one or more folders.
  final List<String> folders;

  /// The Cloud KMS CryptoKey names or CryptoKeyVersion names. This field is available only when the resource's Protobuf contains it.
  final List<String> kmsKeys;

  /// Labels associated with this resource.
  final Map<String, String> labels;

  /// Location can be `global`, regional like `us-east1`, or zonal like `us-west1-b`.
  final String location;

  /// The full resource name of this resource.. See [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more information.
  final String name;

  /// Network tags associated with this resource.
  final List<String> networkTags;

  /// The organization that this resource belongs to, in the form of `organizations/{ORGANIZATION_NUMBER}`. This field is available when the resource belongs to an organization.
  final String organization;

  /// The type of this resource's immediate parent, if there is one.
  final String parentAssetType;

  /// The full resource name of this resource's parent, if it has one.
  final String parentFullResourceName;

  /// The project that this resource belongs to, in the form of `projects/{project_number}`.
  final String project;

  /// The state of this resource.
  final String state;

  /// The last update timestamp of this resource, at which the resource was last modified or deleted.
  final String updateTime;

  GetSearchAllResourcesResult({
    required this.assetType,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.folders,
    required this.kmsKeys,
    required this.labels,
    required this.location,
    required this.name,
    required this.networkTags,
    required this.organization,
    required this.parentAssetType,
    required this.parentFullResourceName,
    required this.project,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assetType'] = assetType;
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['folders'] = folders;
    map['kmsKeys'] = kmsKeys;
    map['labels'] = labels;
    map['location'] = location;
    map['name'] = name;
    map['networkTags'] = networkTags;
    map['organization'] = organization;
    map['parentAssetType'] = parentAssetType;
    map['parentFullResourceName'] = parentFullResourceName;
    map['project'] = project;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetSearchAllResourcesResult.fromMap(Map<String, dynamic> map) {
    return GetSearchAllResourcesResult(
      assetType: map['assetType'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      folders: (map['folders'] as List).cast<String>(),
      kmsKeys: (map['kmsKeys'] as List).cast<String>(),
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      networkTags: (map['networkTags'] as List).cast<String>(),
      organization: map['organization'] as String,
      parentAssetType: map['parentAssetType'] as String,
      parentFullResourceName: map['parentFullResourceName'] as String,
      project: map['project'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
