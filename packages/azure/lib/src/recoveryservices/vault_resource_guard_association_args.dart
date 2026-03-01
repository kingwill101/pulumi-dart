// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_vault_resource_guard_association_vault_resource_guard_association_args_doc}
/// The set of arguments for VaultResourceGuardAssociation.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_vault_resource_guard_association_vault_resource_guard_association_args_doc}
class VaultResourceGuardAssociationArgs {
  /// ID of the Resource Guard which should be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGuardId;
  /// ID of the Recovery Services Vault which should be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> vaultId;

  /// Creates a new [VaultResourceGuardAssociationArgs].
  /// [resourceGuardId] ID of the Resource Guard which should be associated with. Changing this forces a new resource to be created.
  /// [vaultId] ID of the Recovery Services Vault which should be associated with. Changing this forces a new resource to be created.
  VaultResourceGuardAssociationArgs({
    required String resourceGuardId,
    required String vaultId,
  }) :
      resourceGuardId = pulumi.Input.asInput<String>(resourceGuardId),
      vaultId = pulumi.Input.asInput<String>(vaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGuardId': resourceGuardId,
      'vaultId': vaultId,
    };
  }

  factory VaultResourceGuardAssociationArgs.fromMap(Map<String, dynamic> map) {
    return VaultResourceGuardAssociationArgs(
      resourceGuardId: map['resourceGuardId'] as String,
      vaultId: map['vaultId'] as String,
    );
  }
}

