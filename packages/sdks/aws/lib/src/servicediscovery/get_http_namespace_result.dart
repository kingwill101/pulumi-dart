// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHttpNamespace.
class GetHttpNamespaceResult {
  /// ARN that Amazon Route 53 assigns to the namespace when you create it.
  final String? arn;
  /// Description that you specify for the namespace when you create it.
  final String? description;
  /// Name of an HTTP namespace.
  final String? httpName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// Map of tags for the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetHttpNamespaceResult].
  /// [arn] ARN that Amazon Route 53 assigns to the namespace when you create it.
  /// [description] Description that you specify for the namespace when you create it.
  /// [httpName] Name of an HTTP namespace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [tags] Map of tags for the resource.
  const GetHttpNamespaceResult({
    this.arn,
    this.description,
    this.httpName,
    this.id,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'httpName': ?httpName,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetHttpNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetHttpNamespaceResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpName: (() { final guardedValue = map['httpName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
