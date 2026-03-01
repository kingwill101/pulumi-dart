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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? group,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? organizationArn,
    pulumi.Output<String>? organizationalUnitArn,
    pulumi.Output<String>? region,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      group = pulumi.Input.asOptionalInput<String>(group),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      organizationArn = pulumi.Input.asOptionalInput<String>(organizationArn),
      organizationalUnitArn = pulumi.Input.asOptionalInput<String>(organizationalUnitArn),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      group: map['group'] == null ? null : pulumi.Output.create<String>(map['group'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      organizationArn: map['organizationArn'] == null ? null : pulumi.Output.create<String>(map['organizationArn'] as String),
      organizationalUnitArn: map['organizationalUnitArn'] == null ? null : pulumi.Output.create<String>(map['organizationalUnitArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

