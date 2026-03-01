// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourcePolicy resources.
class ResourcePolicyState {
  /// Set this parameter to true to confirm that you want to remove your permissions to change the policy of this resource in the future.
  final pulumi.Input<bool>? confirmRemoveSelfResourceAccess;
  /// n Amazon Web Services resource-based policy document in JSON format. The maximum size supported for a resource-based policy document is 20 KB. DynamoDB counts whitespaces when calculating the size of a policy against this limit. For a full list of all considerations that you should keep in mind while attaching a resource-based policy, see Resource-based policy considerations.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the DynamoDB resource to which the policy will be attached. The resources you can specify include tables and streams. You can control index permissions using the base table's policy. To specify the same permission level for your table and its indexes, you can provide both the table and index Amazon Resource Name (ARN)s in the Resource field of a given Statement in your policy document. Alternatively, to specify different permissions for your table, indexes, or both, you can define multiple Statement fields in your policy document.
  final pulumi.Input<String>? resourceArn;
  /// A unique string that represents the revision ID of the policy. If you are comparing revision IDs, make sure to always use string comparison logic.
  final pulumi.Input<String>? revisionId;

  /// Creates a new [ResourcePolicyState].
  /// [confirmRemoveSelfResourceAccess] Set this parameter to true to confirm that you want to remove your permissions to change the policy of this resource in the future.
  /// [policy] n Amazon Web Services resource-based policy document in JSON format. The maximum size supported for a resource-based policy document is 20 KB. DynamoDB counts whitespaces when calculating the size of a policy against this limit. For a full list of all considerations that you should keep in mind while attaching a resource-based policy, see Resource-based policy considerations.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] The Amazon Resource Name (ARN) of the DynamoDB resource to which the policy will be attached. The resources you can specify include tables and streams. You can control index permissions using the base table's policy. To specify the same permission level for your table and its indexes, you can provide both the table and index Amazon Resource Name (ARN)s in the Resource field of a given Statement in your policy document. Alternatively, to specify different permissions for your table, indexes, or both, you can define multiple Statement fields in your policy document.
  /// [revisionId] A unique string that represents the revision ID of the policy. If you are comparing revision IDs, make sure to always use string comparison logic.
  ResourcePolicyState({
    pulumi.Output<bool>? confirmRemoveSelfResourceAccess,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? revisionId,
  }) :
      confirmRemoveSelfResourceAccess = pulumi.Input.asOptionalInput<bool>(confirmRemoveSelfResourceAccess),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      revisionId = pulumi.Input.asOptionalInput<String>(revisionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confirmRemoveSelfResourceAccess': ?confirmRemoveSelfResourceAccess,
      'policy': ?policy,
      'region': ?region,
      'resourceArn': ?resourceArn,
      'revisionId': ?revisionId,
    };
  }

  factory ResourcePolicyState.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyState(
      confirmRemoveSelfResourceAccess: map['confirmRemoveSelfResourceAccess'] == null ? null : pulumi.Output.create<bool>(map['confirmRemoveSelfResourceAccess'] as bool),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      revisionId: map['revisionId'] == null ? null : pulumi.Output.create<String>(map['revisionId'] as String),
    );
  }
}

