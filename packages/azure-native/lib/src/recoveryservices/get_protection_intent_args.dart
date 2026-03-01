// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_protection_intent_args_doc}
/// Arguments for getProtectionIntent.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_protection_intent_args_doc}
class GetProtectionIntentArgs {
  /// Fabric name associated with the backed up item.
  final pulumi.Input<String> fabricName;
  /// Backed up item name whose details are to be fetched.
  final pulumi.Input<String> intentObjectName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetProtectionIntentArgs].
  /// [fabricName] Fabric name associated with the backed up item.
  /// [intentObjectName] Backed up item name whose details are to be fetched.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [vaultName] The name of the recovery services vault.
  GetProtectionIntentArgs({
    required String fabricName,
    required String intentObjectName,
    required String resourceGroupName,
    required String vaultName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      intentObjectName = pulumi.Input.asInput<String>(intentObjectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'intentObjectName': intentObjectName,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetProtectionIntentArgs.fromMap(Map<String, dynamic> map) {
    return GetProtectionIntentArgs(
      fabricName: map['fabricName'] as String,
      intentObjectName: map['intentObjectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      vaultName: map['vaultName'] as String,
    );
  }
}

