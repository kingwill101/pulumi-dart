// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAuthorizer.
class GetAuthorizerResult {
  /// ARN of the API Gateway Authorizer.
  final String arn;
  /// Credentials required for the authorizer.
  final String authorizerCredentials;
  final String authorizerId;
  /// TTL of cached authorizer results in seconds.
  final int authorizerResultTtlInSeconds;
  /// Authorizer's Uniform Resource Identifier (URI).
  final String authorizerUri;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Source of the identity in an incoming request.
  final String identitySource;
  /// Validation expression for the incoming identity.
  final String identityValidationExpression;
  /// Name of the authorizer.
  final String name;
  /// List of the Amazon Cognito user pool ARNs.
  final List<String> providerArns;
  final String region;
  final String restApiId;
  /// Type of the authorizer.
  final String type;

  /// Creates a new [GetAuthorizerResult].
  /// [arn] ARN of the API Gateway Authorizer.
  /// [authorizerCredentials] Credentials required for the authorizer.
  /// [authorizerId] Required.
  /// [authorizerResultTtlInSeconds] TTL of cached authorizer results in seconds.
  /// [authorizerUri] Authorizer's Uniform Resource Identifier (URI).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identitySource] Source of the identity in an incoming request.
  /// [identityValidationExpression] Validation expression for the incoming identity.
  /// [name] Name of the authorizer.
  /// [providerArns] List of the Amazon Cognito user pool ARNs.
  /// [region] Required.
  /// [restApiId] Required.
  /// [type] Type of the authorizer.
  const GetAuthorizerResult({
    required this.arn,
    required this.authorizerCredentials,
    required this.authorizerId,
    required this.authorizerResultTtlInSeconds,
    required this.authorizerUri,
    required this.id,
    required this.identitySource,
    required this.identityValidationExpression,
    required this.name,
    required this.providerArns,
    required this.region,
    required this.restApiId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'authorizerCredentials': authorizerCredentials,
      'authorizerId': authorizerId,
      'authorizerResultTtlInSeconds': authorizerResultTtlInSeconds,
      'authorizerUri': authorizerUri,
      'id': id,
      'identitySource': identitySource,
      'identityValidationExpression': identityValidationExpression,
      'name': name,
      'providerArns': providerArns,
      'region': region,
      'restApiId': restApiId,
      'type': type,
    };
  }

  factory GetAuthorizerResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizerResult(
      arn: map['arn'] as String,
      authorizerCredentials: map['authorizerCredentials'] as String,
      authorizerId: map['authorizerId'] as String,
      authorizerResultTtlInSeconds: map['authorizerResultTtlInSeconds'] as int,
      authorizerUri: map['authorizerUri'] as String,
      id: map['id'] as String,
      identitySource: map['identitySource'] as String,
      identityValidationExpression: map['identityValidationExpression'] as String,
      name: map['name'] as String,
      providerArns: (map['providerArns'] as List).cast<String>(),
      region: map['region'] as String,
      restApiId: map['restApiId'] as String,
      type: map['type'] as String,
    );
  }
}
