// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClusterParameterGroup.
class GetClusterParameterGroupResult {
  /// ARN of the cluster parameter group.
  final String? arn;
  /// Description of the cluster parameter group.
  final String? description;
  /// Family of the cluster parameter group.
  final String? family;
  final String? name;
  final String? region;

  /// Creates a new [GetClusterParameterGroupResult].
  /// [arn] ARN of the cluster parameter group.
  /// [description] Description of the cluster parameter group.
  /// [family] Family of the cluster parameter group.
  /// [name] Optional.
  /// [region] Optional.
  const GetClusterParameterGroupResult({
    this.arn,
    this.description,
    this.family,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'family': ?family,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetClusterParameterGroupResult.fromMap(Map<String, dynamic> map) {
    return GetClusterParameterGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
