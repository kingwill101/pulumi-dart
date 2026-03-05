// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permissions_boundary_attachment_permissions_boundary.dart';

/// {@template pulumi_ssoadmin_permissions_boundary_attachment_permissions_boundary_attachment_args_doc}
/// The set of arguments for PermissionsBoundaryAttachment.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_permissions_boundary_attachment_permissions_boundary_attachment_args_doc}
class PermissionsBoundaryAttachmentArgs {
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final pulumi.Input<String> instanceArn;
  /// The Amazon Resource Name (ARN) of the Permission Set.
  final pulumi.Input<String> permissionSetArn;
  /// The permissions boundary policy. See below.
  final pulumi.Input<PermissionsBoundaryAttachmentPermissionsBoundary> permissionsBoundary;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PermissionsBoundaryAttachmentArgs].
  /// [instanceArn] The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  /// [permissionSetArn] The Amazon Resource Name (ARN) of the Permission Set.
  /// [permissionsBoundary] The permissions boundary policy. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PermissionsBoundaryAttachmentArgs({
    required this.instanceArn,
    required this.permissionSetArn,
    required this.permissionsBoundary,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceArn': instanceArn,
      'permissionSetArn': permissionSetArn,
      'permissionsBoundary': pulumi.Input.mapInputValue<PermissionsBoundaryAttachmentPermissionsBoundary, Map<String, dynamic>>(permissionsBoundary, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory PermissionsBoundaryAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return PermissionsBoundaryAttachmentArgs(
      instanceArn: pulumi.Input.fromValue(map['instanceArn'] as String),
      permissionSetArn: pulumi.Input.fromValue(map['permissionSetArn'] as String),
      permissionsBoundary: pulumi.Input.fromValue(PermissionsBoundaryAttachmentPermissionsBoundary.fromMap((map['permissionsBoundary']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

