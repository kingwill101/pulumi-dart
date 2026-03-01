// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku.dart';

/// {@template pulumi_machinelearning_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_machinelearning_workspace_args_doc}
class WorkspaceArgs {
  /// The key vault identifier used for encrypted workspaces.
  final pulumi.Input<String>? keyVaultIdentifierId;
  /// The location of the resource. This cannot be changed after the resource is created.
  final pulumi.Input<String>? location;
  /// The email id of the owner for this workspace.
  final pulumi.Input<String> ownerEmail;
  /// The name of the resource group to which the machine learning workspace belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The sku of the workspace.
  final pulumi.Input<Sku>? sku;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The fully qualified arm id of the storage account associated with this workspace.
  final pulumi.Input<String> userStorageAccountId;
  /// The name of the machine learning workspace.
  final pulumi.Input<String>? workspaceName;

  /// Creates a new [WorkspaceArgs].
  /// [keyVaultIdentifierId] The key vault identifier used for encrypted workspaces.
  /// [location] The location of the resource. This cannot be changed after the resource is created.
  /// [ownerEmail] The email id of the owner for this workspace.
  /// [resourceGroupName] The name of the resource group to which the machine learning workspace belongs.
  /// [sku] The sku of the workspace.
  /// [tags] The tags of the resource.
  /// [userStorageAccountId] The fully qualified arm id of the storage account associated with this workspace.
  /// [workspaceName] The name of the machine learning workspace.
  WorkspaceArgs({
    pulumi.Output<String>? keyVaultIdentifierId,
    pulumi.Output<String>? location,
    required pulumi.Output<String> ownerEmail,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> userStorageAccountId,
    pulumi.Output<String>? workspaceName,
  }) :
      keyVaultIdentifierId = pulumi.Input.asOptionalInput<String>(keyVaultIdentifierId),
      location = pulumi.Input.asOptionalInput<String>(location),
      ownerEmail = pulumi.Input.asInput<String>(ownerEmail),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userStorageAccountId = pulumi.Input.asInput<String>(userStorageAccountId),
      workspaceName = pulumi.Input.asOptionalInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultIdentifierId': ?keyVaultIdentifierId,
      'location': ?location,
      'ownerEmail': ownerEmail,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'userStorageAccountId': userStorageAccountId,
      'workspaceName': ?workspaceName,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      keyVaultIdentifierId: map['keyVaultIdentifierId'] == null ? null : pulumi.Output.create<String>(map['keyVaultIdentifierId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      ownerEmail: pulumi.Output.create<String>(map['ownerEmail'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userStorageAccountId: pulumi.Output.create<String>(map['userStorageAccountId'] as String),
      workspaceName: map['workspaceName'] == null ? null : pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

