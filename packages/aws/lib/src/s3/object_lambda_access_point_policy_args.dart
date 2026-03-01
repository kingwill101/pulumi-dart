// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_control_object_lambda_access_point_policy_object_lambda_access_point_policy_args_doc}
/// The set of arguments for ObjectLambdaAccessPointPolicy.
/// {@endtemplate}
/// {@macro pulumi_s3_control_object_lambda_access_point_policy_object_lambda_access_point_policy_args_doc}
class ObjectLambdaAccessPointPolicyArgs {
  /// The AWS account ID for the account that owns the Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;

  /// The name of the Object Lambda Access Point.
  final pulumi.Input<String>? name;

  /// The Object Lambda Access Point resource policy document.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ObjectLambdaAccessPointPolicyArgs].
  /// [accountId] The AWS account ID for the account that owns the Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  /// [name] The name of the Object Lambda Access Point.
  /// [policy] The Object Lambda Access Point resource policy document.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ObjectLambdaAccessPointPolicyArgs({
    String? accountId,
    String? name,
    required String policy,
    String? region,
  }) : accountId = pulumi.Input.asOptionalInput<String>(accountId),
       name = pulumi.Input.asOptionalInput<String>(name),
       policy = pulumi.Input.asInput<String>(policy),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'name': ?name,
      'policy': policy,
      'region': ?region,
    };
  }

  factory ObjectLambdaAccessPointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ObjectLambdaAccessPointPolicyArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      policy: map['policy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
