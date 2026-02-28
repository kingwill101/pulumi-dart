// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_ami_launch_permission_ami_launch_permission_args_doc}
/// The set of arguments for AmiLaunchPermission.
/// {@endtemplate}
/// {@macro pulumi_ec2_ami_launch_permission_ami_launch_permission_args_doc}
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

  /// Creates a new [AmiLaunchPermissionArgs].
  /// [accountId] AWS account ID for the launch permission.
  /// [group] Name of the group for the launch permission. Valid values: `"all"`.
  /// [imageId] ID of the AMI.
  /// [organizationArn] ARN of an organization for the launch permission.
  /// [organizationalUnitArn] ARN of an organizational unit for the launch permission.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AmiLaunchPermissionArgs({
    String? accountId,
    String? group,
    required String imageId,
    String? organizationArn,
    String? organizationalUnitArn,
    String? region,
  })  : accountId = pulumi.Input.asOptionalInput<String>(accountId),
        group = pulumi.Input.asOptionalInput<String>(group),
        imageId = pulumi.Input.asInput<String>(imageId),
        organizationArn = pulumi.Input.asOptionalInput<String>(organizationArn),
        organizationalUnitArn =
            pulumi.Input.asOptionalInput<String>(organizationalUnitArn),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      group: map['group'] == null ? null : map['group'] as String,
      imageId: map['imageId'] as String,
      organizationArn: map['organizationArn'] == null
          ? null
          : map['organizationArn'] as String,
      organizationalUnitArn: map['organizationalUnitArn'] == null
          ? null
          : map['organizationalUnitArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
