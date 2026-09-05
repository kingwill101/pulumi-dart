// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLambdaFunctionAssociation.
class GetLambdaFunctionAssociationResult {
  final String? functionArn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  final String? region;

  /// Creates a new [GetLambdaFunctionAssociationResult].
  /// [functionArn] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [region] Optional.
  const GetLambdaFunctionAssociationResult({
    this.functionArn,
    this.id,
    this.instanceId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': ?functionArn,
      'id': ?id,
      'instanceId': ?instanceId,
      'region': ?region,
    };
  }

  factory GetLambdaFunctionAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetLambdaFunctionAssociationResult(
      functionArn: (() { final guardedValue = map['functionArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
