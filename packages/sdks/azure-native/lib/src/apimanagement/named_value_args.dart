// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_contract_create_properties.dart';

/// {@template pulumi_apimanagement_named_value_args_doc}
/// The set of arguments for NamedValue.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_named_value_args_doc}
class NamedValueArgs {
  /// Unique name of NamedValue. It may contain only letters, digits, period, dash, and underscore characters.
  final pulumi.Input<String> displayName;
  /// KeyVault location details of the namedValue.
  final pulumi.Input<KeyVaultContractCreateProperties>? keyVault;
  /// Identifier of the NamedValue.
  final pulumi.Input<String>? namedValueId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Determines whether the value is a secret and should be encrypted or not. Default value is false.
  final pulumi.Input<bool>? secret;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Optional tags that when provided can be used to filter the NamedValue list.
  final pulumi.Input<List<String>>? tags;
  /// Value of the NamedValue. Can contain policy expressions. It may not be empty or consist only of whitespace. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  final pulumi.Input<String>? value;

  /// Creates a new [NamedValueArgs].
  /// [displayName] Unique name of NamedValue. It may contain only letters, digits, period, dash, and underscore characters.
  /// [keyVault] KeyVault location details of the namedValue.
  /// [namedValueId] Identifier of the NamedValue.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [secret] Determines whether the value is a secret and should be encrypted or not. Default value is false.
  /// [serviceName] The name of the API Management service.
  /// [tags] Optional tags that when provided can be used to filter the NamedValue list.
  /// [value] Value of the NamedValue. Can contain policy expressions. It may not be empty or consist only of whitespace. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  const NamedValueArgs({
    required this.displayName,
    this.keyVault,
    this.namedValueId,
    required this.resourceGroupName,
    this.secret,
    required this.serviceName,
    this.tags,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'keyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultContractCreateProperties, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'namedValueId': ?namedValueId,
      'resourceGroupName': resourceGroupName,
      'secret': ?secret,
      'serviceName': serviceName,
      'tags': ?tags,
      'value': ?value,
    };
  }

  factory NamedValueArgs.fromMap(Map<String, dynamic> map) {
    return NamedValueArgs(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultContractCreateProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      namedValueId: (() { final guardedValue = map['namedValueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
