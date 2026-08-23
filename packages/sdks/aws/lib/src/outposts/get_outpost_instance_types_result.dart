// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOutpostInstanceTypes.
class GetOutpostInstanceTypesResult {
  final String arn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Set of instance types.
  final List<String> instanceTypes;
  final String region;

  /// Creates a new [GetOutpostInstanceTypesResult].
  /// [arn] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceTypes] Set of instance types.
  /// [region] Required.
  const GetOutpostInstanceTypesResult({
    required this.arn,
    required this.id,
    required this.instanceTypes,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'instanceTypes': instanceTypes,
      'region': region,
    };
  }

  factory GetOutpostInstanceTypesResult.fromMap(Map<String, dynamic> map) {
    return GetOutpostInstanceTypesResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      instanceTypes: (map['instanceTypes'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
