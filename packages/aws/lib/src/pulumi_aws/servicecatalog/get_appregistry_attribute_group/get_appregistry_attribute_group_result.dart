// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAppregistryAttributeGroup.
class GetAppregistryAttributeGroupResult {
  final String arn;

  /// A JSON string of nested key-value pairs that represents the attributes of the group.
  final String attributes;

  /// Description of the Attribute Group.
  final String description;
  final String id;
  final String name;
  final String region;

  /// A map of tags assigned to the Attribute Group. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String> tags;

  GetAppregistryAttributeGroupResult({
    required this.arn,
    required this.attributes,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['attributes'] = attributes;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetAppregistryAttributeGroupResult.fromMap(Map<String, dynamic> map) {
    return GetAppregistryAttributeGroupResult(
      arn: map['arn'] as String,
      attributes: map['attributes'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
