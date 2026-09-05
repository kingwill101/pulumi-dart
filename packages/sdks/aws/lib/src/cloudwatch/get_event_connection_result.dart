// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEventConnection.
class GetEventConnectionResult {
  /// ARN of the connection.
  final String? arn;
  /// Type of authorization specified for the connection. One of `API_KEY`,`BASIC`,`OAUTH_CLIENT_CREDENTIALS`.
  final String? authorizationType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (Optional) Identifier of the AWS KMS customer managed key for EventBridge to use to encrypt the connection, if one has been specified.
  final String? kmsKeyIdentifier;
  final String? name;
  final String? region;
  /// ARN of the secret created from the authorization parameters specified for the connection.
  final String? secretArn;

  /// Creates a new [GetEventConnectionResult].
  /// [arn] ARN of the connection.
  /// [authorizationType] Type of authorization specified for the connection. One of `API_KEY`,`BASIC`,`OAUTH_CLIENT_CREDENTIALS`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyIdentifier] (Optional) Identifier of the AWS KMS customer managed key for EventBridge to use to encrypt the connection, if one has been specified.
  /// [name] Optional.
  /// [region] Optional.
  /// [secretArn] ARN of the secret created from the authorization parameters specified for the connection.
  const GetEventConnectionResult({
    this.arn,
    this.authorizationType,
    this.id,
    this.kmsKeyIdentifier,
    this.name,
    this.region,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authorizationType': ?authorizationType,
      'id': ?id,
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'name': ?name,
      'region': ?region,
      'secretArn': ?secretArn,
    };
  }

  factory GetEventConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetEventConnectionResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authorizationType: (() { final guardedValue = map['authorizationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyIdentifier: (() { final guardedValue = map['kmsKeyIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretArn: (() { final guardedValue = map['secretArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
