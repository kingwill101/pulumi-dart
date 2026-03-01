// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ObjectLambdaAccessPointPolicy resources.
class ObjectLambdaAccessPointPolicyState {
  /// The AWS account ID for the account that owns the Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;
  /// Indicates whether this access point currently has a policy that allows public access.
  final pulumi.Input<bool>? hasPublicAccessPolicy;
  /// The name of the Object Lambda Access Point.
  final pulumi.Input<String>? name;
  /// The Object Lambda Access Point resource policy document.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ObjectLambdaAccessPointPolicyState].
  /// [accountId] The AWS account ID for the account that owns the Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  /// [hasPublicAccessPolicy] Indicates whether this access point currently has a policy that allows public access.
  /// [name] The name of the Object Lambda Access Point.
  /// [policy] The Object Lambda Access Point resource policy document.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ObjectLambdaAccessPointPolicyState({
    pulumi.Output<String>? accountId,
    pulumi.Output<bool>? hasPublicAccessPolicy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      hasPublicAccessPolicy = pulumi.Input.asOptionalInput<bool>(hasPublicAccessPolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'hasPublicAccessPolicy': ?hasPublicAccessPolicy,
      'name': ?name,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory ObjectLambdaAccessPointPolicyState.fromMap(Map<String, dynamic> map) {
    return ObjectLambdaAccessPointPolicyState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      hasPublicAccessPolicy: map['hasPublicAccessPolicy'] == null ? null : pulumi.Output.create<bool>(map['hasPublicAccessPolicy'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

