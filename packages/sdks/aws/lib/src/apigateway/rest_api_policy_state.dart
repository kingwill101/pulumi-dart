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
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
    pulumi.Output<String>? restApiId,
  }) :
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      restApiId = pulumi.Input.asOptionalInput<String>(restApiId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'region': ?region,
      'restApiId': ?restApiId,
    };
  }

  factory RestApiPolicyState.fromMap(Map<String, dynamic> map) {
    return RestApiPolicyState(
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      restApiId: map['restApiId'] == null ? null : pulumi.Output.create<String>(map['restApiId'] as String),
    );
  }
}

