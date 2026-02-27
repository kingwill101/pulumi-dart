// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AccessGrantsInstanceResourcePolicy.
class AccessGrantsInstanceResourcePolicyArgs {
  /// The AWS account ID for the S3 Access Grants instance. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? accountId;

  /// The policy document.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  AccessGrantsInstanceResourcePolicyArgs({
    this.accountId,
    required this.policy,
    this.region,
  });

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
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
