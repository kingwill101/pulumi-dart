// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognito_get_user_pool_client_get_user_pool_client_args_doc}
/// Arguments for getUserPoolClient.
/// {@endtemplate}
/// {@macro pulumi_cognito_get_user_pool_client_get_user_pool_client_args_doc}
class GetUserPoolClientArgs {
  /// Client Id of the user pool.
  final pulumi.Input<String> clientId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// User pool the client belongs to.
  final pulumi.Input<String> userPoolId;

  /// Creates a new [GetUserPoolClientArgs].
  /// [clientId] Client Id of the user pool.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userPoolId] User pool the client belongs to.
  GetUserPoolClientArgs({
    required String clientId,
    String? region,
    required String userPoolId,
  }) :
      clientId = pulumi.Input.asInput<String>(clientId),
      region = pulumi.Input.asOptionalInput<String>(region),
      userPoolId = pulumi.Input.asInput<String>(userPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'region': ?region,
      'userPoolId': userPoolId,
    };
  }

  factory GetUserPoolClientArgs.fromMap(Map<String, dynamic> map) {
    return GetUserPoolClientArgs(
      clientId: map['clientId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      userPoolId: map['userPoolId'] as String,
    );
  }
}

