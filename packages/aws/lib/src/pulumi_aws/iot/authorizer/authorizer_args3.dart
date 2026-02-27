// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Authorizer.
class AuthorizerArgs3 {
  /// The ARN of the authorizer's Lambda function.
  final Input<String> authorizerFunctionArn;

  /// Specifies whether the HTTP caching is enabled or not. Default: `false`.
  final Input<bool>? enableCachingForHttp;

  /// The name of the authorizer.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies whether AWS IoT validates the token signature in an authorization request. Default: `false`.
  final Input<bool>? signingDisabled;

  /// The status of Authorizer request at creation. Valid values: `ACTIVE`, `INACTIVE`. Default: `ACTIVE`.
  final Input<String>? status;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The name of the token key used to extract the token from the HTTP headers. This value is required if signing is enabled in your authorizer.
  final Input<String>? tokenKeyName;

  /// The public keys used to verify the digital signature returned by your custom authentication service. This value is required if signing is enabled in your authorizer.
  final Input<Map<String, String>>? tokenSigningPublicKeys;

  AuthorizerArgs3({
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
    final map = <String, dynamic>{};
    map['authorizerFunctionArn'] = authorizerFunctionArn;
    final enableCachingForHttpValue = enableCachingForHttp;
    if (enableCachingForHttpValue != null) {
      map['enableCachingForHttp'] = enableCachingForHttpValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final signingDisabledValue = signingDisabled;
    if (signingDisabledValue != null) {
      map['signingDisabled'] = signingDisabledValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tokenKeyNameValue = tokenKeyName;
    if (tokenKeyNameValue != null) {
      map['tokenKeyName'] = tokenKeyNameValue;
    }
    final tokenSigningPublicKeysValue = tokenSigningPublicKeys;
    if (tokenSigningPublicKeysValue != null) {
      map['tokenSigningPublicKeys'] = tokenSigningPublicKeysValue;
    }
    return map;
  }

  factory AuthorizerArgs3.fromMap(Map<String, dynamic> map) {
    return AuthorizerArgs3(
      authorizerFunctionArn:
          Input.asInput<String>(map['authorizerFunctionArn']),
      enableCachingForHttp:
          Input.asOptionalInput<bool>(map['enableCachingForHttp']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      signingDisabled: Input.asOptionalInput<bool>(map['signingDisabled']),
      status: Input.asOptionalInput<String>(map['status']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tokenKeyName: Input.asOptionalInput<String>(map['tokenKeyName']),
      tokenSigningPublicKeys: Input.asOptionalInput<Map<String, String>>(
          map['tokenSigningPublicKeys']),
    );
  }
}
