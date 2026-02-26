// ignore_for_file: unused_element, unnecessary_cast

class GetResourcesSearchAllResult {
  /// Additional searchable attributes of this resource. Informational only. The exact set of attributes is subject to change. For example: project id, DNS name etc.
  final List<String> additionalAttributes;

  /// The type of this resource.
  final String assetType;

  /// One or more paragraphs of text description of this resource. Maximum length could be up to 1M bytes.
  final String description;

  /// The display name of this resource.
  final String displayName;

  /// Labels associated with this resource.
  final Map<String, String> labels;

  /// Location can be <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span>, regional like `us-east1`, or zonal like `us-west1-b`.
  final String location;

  /// The full resource name. See [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more information.
  final String name;

  /// Network tags associated with this resource.
  final List<String> networkTags;

  /// The project that this resource belongs to, in the form of `projects/{project_number}`.
  final String project;

  GetResourcesSearchAllResult({
    required this.additionalAttributes,
    required this.assetType,
    required this.description,
    required this.displayName,
    required this.labels,
    required this.location,
    required this.name,
    required this.networkTags,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalAttributes'] = additionalAttributes;
    map['assetType'] = assetType;
    map['description'] = description;
    map['displayName'] = displayName;
    map['labels'] = labels;
    map['location'] = location;
    map['name'] = name;
    map['networkTags'] = networkTags;
    map['project'] = project;
    return map;
  }

  factory GetResourcesSearchAllResult.fromMap(Map<String, dynamic> map) {
    return GetResourcesSearchAllResult(
      additionalAttributes:
          (map['additionalAttributes'] as List).cast<String>(),
      assetType: map['assetType'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      networkTags: (map['networkTags'] as List).cast<String>(),
      project: map['project'] as String,
    );
  }
}
