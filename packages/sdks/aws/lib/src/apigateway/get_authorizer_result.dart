// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthorizer.
class GetAuthorizerResult {
  /// ARN of the API Gateway Authorizer.
  final String? arn;
  /// Credentials required for the authorizer.
  final String? authorizerCredentials;
  final String? authorizerId;
  /// TTL of cached authorizer results in seconds.
  final int? authorizerResultTtlInSeconds;
  /// Authorizer's URI.
  final String? authorizerUri;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Source of the identity in an incoming request.
  final String? identitySource;
  /// Validation expression for the incoming identity.
  final String? identityValidationExpression;
  /// Name of the authorizer.
  final String? name;
  /// List of the Amazon Cognito user pool ARNs.
  final List<String>? providerArns;
  final String? region;
  final String? restApiId;
  /// Type of the authorizer.
  final String? type;

  /// Creates a new [GetAuthorizerResult].
  /// [arn] ARN of the API Gateway Authorizer.
  /// [authorizerCredentials] Credentials required for the authorizer.
  /// [authorizerId] Optional.
  /// [authorizerResultTtlInSeconds] TTL of cached authorizer results in seconds.
  /// [authorizerUri] Authorizer's URI.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identitySource] Source of the identity in an incoming request.
  /// [identityValidationExpression] Validation expression for the incoming identity.
  /// [name] Name of the authorizer.
  /// [providerArns] List of the Amazon Cognito user pool ARNs.
  /// [region] Optional.
  /// [restApiId] Optional.
  /// [type] Type of the authorizer.
  const GetAuthorizerResult({
    this.arn,
    this.authorizerCredentials,
    this.authorizerId,
    this.authorizerResultTtlInSeconds,
    this.authorizerUri,
    this.id,
    this.identitySource,
    this.identityValidationExpression,
    this.name,
    this.providerArns,
    this.region,
    this.restApiId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authorizerCredentials': ?authorizerCredentials,
      'authorizerId': ?authorizerId,
      'authorizerResultTtlInSeconds': ?authorizerResultTtlInSeconds,
      'authorizerUri': ?authorizerUri,
      'id': ?id,
      'identitySource': ?identitySource,
      'identityValidationExpression': ?identityValidationExpression,
      'name': ?name,
      'providerArns': ?providerArns,
      'region': ?region,
      'restApiId': ?restApiId,
      'type': ?type,
    };
  }

  factory GetAuthorizerResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizerResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authorizerCredentials: (() { final guardedValue = map['authorizerCredentials']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authorizerId: (() { final guardedValue = map['authorizerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authorizerResultTtlInSeconds: (() { final guardedValue = map['authorizerResultTtlInSeconds']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      authorizerUri: (() { final guardedValue = map['authorizerUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identitySource: (() { final guardedValue = map['identitySource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityValidationExpression: (() { final guardedValue = map['identityValidationExpression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providerArns: (() { final guardedValue = map['providerArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restApiId: (() { final guardedValue = map['restApiId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
