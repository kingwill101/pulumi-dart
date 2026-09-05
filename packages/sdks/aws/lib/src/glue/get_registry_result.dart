// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistry.
class GetRegistryResult {
  /// ARN of Glue Registry.
  final String? arn;
  /// A description of the registry.
  final String? description;
  final String? name;
  final String? region;

  /// Creates a new [GetRegistryResult].
  /// [arn] ARN of Glue Registry.
  /// [description] A description of the registry.
  /// [name] Optional.
  /// [region] Optional.
  const GetRegistryResult({
    this.arn,
    this.description,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
