// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLambdaFunctionAssociation.
class GetLambdaFunctionAssociationResult {
  final String functionArn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String region;

  /// Creates a new [GetLambdaFunctionAssociationResult].
  /// [functionArn] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [region] Required.
  GetLambdaFunctionAssociationResult({
    required this.functionArn,
    required this.id,
    required this.instanceId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionArn'] = functionArn;
    map['id'] = id;
    map['instanceId'] = instanceId;
    map['region'] = region;
    return map;
  }

  factory GetLambdaFunctionAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetLambdaFunctionAssociationResult(
      functionArn: map['functionArn'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      region: map['region'] as String,
    );
  }
}
