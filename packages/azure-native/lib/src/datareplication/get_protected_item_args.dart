// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datareplication_get_protected_item_args_doc}
/// Arguments for getProtectedItem.
/// {@endtemplate}
/// {@macro pulumi_datareplication_get_protected_item_args_doc}
class GetProtectedItemArgs {
  /// The protected item name.
  final pulumi.Input<String> protectedItemName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The vault name.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetProtectedItemArgs].
  /// [protectedItemName] The protected item name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vaultName] The vault name.
  GetProtectedItemArgs({
    required String protectedItemName,
    required String resourceGroupName,
    required String vaultName,
  }) :
      protectedItemName = pulumi.Input.asInput<String>(protectedItemName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protectedItemName': protectedItemName,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetProtectedItemArgs.fromMap(Map<String, dynamic> map) {
    return GetProtectedItemArgs(
      protectedItemName: map['protectedItemName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      vaultName: map['vaultName'] as String,
    );
  }
}

