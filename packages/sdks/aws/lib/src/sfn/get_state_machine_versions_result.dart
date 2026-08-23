// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStateMachineVersions.
class GetStateMachineVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String statemachineArn;
  /// ARN List identifying the statemachine versions.
  final List<String> statemachineVersions;

  /// Creates a new [GetStateMachineVersionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [statemachineArn] Required.
  /// [statemachineVersions] ARN List identifying the statemachine versions.
  const GetStateMachineVersionsResult({
    required this.id,
    required this.region,
    required this.statemachineArn,
    required this.statemachineVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': region,
      'statemachineArn': statemachineArn,
      'statemachineVersions': statemachineVersions,
    };
  }

  factory GetStateMachineVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetStateMachineVersionsResult(
      id: map['id'] as String,
      region: map['region'] as String,
      statemachineArn: map['statemachineArn'] as String,
      statemachineVersions: (map['statemachineVersions'] as List).cast<String>(),
    );
  }
}
