// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getStateMachineVersions.
class GetStateMachineVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String statemachineArn;

  /// ARN List identifying the statemachine versions.
  final List<String> statemachineVersions;

  GetStateMachineVersionsResult({
    required this.id,
    required this.region,
    required this.statemachineArn,
    required this.statemachineVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['region'] = region;
    map['statemachineArn'] = statemachineArn;
    map['statemachineVersions'] = statemachineVersions;
    return map;
  }

  factory GetStateMachineVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetStateMachineVersionsResult(
      id: map['id'] as String,
      region: map['region'] as String,
      statemachineArn: map['statemachineArn'] as String,
      statemachineVersions:
          (map['statemachineVersions'] as List).cast<String>(),
    );
  }
}
