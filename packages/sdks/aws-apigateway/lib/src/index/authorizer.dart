// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/lambda.dart' as pulumi_aws_lambda;

/// LambdaAuthorizer provides the definition for a custom Authorizer for API Gateway.
class Authorizer {
  /// Specifies the authorization mechanism for the client. Typical values are "oauth2" or "custom".
  final pulumi.Input<String>? authType;
  /// The name for the Authorizer to be referenced as. This must be unique for each unique
  /// authorizer within the API. If no name if specified, a name will be generated for you.
  final pulumi.Input<String>? authorizerName;
  /// The number of seconds during which the resulting IAM policy is cached. Default is 300s. You
  /// can set this value to 0 to disable caching. Max value is 3600s. Note - if you are sharing an
  /// authorizer across more than one route you will want to disable the cache or else it will
  /// cause problems for you.
  final pulumi.Input<double>? authorizerResultTtlInSeconds;
  /// The authorizerHandler specifies information about the authorizing Lambda.
  final pulumi.Input<pulumi_aws_lambda.FunctionType>? handler;
  /// List of mapping expressions of the request parameters as the identity source. This indicates
  /// where in the request identity information is expected. Applicable for the authorizer of the
  /// "request" type only. Example: ["method.request.header.HeaderAuth1",
  /// "method.request.querystring.QueryString1"]
  final pulumi.Input<List<String>>? identitySource;
  /// A regular expression for validating the token as the incoming identity. It only invokes the
  /// authorizer's lambda if there is a match, else it will return a 401. This does not apply to
  /// REQUEST Lambda Authorizers. Example: "^x-[a-z]+".
  final pulumi.Input<String>? identityValidationExpression;
  /// For method authorization, you can define resource servers and custom scopes by specifying the
  /// "resource-server/scope". e.g. ["com.hamuta.movies/drama.view",
  /// "http://my.resource.com/file.read"] For more information on resource servers and custom
  /// scopes visit the AWS documentation -
  /// https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html
  final pulumi.Input<List<String>>? methodsToAuthorize;
  /// Defines where in the request API Gateway should look for identity information. The value must
  /// be "header" or "query". If there are multiple identity sources, the value must be "header".
  final pulumi.Input<String>? parameterLocation;
  /// parameterName is the name of the header or query parameter containing the authorization
  /// token. Must be "Unused" for multiple identity sources.
  final pulumi.Input<String> parameterName;
  /// The ARNs of the Cognito User Pools to use.
  final pulumi.Input<List<String>>? providerARNs;
  /// The type of the authorizer. This value must be one of the following:
  /// - "token", for an authorizer with the caller identity embedded in an authorization token
  /// - "request", for an authorizer with the caller identity contained in request parameters
  final pulumi.Input<String>? type;

  /// Creates a new [Authorizer].
  /// [authType] Specifies the authorization mechanism for the client. Typical values are "oauth2" or "custom".
  /// [authorizerName] The name for the Authorizer to be referenced as. This must be unique for each unique
  /// [authorizerResultTtlInSeconds] The number of seconds during which the resulting IAM policy is cached. Default is 300s. You
  /// [handler] The authorizerHandler specifies information about the authorizing Lambda.
  /// [identitySource] List of mapping expressions of the request parameters as the identity source. This indicates
  /// [identityValidationExpression] A regular expression for validating the token as the incoming identity. It only invokes the
  /// [methodsToAuthorize] For method authorization, you can define resource servers and custom scopes by specifying the
  /// [parameterLocation] Defines where in the request API Gateway should look for identity information. The value must
  /// [parameterName] parameterName is the name of the header or query parameter containing the authorization
  /// [providerARNs] The ARNs of the Cognito User Pools to use.
  /// [type] The type of the authorizer. This value must be one of the following:
  Authorizer({
    this.authType,
    this.authorizerName,
    this.authorizerResultTtlInSeconds,
    this.handler,
    this.identitySource,
    this.identityValidationExpression,
    this.methodsToAuthorize,
    this.parameterLocation,
    required this.parameterName,
    this.providerARNs,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': ?authType,
      'authorizerName': ?authorizerName,
      'authorizerResultTtlInSeconds': ?authorizerResultTtlInSeconds,
      'handler': ?handler,
      'identitySource': ?identitySource,
      'identityValidationExpression': ?identityValidationExpression,
      'methodsToAuthorize': ?methodsToAuthorize,
      'parameterLocation': ?parameterLocation,
      'parameterName': parameterName,
      'providerARNs': ?providerARNs,
      'type': ?type,
    };
  }

  factory Authorizer.fromMap(Map<String, dynamic> map) {
    return Authorizer(
      authType: map['authType'] == null ? null : (map['authType'] as String).input(),
      authorizerName: map['authorizerName'] == null ? null : (map['authorizerName'] as String).input(),
      authorizerResultTtlInSeconds: map['authorizerResultTtlInSeconds'] == null ? null : (map['authorizerResultTtlInSeconds'] as double).input(),
      handler: map['handler'] == null ? null : (map['handler'] as pulumi_aws_lambda.FunctionType).input(),
      identitySource: map['identitySource'] == null ? null : ((map['identitySource'] as List).cast<String>()).input(),
      identityValidationExpression: map['identityValidationExpression'] == null ? null : (map['identityValidationExpression'] as String).input(),
      methodsToAuthorize: map['methodsToAuthorize'] == null ? null : ((map['methodsToAuthorize'] as List).cast<String>()).input(),
      parameterLocation: map['parameterLocation'] == null ? null : (map['parameterLocation'] as String).input(),
      parameterName: (map['parameterName'] as String).input(),
      providerARNs: map['providerARNs'] == null ? null : ((map['providerARNs'] as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

