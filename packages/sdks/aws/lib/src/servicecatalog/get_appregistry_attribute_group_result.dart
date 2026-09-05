// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAppregistryAttributeGroup.
class GetAppregistryAttributeGroupResult {
  final String? arn;
  /// A JSON string of nested key-value pairs that represents the attributes of the group.
  final String? attributes;
  /// Description of the Attribute Group.
  final String? description;
  final String? id;
  final String? name;
  final String? region;
  /// A map of tags assigned to the Attribute Group. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;

  /// Creates a new [GetAppregistryAttributeGroupResult].
  /// [arn] Optional.
  /// [attributes] A JSON string of nested key-value pairs that represents the attributes of the group.
  /// [description] Description of the Attribute Group.
  /// [id] Optional.
  /// [name] Optional.
  /// [region] Optional.
  /// [tags] A map of tags assigned to the Attribute Group. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const GetAppregistryAttributeGroupResult({
    this.arn,
    this.attributes,
    this.description,
    this.id,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attributes': ?attributes,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetAppregistryAttributeGroupResult.fromMap(Map<String, dynamic> map) {
    return GetAppregistryAttributeGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
