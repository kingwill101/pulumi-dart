// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_contract_properties_response.dart';

/// Result data returned by getWorkspaceNamedValue.
class GetWorkspaceNamedValueResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Unique name of NamedValue. It may contain only letters, digits, period, dash, and underscore characters.
  final String displayName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// KeyVault location details of the namedValue.
  final KeyVaultContractPropertiesResponse? keyVault;
  /// The name of the resource
  final String name;
  /// Determines whether the value is a secret and should be encrypted or not. Default value is false.
  final bool? secret;
  /// Optional tags that when provided can be used to filter the NamedValue list.
  final List<String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Value of the NamedValue. Can contain policy expressions. It may not be empty or consist only of whitespace. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  final String? value;

  /// Creates a new [GetWorkspaceNamedValueResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] Unique name of NamedValue. It may contain only letters, digits, period, dash, and underscore characters.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [keyVault] KeyVault location details of the namedValue.
  /// [name] The name of the resource
  /// [secret] Determines whether the value is a secret and should be encrypted or not. Default value is false.
  /// [tags] Optional tags that when provided can be used to filter the NamedValue list.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [value] Value of the NamedValue. Can contain policy expressions. It may not be empty or consist only of whitespace. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  GetWorkspaceNamedValueResult({
    required this.azureApiVersion,
    required this.displayName,
    required this.id,
    this.keyVault,
    required this.name,
    this.secret,
    this.tags,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'displayName': displayName,
      'id': id,
      'keyVault': ?keyVault == null ? null : keyVault!.toMap(),
      'name': name,
      'secret': ?secret,
      'tags': ?tags,
      'type': type,
      'value': ?value,
    };
  }

  factory GetWorkspaceNamedValueResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceNamedValueResult(
      azureApiVersion: map['azureApiVersion'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      keyVault: map['keyVault'] == null ? null : KeyVaultContractPropertiesResponse.fromMap((map['keyVault']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      secret: map['secret'] == null ? null : map['secret']! as bool,
      tags: map['tags'] == null ? null : (map['tags']! as List).cast<String>(),
      type: map['type'] as String,
      value: map['value'] == null ? null : map['value']! as String,
    );
  }
}

