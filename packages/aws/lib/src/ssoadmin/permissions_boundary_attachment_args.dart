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
  final pulumi.Input<PermissionsBoundaryAttachmentPermissionsBoundary>
      permissionsBoundary;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PermissionsBoundaryAttachmentArgs].
  /// [instanceArn] The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  /// [permissionSetArn] The Amazon Resource Name (ARN) of the Permission Set.
  /// [permissionsBoundary] The permissions boundary policy. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PermissionsBoundaryAttachmentArgs({
    required String instanceArn,
    required String permissionSetArn,
    required PermissionsBoundaryAttachmentPermissionsBoundary
        permissionsBoundary,
    String? region,
  })  : instanceArn = pulumi.Input.asInput<String>(instanceArn),
        permissionSetArn = pulumi.Input.asInput<String>(permissionSetArn),
        permissionsBoundary = pulumi.Input.asInput<
                PermissionsBoundaryAttachmentPermissionsBoundary>(
            permissionsBoundary),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceArn'] = instanceArn;
    map['permissionSetArn'] = permissionSetArn;
    map['permissionsBoundary'] = pulumi.Input.mapInputValue<
        PermissionsBoundaryAttachmentPermissionsBoundary,
        Map<String, dynamic>>(permissionsBoundary, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory PermissionsBoundaryAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return PermissionsBoundaryAttachmentArgs(
      instanceArn: map['instanceArn'] as String,
      permissionSetArn: map['permissionSetArn'] as String,
      permissionsBoundary:
          PermissionsBoundaryAttachmentPermissionsBoundary.fromMap(
              (map['permissionsBoundary'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
