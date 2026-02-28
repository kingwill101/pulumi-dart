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
    required String authorizerId,
    String? region,
    required String restApiId,
  })  : authorizerId = pulumi.Input.asInput<String>(authorizerId),
        region = pulumi.Input.asOptionalInput<String>(region),
        restApiId = pulumi.Input.asInput<String>(restApiId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authorizerId'] = authorizerId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApiId'] = restApiId;
    return map;
  }

  factory GetAuthorizerArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizerArgs(
      authorizerId: map['authorizerId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      restApiId: map['restApiId'] as String,
    );
  }
}
