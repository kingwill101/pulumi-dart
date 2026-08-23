// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistry.
class GetRegistryResult {
  /// Amazon Resource Name (ARN) of Glue Registry.
  final String arn;
  /// A description of the registry.
  final String description;
  final String name;
  final String region;

  /// Creates a new [GetRegistryResult].
  /// [arn] Amazon Resource Name (ARN) of Glue Registry.
  /// [description] A description of the registry.
  /// [name] Required.
  /// [region] Required.
  const GetRegistryResult({
    required this.arn,
    required this.description,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'name': name,
      'region': region,
    };
  }

  factory GetRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
