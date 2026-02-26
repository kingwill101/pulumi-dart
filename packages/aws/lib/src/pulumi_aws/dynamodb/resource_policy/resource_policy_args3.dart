// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ResourcePolicy.
class ResourcePolicyArgs3 {
  /// Set this parameter to true to confirm that you want to remove your permissions to change the policy of this resource in the future.
  final Input<bool>? confirmRemoveSelfResourceAccess;

  /// n Amazon Web Services resource-based policy document in JSON format. The maximum size supported for a resource-based policy document is 20 KB. DynamoDB counts whitespaces when calculating the size of a policy against this limit. For a full list of all considerations that you should keep in mind while attaching a resource-based policy, see Resource-based policy considerations.
  ///
  /// The following arguments are optional:
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of the DynamoDB resource to which the policy will be attached. The resources you can specify include tables and streams. You can control index permissions using the base table's policy. To specify the same permission level for your table and its indexes, you can provide both the table and index Amazon Resource Name (ARN)s in the Resource field of a given Statement in your policy document. Alternatively, to specify different permissions for your table, indexes, or both, you can define multiple Statement fields in your policy document.
  final Input<String> resourceArn;

  ResourcePolicyArgs3({
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

  factory ResourcePolicyArgs3.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyArgs3(
      confirmRemoveSelfResourceAccess:
          Input.asOptionalInput<bool>(map['confirmRemoveSelfResourceAccess']),
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceArn: Input.asInput<String>(map['resourceArn']),
    );
  }
}
