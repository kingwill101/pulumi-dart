// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RestApiPolicy resources.
class RestApiPolicyState {
  /// JSON formatted policy document that controls access to the API Gateway.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the REST API.
  final pulumi.Input<String>? restApiId;

  /// Creates a new [RestApiPolicyState].
  /// [policy] JSON formatted policy document that controls access to the API Gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApiId] ID of the REST API.
  RestApiPolicyState({
    this.policy,
    this.region,
    this.restApiId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'region': ?region,
      'restApiId': ?restApiId,
    };
  }

  factory RestApiPolicyState.fromMap(Map<String, dynamic> map) {
    return RestApiPolicyState(
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      restApiId: map['restApiId'] == null ? null : (map['restApiId'] as String).input(),
    );
  }
}

