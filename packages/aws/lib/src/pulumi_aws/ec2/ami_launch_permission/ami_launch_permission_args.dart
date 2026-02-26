// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AmiLaunchPermission.
class AmiLaunchPermissionArgs {
  /// AWS account ID for the launch permission.
  final Input<String>? accountId;

  /// Name of the group for the launch permission. Valid values: `"all"`.
  final Input<String>? group;

  /// ID of the AMI.
  final Input<String> imageId;

  /// ARN of an organization for the launch permission.
  final Input<String>? organizationArn;

  /// ARN of an organizational unit for the launch permission.
  final Input<String>? organizationalUnitArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      accountId: Input.asOptionalInput<String>(map['accountId']),
      group: Input.asOptionalInput<String>(map['group']),
      imageId: Input.asInput<String>(map['imageId']),
      organizationArn: Input.asOptionalInput<String>(map['organizationArn']),
      organizationalUnitArn:
          Input.asOptionalInput<String>(map['organizationalUnitArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
