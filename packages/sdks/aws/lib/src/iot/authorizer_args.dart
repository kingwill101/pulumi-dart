// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_authorizer_authorizer_args_doc}
/// The set of arguments for Authorizer.
/// {@endtemplate}
/// {@macro pulumi_iot_authorizer_authorizer_args_doc}
class AuthorizerArgs {
  /// The ARN of the authorizer's Lambda function.
  final pulumi.Input<String> authorizerFunctionArn;
  /// Specifies whether the HTTP caching is enabled or not. Default: `false`.
  final pulumi.Input<bool>? enableCachingForHttp;
  /// The name of the authorizer.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies whether AWS IoT validates the token signature in an authorization request. Default: `false`.
  final pulumi.Input<bool>? signingDisabled;
  /// The status of Authorizer request at creation. Valid values: `ACTIVE`, `INACTIVE`. Default: `ACTIVE`.
  final pulumi.Input<String>? status;
  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the token key used to extract the token from the HTTP headers. This value is required if signing is enabled in your authorizer.
  final pulumi.Input<String>? tokenKeyName;
  /// The public keys used to verify the digital signature returned by your custom authentication service. This value is required if signing is enabled in your authorizer.
  final pulumi.Input<Map<String, String>>? tokenSigningPublicKeys;

  /// Creates a new [AuthorizerArgs].
  /// [authorizerFunctionArn] The ARN of the authorizer's Lambda function.
  /// [enableCachingForHttp] Specifies whether the HTTP caching is enabled or not. Default: `false`.
  /// [name] The name of the authorizer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [signingDisabled] Specifies whether AWS IoT validates the token signature in an authorization request. Default: `false`.
  /// [status] The status of Authorizer request at creation. Valid values: `ACTIVE`, `INACTIVE`. Default: `ACTIVE`.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tokenKeyName] The name of the token key used to extract the token from the HTTP headers. This value is required if signing is enabled in your authorizer.
  /// [tokenSigningPublicKeys] The public keys used to verify the digital signature returned by your custom authentication service. This value is required if signing is enabled in your authorizer.
  AuthorizerArgs({
    required this.authorizerFunctionArn,
    this.enableCachingForHttp,
    this.name,
    this.region,
    this.signingDisabled,
    this.status,
    this.tags,
    this.tokenKeyName,
    this.tokenSigningPublicKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerFunctionArn': authorizerFunctionArn,
      'enableCachingForHttp': ?enableCachingForHttp,
      'name': ?name,
      'region': ?region,
      'signingDisabled': ?signingDisabled,
      'status': ?status,
      'tags': ?tags,
      'tokenKeyName': ?tokenKeyName,
      'tokenSigningPublicKeys': ?tokenSigningPublicKeys,
    };
  }

  factory AuthorizerArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizerArgs(
      authorizerFunctionArn: (map['authorizerFunctionArn'] as String).input(),
      enableCachingForHttp: map['enableCachingForHttp'] == null ? null : (map['enableCachingForHttp'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      signingDisabled: map['signingDisabled'] == null ? null : (map['signingDisabled'] as bool).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tokenKeyName: map['tokenKeyName'] == null ? null : (map['tokenKeyName'] as String).input(),
      tokenSigningPublicKeys: map['tokenSigningPublicKeys'] == null ? null : ((map['tokenSigningPublicKeys'] as Map).cast<String, String>()).input(),
    );
  }
}

