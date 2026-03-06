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
  const GetLambdaFunctionAssociationResult({
    required this.functionArn,
    required this.id,
    required this.instanceId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': functionArn,
      'id': id,
      'instanceId': instanceId,
      'region': region,
    };
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

