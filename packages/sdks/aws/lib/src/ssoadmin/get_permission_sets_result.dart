// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPermissionSets.
class GetPermissionSetsResult {
  /// Set of string contain the ARN of all Permission Sets.
  final List<String>? arns;
  final String? id;
  final String? instanceArn;
  final String? region;

  /// Creates a new [GetPermissionSetsResult].
  /// [arns] Set of string contain the ARN of all Permission Sets.
  /// [id] Optional.
  /// [instanceArn] Optional.
  /// [region] Optional.
  const GetPermissionSetsResult({
    this.arns,
    this.id,
    this.instanceArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'id': ?id,
      'instanceArn': ?instanceArn,
      'region': ?region,
    };
  }

  factory GetPermissionSetsResult.fromMap(Map<String, dynamic> map) {
    return GetPermissionSetsResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceArn: (() { final guardedValue = map['instanceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
