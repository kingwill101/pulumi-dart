// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStateMachineVersions.
class GetStateMachineVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  final String? statemachineArn;
  /// ARN List identifying the statemachine versions.
  final List<String>? statemachineVersions;

  /// Creates a new [GetStateMachineVersionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [statemachineArn] Optional.
  /// [statemachineVersions] ARN List identifying the statemachine versions.
  const GetStateMachineVersionsResult({
    this.id,
    this.region,
    this.statemachineArn,
    this.statemachineVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'region': ?region,
      'statemachineArn': ?statemachineArn,
      'statemachineVersions': ?statemachineVersions,
    };
  }

  factory GetStateMachineVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetStateMachineVersionsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statemachineArn: (() { final guardedValue = map['statemachineArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statemachineVersions: (() { final guardedValue = map['statemachineVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
