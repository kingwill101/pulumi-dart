// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEventConnection.
class GetEventConnectionResult {
  /// ARN (Amazon Resource Name) of the connection.
  final String arn;
  /// Type of authorization specified for the connection. One of `API_KEY`,`BASIC`,`OAUTH_CLIENT_CREDENTIALS`.
  final String authorizationType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (Optional) Identifier of the AWS KMS customer managed key for EventBridge to use to encrypt the connection, if one has been specified.
  final String kmsKeyIdentifier;
  final String name;
  final String region;
  /// ARN of the secret created from the authorization parameters specified for the connection.
  final String secretArn;

  /// Creates a new [GetEventConnectionResult].
  /// [arn] ARN (Amazon Resource Name) of the connection.
  /// [authorizationType] Type of authorization specified for the connection. One of `API_KEY`,`BASIC`,`OAUTH_CLIENT_CREDENTIALS`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyIdentifier] (Optional) Identifier of the AWS KMS customer managed key for EventBridge to use to encrypt the connection, if one has been specified.
  /// [name] Required.
  /// [region] Required.
  /// [secretArn] ARN of the secret created from the authorization parameters specified for the connection.
  const GetEventConnectionResult({
    required this.arn,
    required this.authorizationType,
    required this.id,
    required this.kmsKeyIdentifier,
    required this.name,
    required this.region,
    required this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'authorizationType': authorizationType,
      'id': id,
      'kmsKeyIdentifier': kmsKeyIdentifier,
      'name': name,
      'region': region,
      'secretArn': secretArn,
    };
  }

  factory GetEventConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetEventConnectionResult(
      arn: map['arn'] as String,
      authorizationType: map['authorizationType'] as String,
      id: map['id'] as String,
      kmsKeyIdentifier: map['kmsKeyIdentifier'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      secretArn: map['secretArn'] as String,
    );
  }
}
