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
  KeyArgs({
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
      keyName: map['keyName'] == null ? null : (map['keyName'] as String).input(),
      properties: (KeyProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vaultName: (map['vaultName'] as String).input(),
    );
  }
}

