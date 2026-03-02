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
    this.accountId,
    this.hasPublicAccessPolicy,
    this.name,
    this.policy,
    this.region,
  });

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
      accountId: map['accountId'] == null ? null : ((map['accountId'] as String).input()).input(),
      hasPublicAccessPolicy: map['hasPublicAccessPolicy'] == null ? null : ((map['hasPublicAccessPolicy'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

