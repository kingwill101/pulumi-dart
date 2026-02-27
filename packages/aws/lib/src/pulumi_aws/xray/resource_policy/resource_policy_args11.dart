// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ResourcePolicy.
class ResourcePolicyArgs11 {
  /// Flag to indicate whether to bypass the resource policy lockout safety check. Setting this value to true increases the risk that the policy becomes unmanageable. Do not set this value to true indiscriminately. Use this parameter only when you include a policy in the request and you intend to prevent the principal that is making the request from making a subsequent PutResourcePolicy request. The default value is `false`.
  final Input<bool>? bypassPolicyLockoutCheck;

  /// JSON string of the resource policy or resource policy document, which can be up to 5kb in size.
  ///
  /// The following arguments are optional:
  final Input<String> policyDocument;

  /// name of the resource policy. Must be unique within a specific Amazon Web Services account.
  final Input<String> policyName;

  /// Specifies a specific policy revision, to ensure an atomic create operation. By default the resource policy is created if it does not exist, or updated with an incremented revision id. The revision id is unique to each policy in the account. If the policy revision id does not match the latest revision id, the operation will fail with an InvalidPolicyRevisionIdException exception. You can also provide a PolicyRevisionId of 0. In this case, the operation will fail with an InvalidPolicyRevisionIdException exception if a resource policy with the same name already exists.
  final Input<String>? policyRevisionId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ResourcePolicyArgs11({
    this.bypassPolicyLockoutCheck,
    required this.policyDocument,
    required this.policyName,
    this.policyRevisionId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bypassPolicyLockoutCheckValue = bypassPolicyLockoutCheck;
    if (bypassPolicyLockoutCheckValue != null) {
      map['bypassPolicyLockoutCheck'] = bypassPolicyLockoutCheckValue;
    }
    map['policyDocument'] = policyDocument;
    map['policyName'] = policyName;
    final policyRevisionIdValue = policyRevisionId;
    if (policyRevisionIdValue != null) {
      map['policyRevisionId'] = policyRevisionIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ResourcePolicyArgs11.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyArgs11(
      bypassPolicyLockoutCheck:
          Input.asOptionalInput<bool>(map['bypassPolicyLockoutCheck']),
      policyDocument: Input.asInput<String>(map['policyDocument']),
      policyName: Input.asInput<String>(map['policyName']),
      policyRevisionId: Input.asOptionalInput<String>(map['policyRevisionId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
