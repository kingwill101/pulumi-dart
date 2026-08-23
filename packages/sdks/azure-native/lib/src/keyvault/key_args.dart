// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_properties.dart';

/// {@template pulumi_keyvault_key_args_doc}
/// The set of arguments for Key.
/// {@endtemplate}
/// {@macro pulumi_keyvault_key_args_doc}
class KeyArgs {
  /// The name of the key to be created. The value you provide may be copied globally for the purpose of running the service. The value provided should not include personally identifiable or sensitive information.
  final pulumi.Input<String>? keyName;
  /// The properties of the key to be created.
  final pulumi.Input<KeyProperties> properties;
  /// The name of the resource group which contains the specified key vault.
  final pulumi.Input<String> resourceGroupName;
  /// The tags that will be assigned to the key.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the key vault which contains the key to be created.
  final pulumi.Input<String> vaultName;

  /// Creates a new [KeyArgs].
  /// [keyName] The name of the key to be created. The value you provide may be copied globally for the purpose of running the service. The value provided should not include personally identifiable or sensitive information.
  /// [properties] The properties of the key to be created.
  /// [resourceGroupName] The name of the resource group which contains the specified key vault.
  /// [tags] The tags that will be assigned to the key.
  /// [vaultName] The name of the key vault which contains the key to be created.
  const KeyArgs({
    this.keyName,
    required this.properties,
    required this.resourceGroupName,
    this.tags,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'properties': pulumi.Input.mapInputValue<KeyProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vaultName': vaultName,
    };
  }

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(KeyProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
    );
  }
}
