// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_contract_create_properties.dart';

/// {@template pulumi_apimanagement_workspace_named_value_args_doc}
/// The set of arguments for WorkspaceNamedValue.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_named_value_args_doc}
class WorkspaceNamedValueArgs {
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
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceNamedValueArgs].
  /// [displayName] Unique name of NamedValue. It may contain only letters, digits, period, dash, and underscore characters.
  /// [keyVault] KeyVault location details of the namedValue.
  /// [namedValueId] Identifier of the NamedValue.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [secret] Determines whether the value is a secret and should be encrypted or not. Default value is false.
  /// [serviceName] The name of the API Management service.
  /// [tags] Optional tags that when provided can be used to filter the NamedValue list.
  /// [value] Value of the NamedValue. Can contain policy expressions. It may not be empty or consist only of whitespace. This property will not be filled on 'GET' operations! Use '/listSecrets' POST request to get the value.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceNamedValueArgs({
    required pulumi.Output<String> displayName,
    pulumi.Output<KeyVaultContractCreateProperties>? keyVault,
    pulumi.Output<String>? namedValueId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? secret,
    required pulumi.Output<String> serviceName,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? value,
    required pulumi.Output<String> workspaceId,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName),
      keyVault = pulumi.Input.asOptionalInput<KeyVaultContractCreateProperties>(keyVault),
      namedValueId = pulumi.Input.asOptionalInput<String>(namedValueId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      secret = pulumi.Input.asOptionalInput<bool>(secret),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      value = pulumi.Input.asOptionalInput<String>(value),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

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
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceNamedValueArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceNamedValueArgs(
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      keyVault: map['keyVault'] == null ? null : pulumi.Output.create<KeyVaultContractCreateProperties>(KeyVaultContractCreateProperties.fromMap((map['keyVault'] as Map).cast<String, dynamic>())),
      namedValueId: map['namedValueId'] == null ? null : pulumi.Output.create<String>(map['namedValueId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secret: map['secret'] == null ? null : pulumi.Output.create<bool>(map['secret'] as bool),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

