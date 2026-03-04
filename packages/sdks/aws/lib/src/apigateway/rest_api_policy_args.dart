// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_rest_api_policy_rest_api_policy_args_doc}
/// The set of arguments for RestApiPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigateway_rest_api_policy_rest_api_policy_args_doc}
class RestApiPolicyArgs {
  /// JSON formatted policy document that controls access to the API Gateway.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the REST API.
  final pulumi.Input<String> restApiId;

  /// Creates a new [RestApiPolicyArgs].
  /// [policy] JSON formatted policy document that controls access to the API Gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApiId] ID of the REST API.
  RestApiPolicyArgs({
    required this.policy,
    this.region,
    required this.restApiId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'region': ?region,
      'restApiId': restApiId,
    };
  }

  factory RestApiPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RestApiPolicyArgs(
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      restApiId: pulumi.Input.fromValue(map['restApiId'] as String),
    );
  }
}
