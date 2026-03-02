// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_authorizer_get_authorizer_args_doc}
/// Arguments for getAuthorizer.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_authorizer_get_authorizer_args_doc}
class GetAuthorizerArgs {
  /// Authorizer identifier.
  final pulumi.Input<String> authorizerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the associated REST API.
  final pulumi.Input<String> restApiId;

  /// Creates a new [GetAuthorizerArgs].
  /// [authorizerId] Authorizer identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApiId] ID of the associated REST API.
  GetAuthorizerArgs({
    required this.authorizerId,
    this.region,
    required this.restApiId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerId': authorizerId,
      'region': ?region,
      'restApiId': restApiId,
    };
  }

  factory GetAuthorizerArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizerArgs(
      authorizerId: (map['authorizerId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      restApiId: (map['restApiId'] as String).input(),
    );
  }
}

