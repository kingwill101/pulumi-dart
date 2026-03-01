// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistry.
class GetRegistryResult {
  /// Amazon Resource Name (ARN) of Glue Registry.
  final String arn;
  /// A description of the registry.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  /// Creates a new [GetRegistryResult].
  /// [arn] Amazon Resource Name (ARN) of Glue Registry.
  /// [description] A description of the registry.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  GetRegistryResult({
    required this.arn,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'id': id,
      'name': name,
      'region': region,
    };
  }

  factory GetRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}

