// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_contract_properties_response.dart';

/// Result data returned by getNamedValue.
class GetNamedValueResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Unique name of NamedValue. It may contain only letters, digits, period, dash, and underscore characters.
  final String? displayName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// KeyVault location details of the namedValue.
  final KeyVaultContractPropertiesResponse? keyVault;
  /// The name of the resource
  final String? name;
  /// The provisioning state
  final String? provisioningState;
  /// Determines whether the value is a secret and should be encrypted or not. Default value is false.
  final bool? secret;
  /// Optional tags that when provided can be used to filter the NamedValue list.
  final List<String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Value of the NamedValue. Can contain policy expressions. It may not be empty or consist only of whitespace. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  final String? value;

  /// Creates a new [GetNamedValueResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] Unique name of NamedValue. It may contain only letters, digits, period, dash, and underscore characters.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [keyVault] KeyVault location details of the namedValue.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state
  /// [secret] Determines whether the value is a secret and should be encrypted or not. Default value is false.
  /// [tags] Optional tags that when provided can be used to filter the NamedValue list.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [value] Value of the NamedValue. Can contain policy expressions. It may not be empty or consist only of whitespace. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  const GetNamedValueResult({
    this.azureApiVersion,
    this.displayName,
    this.id,
    this.keyVault,
    this.name,
    this.provisioningState,
    this.secret,
    this.tags,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'displayName': ?displayName,
      'id': ?id,
      'keyVault': ?keyVault?.toMap(),
      'name': ?name,
      'provisioningState': ?provisioningState,
      'secret': ?secret,
      'tags': ?tags,
      'type': ?type,
      'value': ?value,
    };
  }

  factory GetNamedValueResult.fromMap(Map<String, dynamic> map) {
    return GetNamedValueResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return KeyVaultContractPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
