// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognito_get_user_pool_clients_get_user_pool_clients_args_doc}
/// Arguments for getUserPoolClients.
/// {@endtemplate}
/// {@macro pulumi_cognito_get_user_pool_clients_get_user_pool_clients_args_doc}
class GetUserPoolClientsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Cognito user pool ID.
  final pulumi.Input<String> userPoolId;

  /// Creates a new [GetUserPoolClientsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userPoolId] Cognito user pool ID.
  GetUserPoolClientsArgs({
    this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'userPoolId': userPoolId,
    };
  }

  factory GetUserPoolClientsArgs.fromMap(Map<String, dynamic> map) {
    return GetUserPoolClientsArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      userPoolId: (map['userPoolId'] as String).input(),
    );
  }
}

