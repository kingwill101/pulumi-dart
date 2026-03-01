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
    pulumi.Output<String>? instanceArn,
    pulumi.Output<String>? permissionSetArn,
    pulumi.Output<PermissionsBoundaryAttachmentPermissionsBoundary>? permissionsBoundary,
    pulumi.Output<String>? region,
  }) :
      instanceArn = pulumi.Input.asOptionalInput<String>(instanceArn),
      permissionSetArn = pulumi.Input.asOptionalInput<String>(permissionSetArn),
      permissionsBoundary = pulumi.Input.asOptionalInput<PermissionsBoundaryAttachmentPermissionsBoundary>(permissionsBoundary),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      instanceArn: map['instanceArn'] == null ? null : pulumi.Output.create<String>(map['instanceArn'] as String),
      permissionSetArn: map['permissionSetArn'] == null ? null : pulumi.Output.create<String>(map['permissionSetArn'] as String),
      permissionsBoundary: map['permissionsBoundary'] == null ? null : pulumi.Output.create<PermissionsBoundaryAttachmentPermissionsBoundary>(PermissionsBoundaryAttachmentPermissionsBoundary.fromMap((map['permissionsBoundary'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

