// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RestApiPolicy.
class RestApiPolicyArgs {
  /// JSON formatted policy document that controls access to the API Gateway.
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the REST API.
  final Input<String> restApiId;

  RestApiPolicyArgs({
    required this.policy,
    this.region,
    required this.restApiId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApiId'] = restApiId;
    return map;
  }

  factory RestApiPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RestApiPolicyArgs(
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      restApiId: Input.asInput<String>(map['restApiId']),
    );
  }
}
