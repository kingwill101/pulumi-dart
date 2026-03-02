// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permissions_boundary_attachment_permissions_boundary.dart';

/// Input properties used for looking up and filtering PermissionsBoundaryAttachment resources.
class PermissionsBoundaryAttachmentState {
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final pulumi.Input<String>? instanceArn;
  /// The Amazon Resource Name (ARN) of the Permission Set.
  final pulumi.Input<String>? permissionSetArn;
  /// The permissions boundary policy. See below.
  final pulumi.Input<PermissionsBoundaryAttachmentPermissionsBoundary>? permissionsBoundary;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PermissionsBoundaryAttachmentState].
  /// [instanceArn] The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  /// [permissionSetArn] The Amazon Resource Name (ARN) of the Permission Set.
  /// [permissionsBoundary] The permissions boundary policy. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PermissionsBoundaryAttachmentState({
    this.instanceArn,
    this.permissionSetArn,
    this.permissionsBoundary,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceArn': ?instanceArn,
      'permissionSetArn': ?permissionSetArn,
      'permissionsBoundary': ?pulumi.Input.mapOptionalInputValue<PermissionsBoundaryAttachmentPermissionsBoundary, Map<String, dynamic>>(permissionsBoundary, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory PermissionsBoundaryAttachmentState.fromMap(Map<String, dynamic> map) {
    return PermissionsBoundaryAttachmentState(
      instanceArn: map['instanceArn'] == null ? null : ((map['instanceArn'] as String).input()).input(),
      permissionSetArn: map['permissionSetArn'] == null ? null : ((map['permissionSetArn'] as String).input()).input(),
      permissionsBoundary: map['permissionsBoundary'] == null ? null : ((PermissionsBoundaryAttachmentPermissionsBoundary.fromMap((map['permissionsBoundary']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

