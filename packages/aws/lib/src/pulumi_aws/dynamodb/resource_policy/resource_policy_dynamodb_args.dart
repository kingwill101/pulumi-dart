// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ResourcePolicy.
class ResourcePolicyDynamodbArgs {
  /// Set this parameter to true to confirm that you want to remove your permissions to change the policy of this resource in the future.
  final pulumi.Input<bool>? confirmRemoveSelfResourceAccess;

  /// n Amazon Web Services resource-based policy document in JSON format. The maximum size supported for a resource-based policy document is 20 KB. DynamoDB counts whitespaces when calculating the size of a policy against this limit. For a full list of all considerations that you should keep in mind while attaching a resource-based policy, see Resource-based policy considerations.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of the DynamoDB resource to which the policy will be attached. The resources you can specify include tables and streams. You can control index permissions using the base table's policy. To specify the same permission level for your table and its indexes, you can provide both the table and index Amazon Resource Name (ARN)s in the Resource field of a given Statement in your policy document. Alternatively, to specify different permissions for your table, indexes, or both, you can define multiple Statement fields in your policy document.
  final pulumi.Input<String> resourceArn;

  ResourcePolicyDynamodbArgs({
    this.confirmRemoveSelfResourceAccess,
    required this.policy,
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confirmRemoveSelfResourceAccessValue =
        confirmRemoveSelfResourceAccess;
    if (confirmRemoveSelfResourceAccessValue != null) {
      map['confirmRemoveSelfResourceAccess'] =
          confirmRemoveSelfResourceAccessValue;
    }
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory ResourcePolicyDynamodbArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyDynamodbArgs(
      confirmRemoveSelfResourceAccess: pulumi.Input.asOptionalInput<bool>(
          map['confirmRemoveSelfResourceAccess']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceArn: pulumi.Input.asInput<String>(map['resourceArn']),
    );
  }
}
