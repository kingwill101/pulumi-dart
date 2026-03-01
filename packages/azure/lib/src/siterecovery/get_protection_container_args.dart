// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siterecovery_get_protection_container_get_protection_container_args_doc}
/// Arguments for getProtectionContainer.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_get_protection_container_get_protection_container_args_doc}
class GetProtectionContainerArgs {
  /// Specifies the name of the protection container.
  final pulumi.Input<String> name;
  /// The name of the fabric that contains the protection container.
  final pulumi.Input<String> recoveryFabricName;
  /// The name of the Recovery Services Vault that the protection container is associated witth.
  final pulumi.Input<String> recoveryVaultName;
  /// The name of the resource group in which the associated protection container resides.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProtectionContainerArgs].
  /// [name] Specifies the name of the protection container.
  /// [recoveryFabricName] The name of the fabric that contains the protection container.
  /// [recoveryVaultName] The name of the Recovery Services Vault that the protection container is associated witth.
  /// [resourceGroupName] The name of the resource group in which the associated protection container resides.
  GetProtectionContainerArgs({
    required String name,
    required String recoveryFabricName,
    required String recoveryVaultName,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      recoveryFabricName = pulumi.Input.asInput<String>(recoveryFabricName),
      recoveryVaultName = pulumi.Input.asInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'recoveryFabricName': recoveryFabricName,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProtectionContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetProtectionContainerArgs(
      name: map['name'] as String,
      recoveryFabricName: map['recoveryFabricName'] as String,
      recoveryVaultName: map['recoveryVaultName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

