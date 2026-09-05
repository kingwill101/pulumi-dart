// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AmiLaunchPermission resources.
class AmiLaunchPermissionState {
  /// AWS account ID for the launch permission.
  final pulumi.Input<String?>? accountId;
  /// Name of the group for the launch permission. Valid values: `"all"`.
  final pulumi.Input<String?>? group;
  /// ID of the AMI.
  final pulumi.Input<String?>? imageId;
  /// ARN of an organization for the launch permission.
  final pulumi.Input<String?>? organizationArn;
  /// ARN of an organizational unit for the launch permission.
  final pulumi.Input<String?>? organizationalUnitArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [AmiLaunchPermissionState].
  /// [accountId] AWS account ID for the launch permission.
  /// [group] Name of the group for the launch permission. Valid values: `"all"`.
  /// [imageId] ID of the AMI.
  /// [organizationArn] ARN of an organization for the launch permission.
  /// [organizationalUnitArn] ARN of an organizational unit for the launch permission.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AmiLaunchPermissionState({
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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationArn: (() { final guardedValue = map['organizationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationalUnitArn: (() { final guardedValue = map['organizationalUnitArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
