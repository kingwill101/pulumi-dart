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
    this.keyVaultIdentifierId,
    this.location,
    required this.ownerEmail,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    required this.userStorageAccountId,
    this.workspaceName,
  });

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
      keyVaultIdentifierId: map['keyVaultIdentifierId'] == null ? null : (map['keyVaultIdentifierId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      ownerEmail: (map['ownerEmail'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      userStorageAccountId: (map['userStorageAccountId'] as String).input(),
      workspaceName: map['workspaceName'] == null ? null : (map['workspaceName']! as String).input(),
    );
  }
}

