// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognito_get_user_pool_get_user_pool_args_doc}
/// Arguments for getUserPool.
/// {@endtemplate}
/// {@macro pulumi_cognito_get_user_pool_get_user_pool_args_doc}
class GetUserPoolArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The cognito pool ID
  final pulumi.Input<String> userPoolId;

  /// Creates a new [GetUserPoolArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userPoolId] The cognito pool ID
  GetUserPoolArgs({String? region, required String userPoolId})
    : region = pulumi.Input.asOptionalInput<String>(region),
      userPoolId = pulumi.Input.asInput<String>(userPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': ?region, 'userPoolId': userPoolId};
  }

  factory GetUserPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetUserPoolArgs(
      region: map['region'] == null ? null : map['region'] as String,
      userPoolId: map['userPoolId'] as String,
    );
  }
}
