// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../permissions_boundary_attachment_permissions_boundary/permissions_boundary_attachment_permissions_boundary.dart';

/// The set of arguments for PermissionsBoundaryAttachment.
class PermissionsBoundaryAttachmentArgs {
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final Input<String> instanceArn;

  /// The Amazon Resource Name (ARN) of the Permission Set.
  final Input<String> permissionSetArn;

  /// The permissions boundary policy. See below.
  final Input<PermissionsBoundaryAttachmentPermissionsBoundary>
      permissionsBoundary;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  PermissionsBoundaryAttachmentArgs({
    required this.instanceArn,
    required this.permissionSetArn,
    required this.permissionsBoundary,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceArn'] = instanceArn;
    map['permissionSetArn'] = permissionSetArn;
    map['permissionsBoundary'] = Input.mapInputValue<
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
      instanceArn: Input.asInput<String>(map['instanceArn']),
      permissionSetArn: Input.asInput<String>(map['permissionSetArn']),
      permissionsBoundary:
          Input.asInput<PermissionsBoundaryAttachmentPermissionsBoundary>(
              map['permissionsBoundary']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
