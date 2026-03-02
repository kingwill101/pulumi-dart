// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_managed_hsm_args_doc}
/// Arguments for getManagedHsm.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_managed_hsm_args_doc}
class GetManagedHsmArgs {
  /// The name of the managed HSM Pool.
  final pulumi.Input<String> name;
  /// Name of the resource group that contains the managed HSM pool.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedHsmArgs].
  /// [name] The name of the managed HSM Pool.
  /// [resourceGroupName] Name of the resource group that contains the managed HSM pool.
  GetManagedHsmArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedHsmArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedHsmArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

