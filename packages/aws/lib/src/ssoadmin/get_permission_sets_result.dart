// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPermissionSets.
class GetPermissionSetsResult {
  /// Set of string contain the ARN of all Permission Sets.
  final List<String> arns;
  final String id;
  final String instanceArn;
  final String region;

  /// Creates a new [GetPermissionSetsResult].
  /// [arns] Set of string contain the ARN of all Permission Sets.
  /// [id] Required.
  /// [instanceArn] Required.
  /// [region] Required.
  GetPermissionSetsResult({
    required this.arns,
    required this.id,
    required this.instanceArn,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'id': id,
      'instanceArn': instanceArn,
      'region': region,
    };
  }

  factory GetPermissionSetsResult.fromMap(Map<String, dynamic> map) {
    return GetPermissionSetsResult(
      arns: (map['arns'] as List).cast<String>(),
      id: map['id'] as String,
      instanceArn: map['instanceArn'] as String,
      region: map['region'] as String,
    );
  }
}
