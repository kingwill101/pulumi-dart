// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_managed_instance_key_args_doc}
/// The set of arguments for ManagedInstanceKey.
/// {@endtemplate}
/// {@macro pulumi_sql_managed_instance_key_args_doc}
class ManagedInstanceKeyArgs {
  /// The name of the managed instance key to be operated on (updated or created).
  final pulumi.Input<String>? keyName;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The key type like 'ServiceManaged', 'AzureKeyVault'.
  final pulumi.Input<String> serverKeyType;
  /// The URI of the key. If the ServerKeyType is AzureKeyVault, then the URI is required.
  final pulumi.Input<String>? uri;

  /// Creates a new [ManagedInstanceKeyArgs].
  /// [keyName] The name of the managed instance key to be operated on (updated or created).
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverKeyType] The key type like 'ServiceManaged', 'AzureKeyVault'.
  /// [uri] The URI of the key. If the ServerKeyType is AzureKeyVault, then the URI is required.
  ManagedInstanceKeyArgs({
    String? keyName,
    required String managedInstanceName,
    required String resourceGroupName,
    required String serverKeyType,
    String? uri,
  }) :
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      managedInstanceName = pulumi.Input.asInput<String>(managedInstanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverKeyType = pulumi.Input.asInput<String>(serverKeyType),
      uri = pulumi.Input.asOptionalInput<String>(uri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
      'serverKeyType': serverKeyType,
      'uri': ?uri,
    };
  }

  factory ManagedInstanceKeyArgs.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceKeyArgs(
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      managedInstanceName: map['managedInstanceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverKeyType: map['serverKeyType'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

