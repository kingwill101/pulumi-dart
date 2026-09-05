// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOutpostInstanceTypes.
class GetOutpostInstanceTypesResult {
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of instance types.
  final List<String>? instanceTypes;
  final String? region;

  /// Creates a new [GetOutpostInstanceTypesResult].
  /// [arn] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceTypes] Set of instance types.
  /// [region] Optional.
  const GetOutpostInstanceTypesResult({
    this.arn,
    this.id,
    this.instanceTypes,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'instanceTypes': ?instanceTypes,
      'region': ?region,
    };
  }

  factory GetOutpostInstanceTypesResult.fromMap(Map<String, dynamic> map) {
    return GetOutpostInstanceTypesResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceTypes: (() { final guardedValue = map['instanceTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
