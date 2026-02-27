// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AmiLaunchPermission.
class AmiLaunchPermissionArgs {
  /// AWS account ID for the launch permission.
  final pulumi.Input<String>? accountId;

  /// Name of the group for the launch permission. Valid values: `"all"`.
  final pulumi.Input<String>? group;

  /// ID of the AMI.
  final pulumi.Input<String> imageId;

  /// ARN of an organization for the launch permission.
  final pulumi.Input<String>? organizationArn;

  /// ARN of an organizational unit for the launch permission.
  final pulumi.Input<String>? organizationalUnitArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  AmiLaunchPermissionArgs({
    this.accountId,
    this.group,
    required this.imageId,
    this.organizationArn,
    this.organizationalUnitArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    final groupValue = group;
    if (groupValue != null) {
      map['group'] = groupValue;
    }
    map['imageId'] = imageId;
    final organizationArnValue = organizationArn;
    if (organizationArnValue != null) {
      map['organizationArn'] = organizationArnValue;
    }
    final organizationalUnitArnValue = organizationalUnitArn;
    if (organizationalUnitArnValue != null) {
      map['organizationalUnitArn'] = organizationalUnitArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AmiLaunchPermissionArgs.fromMap(Map<String, dynamic> map) {
    return AmiLaunchPermissionArgs(
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      group: pulumi.Input.asOptionalInput<String>(map['group']),
      imageId: pulumi.Input.asInput<String>(map['imageId']),
      organizationArn:
          pulumi.Input.asOptionalInput<String>(map['organizationArn']),
      organizationalUnitArn:
          pulumi.Input.asOptionalInput<String>(map['organizationalUnitArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
