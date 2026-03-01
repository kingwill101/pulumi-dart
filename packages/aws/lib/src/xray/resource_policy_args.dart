// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_xray_resource_policy_resource_policy_args_doc}
/// The set of arguments for ResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_xray_resource_policy_resource_policy_args_doc}
class ResourcePolicyArgs {
  /// Flag to indicate whether to bypass the resource policy lockout safety check. Setting this value to true increases the risk that the policy becomes unmanageable. Do not set this value to true indiscriminately. Use this parameter only when you include a policy in the request and you intend to prevent the principal that is making the request from making a subsequent PutResourcePolicy request. The default value is `false`.
  final pulumi.Input<bool>? bypassPolicyLockoutCheck;
  /// JSON string of the resource policy or resource policy document, which can be up to 5kb in size.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> policyDocument;
  /// name of the resource policy. Must be unique within a specific Amazon Web Services account.
  final pulumi.Input<String> policyName;
  /// Specifies a specific policy revision, to ensure an atomic create operation. By default the resource policy is created if it does not exist, or updated with an incremented revision id. The revision id is unique to each policy in the account. If the policy revision id does not match the latest revision id, the operation will fail with an InvalidPolicyRevisionIdException exception. You can also provide a PolicyRevisionId of 0. In this case, the operation will fail with an InvalidPolicyRevisionIdException exception if a resource policy with the same name already exists.
  final pulumi.Input<String>? policyRevisionId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ResourcePolicyArgs].
  /// [bypassPolicyLockoutCheck] Flag to indicate whether to bypass the resource policy lockout safety check. Setting this value to true increases the risk that the policy becomes unmanageable. Do not set this value to true indiscriminately. Use this parameter only when you include a policy in the request and you intend to prevent the principal that is making the request from making a subsequent PutResourcePolicy request. The default value is `false`.
  /// [policyDocument] JSON string of the resource policy or resource policy document, which can be up to 5kb in size.
  /// [policyName] name of the resource policy. Must be unique within a specific Amazon Web Services account.
  /// [policyRevisionId] Specifies a specific policy revision, to ensure an atomic create operation. By default the resource policy is created if it does not exist, or updated with an incremented revision id. The revision id is unique to each policy in the account. If the policy revision id does not match the latest revision id, the operation will fail with an InvalidPolicyRevisionIdException exception. You can also provide a PolicyRevisionId of 0. In this case, the operation will fail with an InvalidPolicyRevisionIdException exception if a resource policy with the same name already exists.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ResourcePolicyArgs({
    bool? bypassPolicyLockoutCheck,
    required String policyDocument,
    required String policyName,
    String? policyRevisionId,
    String? region,
  }) :
      bypassPolicyLockoutCheck = pulumi.Input.asOptionalInput<bool>(bypassPolicyLockoutCheck),
      policyDocument = pulumi.Input.asInput<String>(policyDocument),
      policyName = pulumi.Input.asInput<String>(policyName),
      policyRevisionId = pulumi.Input.asOptionalInput<String>(policyRevisionId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassPolicyLockoutCheck': ?bypassPolicyLockoutCheck,
      'policyDocument': policyDocument,
      'policyName': policyName,
      'policyRevisionId': ?policyRevisionId,
      'region': ?region,
    };
  }

  factory ResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyArgs(
      bypassPolicyLockoutCheck: map['bypassPolicyLockoutCheck'] == null ? null : map['bypassPolicyLockoutCheck'] as bool,
      policyDocument: map['policyDocument'] as String,
      policyName: map['policyName'] as String,
      policyRevisionId: map['policyRevisionId'] == null ? null : map['policyRevisionId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

