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
  /// Name of the resource policy. Must be unique within a specific Amazon Web Services account.
  final pulumi.Input<String> policyName;
  /// Specifies a specific policy revision, to ensure an atomic create operation. By default the resource policy is created if it does not exist, or updated with an incremented revision id. The revision id is unique to each policy in the account. If the policy revision id does not match the latest revision id, the operation will fail with an InvalidPolicyRevisionIdException exception. You can also provide a PolicyRevisionId of 0. In this case, the operation will fail with an InvalidPolicyRevisionIdException exception if a resource policy with the same name already exists.
  final pulumi.Input<String>? policyRevisionId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ResourcePolicyArgs].
  /// [bypassPolicyLockoutCheck] Flag to indicate whether to bypass the resource policy lockout safety check. Setting this value to true increases the risk that the policy becomes unmanageable. Do not set this value to true indiscriminately. Use this parameter only when you include a policy in the request and you intend to prevent the principal that is making the request from making a subsequent PutResourcePolicy request. The default value is `false`.
  /// [policyDocument] JSON string of the resource policy or resource policy document, which can be up to 5kb in size.
  /// [policyName] Name of the resource policy. Must be unique within a specific Amazon Web Services account.
  /// [policyRevisionId] Specifies a specific policy revision, to ensure an atomic create operation. By default the resource policy is created if it does not exist, or updated with an incremented revision id. The revision id is unique to each policy in the account. If the policy revision id does not match the latest revision id, the operation will fail with an InvalidPolicyRevisionIdException exception. You can also provide a PolicyRevisionId of 0. In this case, the operation will fail with an InvalidPolicyRevisionIdException exception if a resource policy with the same name already exists.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ResourcePolicyArgs({
    this.bypassPolicyLockoutCheck,
    required this.policyDocument,
    required this.policyName,
    this.policyRevisionId,
    this.region,
  });

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
      bypassPolicyLockoutCheck: (() { final guardedValue = map['bypassPolicyLockoutCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      policyDocument: pulumi.Input.fromValue(map['policyDocument'] as String),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      policyRevisionId: (() { final guardedValue = map['policyRevisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
