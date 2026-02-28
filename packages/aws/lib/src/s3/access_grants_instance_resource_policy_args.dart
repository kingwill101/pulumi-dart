// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_control_access_grants_instance_resource_policy_access_grants_instance_resource_policy_args_doc}
/// The set of arguments for AccessGrantsInstanceResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_s3_control_access_grants_instance_resource_policy_access_grants_instance_resource_policy_args_doc}
class AccessGrantsInstanceResourcePolicyArgs {
  /// The AWS account ID for the S3 Access Grants instance. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? accountId;

  /// The policy document.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AccessGrantsInstanceResourcePolicyArgs].
  /// [accountId] The AWS account ID for the S3 Access Grants instance. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [policy] The policy document.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AccessGrantsInstanceResourcePolicyArgs({
    String? accountId,
    required String policy,
    String? region,
  })  : accountId = pulumi.Input.asOptionalInput<String>(accountId),
        policy = pulumi.Input.asInput<String>(policy),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AccessGrantsInstanceResourcePolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return AccessGrantsInstanceResourcePolicyArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      policy: map['policy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
