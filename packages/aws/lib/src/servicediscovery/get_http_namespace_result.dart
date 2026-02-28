// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHttpNamespace.
class GetHttpNamespaceResult {
  /// ARN that Amazon Route 53 assigns to the namespace when you create it.
  final String arn;
  /// Description that you specify for the namespace when you create it.
  final String description;
  /// Name of an HTTP namespace.
  final String httpName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;
  /// Map of tags for the resource.
  final Map<String, String> tags;

  /// Creates a new [GetHttpNamespaceResult].
  /// [arn] ARN that Amazon Route 53 assigns to the namespace when you create it.
  /// [description] Description that you specify for the namespace when you create it.
  /// [httpName] Name of an HTTP namespace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [tags] Map of tags for the resource.
  GetHttpNamespaceResult({
    required this.arn,
    required this.description,
    required this.httpName,
    required this.id,
    required this.name,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'httpName': httpName,
      'id': id,
      'name': name,
      'region': region,
      'tags': tags,
    };
  }

  factory GetHttpNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetHttpNamespaceResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      httpName: map['httpName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

