// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maxcompute_tenant_role_user_attachment_tenant_role_user_attachment_args_doc}
/// The set of arguments for TenantRoleUserAttachment.
/// {@endtemplate}
/// {@macro pulumi_maxcompute_tenant_role_user_attachment_tenant_role_user_attachment_args_doc}
class TenantRoleUserAttachmentArgs {
  /// Account UID
  ///
  /// 1. If the user is a primary account, the AccountId format is UID.
  /// Example: 200231703336555555
  ///
  /// 2. If the user is a RAM user, the AccountId format is p4_UID.
  /// Example: p4_200531704446555555
  ///
  /// 3. If the user is a RAM role, the AccountId format is v4_UID.
  /// Example: v4_300007628597555555
  final pulumi.Input<String>? accountId;
  /// Tenant role. By default, admin and super_administrator are available. You can add more roles in the console.
  final pulumi.Input<String>? tenantRole;

  /// Creates a new [TenantRoleUserAttachmentArgs].
  /// [accountId] Account UID
  /// [tenantRole] Tenant role. By default, admin and super_administrator are available. You can add more roles in the console.
  TenantRoleUserAttachmentArgs({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? tenantRole,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      tenantRole = pulumi.Input.asOptionalInput<String>(tenantRole);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'tenantRole': ?tenantRole,
    };
  }

  factory TenantRoleUserAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return TenantRoleUserAttachmentArgs(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      tenantRole: map['tenantRole'] == null ? null : pulumi.Output.create<String>(map['tenantRole'] as String),
    );
  }
}

