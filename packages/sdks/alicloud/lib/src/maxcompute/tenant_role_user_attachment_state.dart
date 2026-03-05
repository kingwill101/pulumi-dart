// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TenantRoleUserAttachment resources.
class TenantRoleUserAttachmentState {
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

  /// Creates a new [TenantRoleUserAttachmentState].
  /// [accountId] Account UID
  /// [tenantRole] Tenant role. By default, admin and super_administrator are available. You can add more roles in the console.
  TenantRoleUserAttachmentState({
    this.accountId,
    this.tenantRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'tenantRole': ?tenantRole,
    };
  }

  factory TenantRoleUserAttachmentState.fromMap(Map<String, dynamic> map) {
    return TenantRoleUserAttachmentState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantRole: (() { final guardedValue = map['tenantRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

