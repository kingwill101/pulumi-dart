// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDnsNamespace.
class GetDnsNamespaceResult {
  /// ARN of the namespace.
  final String arn;
  /// Description of the namespace.
  final String description;
  /// ID for the hosted zone that Amazon Route 53 creates when you create a namespace.
  final String hostedZone;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;
  /// Map of tags for the resource.
  final Map<String, String> tags;
  final String type;

  /// Creates a new [GetDnsNamespaceResult].
  /// [arn] ARN of the namespace.
  /// [description] Description of the namespace.
  /// [hostedZone] ID for the hosted zone that Amazon Route 53 creates when you create a namespace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [tags] Map of tags for the resource.
  /// [type] Required.
  const GetDnsNamespaceResult({
    required this.arn,
    required this.description,
    required this.hostedZone,
    required this.id,
    required this.name,
    required this.region,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'hostedZone': hostedZone,
      'id': id,
      'name': name,
      'region': region,
      'tags': tags,
      'type': type,
    };
  }

  factory GetDnsNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetDnsNamespaceResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      hostedZone: map['hostedZone'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

