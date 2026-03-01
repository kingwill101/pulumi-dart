// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'protected_item_model_properties.dart';

/// {@template pulumi_datareplication_protected_item_args_doc}
/// The set of arguments for ProtectedItem.
/// {@endtemplate}
/// {@macro pulumi_datareplication_protected_item_args_doc}
class ProtectedItemArgs {
  /// Protected item model properties.
  final pulumi.Input<ProtectedItemModelProperties> properties;
  /// The protected item name.
  final pulumi.Input<String>? protectedItemName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The vault name.
  final pulumi.Input<String> vaultName;

  /// Creates a new [ProtectedItemArgs].
  /// [properties] Protected item model properties.
  /// [protectedItemName] The protected item name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vaultName] The vault name.
  ProtectedItemArgs({
    required pulumi.Output<ProtectedItemModelProperties> properties,
    pulumi.Output<String>? protectedItemName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vaultName,
  }) :
      properties = pulumi.Input.asInput<ProtectedItemModelProperties>(properties),
      protectedItemName = pulumi.Input.asOptionalInput<String>(protectedItemName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': pulumi.Input.mapInputValue<ProtectedItemModelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'protectedItemName': ?protectedItemName,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory ProtectedItemArgs.fromMap(Map<String, dynamic> map) {
    return ProtectedItemArgs(
      properties: pulumi.Output.create<ProtectedItemModelProperties>(ProtectedItemModelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      protectedItemName: map['protectedItemName'] == null ? null : pulumi.Output.create<String>(map['protectedItemName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

