// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getParameterGroup.
class GetParameterGroupResult {
  /// ARN of the parameter group.
  final String? arn;
  /// Description of the parameter group.
  final String? description;
  /// Family of the parameter group.
  final String? family;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;

  /// Creates a new [GetParameterGroupResult].
  /// [arn] ARN of the parameter group.
  /// [description] Description of the parameter group.
  /// [family] Family of the parameter group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  const GetParameterGroupResult({
    this.arn,
    this.description,
    this.family,
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'family': ?family,
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetParameterGroupResult.fromMap(Map<String, dynamic> map) {
    return GetParameterGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
