// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUserPools.
class GetUserPoolsResult {
  /// Set of cognito user pool Amazon Resource Names (ARNs).
  final List<String> arns;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Set of cognito user pool ids.
  final List<String> ids;
  final String name;
  final String region;

  /// Creates a new [GetUserPoolsResult].
  /// [arns] Set of cognito user pool Amazon Resource Names (ARNs).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of cognito user pool ids.
  /// [name] Required.
  /// [region] Required.
  const GetUserPoolsResult({
    required this.arns,
    required this.id,
    required this.ids,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'id': id,
      'ids': ids,
      'name': name,
      'region': region,
    };
  }

  factory GetUserPoolsResult.fromMap(Map<String, dynamic> map) {
    return GetUserPoolsResult(
      arns: (map['arns'] as List).cast<String>(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
