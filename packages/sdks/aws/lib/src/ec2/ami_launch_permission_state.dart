// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AmiLaunchPermission resources.
class AmiLaunchPermissionState {
  /// AWS account ID for the launch permission.
  final pulumi.Input<String>? accountId;
  /// Name of the group for the launch permission. Valid values: `"all"`.
  final pulumi.Input<String>? group;
  /// ID of the AMI.
  final pulumi.Input<String>? imageId;
  /// ARN of an organization for the launch permission.
  final pulumi.Input<String>? organizationArn;
  /// ARN of an organizational unit for the launch permission.
  final pulumi.Input<String>? organizationalUnitArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AmiLaunchPermissionState].
  /// [accountId] AWS account ID for the launch permission.
  /// [group] Name of the group for the launch permission. Valid values: `"all"`.
  /// [imageId] ID of the AMI.
  /// [organizationArn] ARN of an organization for the launch permission.
  /// [organizationalUnitArn] ARN of an organizational unit for the launch permission.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AmiLaunchPermissionState({
    this.accountId,
    this.group,
    this.imageId,
    this.organizationArn,
    this.organizationalUnitArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'group': ?group,
      'imageId': ?imageId,
      'organizationArn': ?organizationArn,
      'organizationalUnitArn': ?organizationalUnitArn,
      'region': ?region,
    };
  }

  factory AmiLaunchPermissionState.fromMap(Map<String, dynamic> map) {
    return AmiLaunchPermissionState(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      group: map['group'] == null ? null : (map['group'] as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      organizationArn: map['organizationArn'] == null ? null : (map['organizationArn'] as String).input(),
      organizationalUnitArn: map['organizationalUnitArn'] == null ? null : (map['organizationalUnitArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

