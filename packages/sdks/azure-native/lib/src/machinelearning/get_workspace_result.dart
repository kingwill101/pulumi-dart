// ignore_for_file: unused_element, unnecessary_cast

import 'sku_response.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The creation time for this workspace resource.
  final String creationTime;
  /// The resource ID.
  final String id;
  /// The key vault identifier used for encrypted workspaces.
  final String? keyVaultIdentifierId;
  /// The location of the resource. This cannot be changed after the resource is created.
  final String location;
  /// The name of the resource.
  final String name;
  /// The email id of the owner for this workspace.
  final String ownerEmail;
  /// The sku of the workspace.
  final SkuResponse? sku;
  /// The regional endpoint for the machine learning studio service which hosts this workspace.
  final String studioEndpoint;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;
  /// The fully qualified arm id of the storage account associated with this workspace.
  final String userStorageAccountId;
  /// The immutable id associated with this workspace.
  final String workspaceId;
  /// The current state of workspace resource.
  final String workspaceState;
  /// The type of this workspace.
  final String workspaceType;

  /// Creates a new [GetWorkspaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] The creation time for this workspace resource.
  /// [id] The resource ID.
  /// [keyVaultIdentifierId] The key vault identifier used for encrypted workspaces.
  /// [location] The location of the resource. This cannot be changed after the resource is created.
  /// [name] The name of the resource.
  /// [ownerEmail] The email id of the owner for this workspace.
  /// [sku] The sku of the workspace.
  /// [studioEndpoint] The regional endpoint for the machine learning studio service which hosts this workspace.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  /// [userStorageAccountId] The fully qualified arm id of the storage account associated with this workspace.
  /// [workspaceId] The immutable id associated with this workspace.
  /// [workspaceState] The current state of workspace resource.
  /// [workspaceType] The type of this workspace.
  const GetWorkspaceResult({
    required this.azureApiVersion,
    required this.creationTime,
    required this.id,
    this.keyVaultIdentifierId,
    required this.location,
    required this.name,
    required this.ownerEmail,
    this.sku,
    required this.studioEndpoint,
    this.tags,
    required this.type,
    required this.userStorageAccountId,
    required this.workspaceId,
    required this.workspaceState,
    required this.workspaceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': creationTime,
      'id': id,
      'keyVaultIdentifierId': ?keyVaultIdentifierId,
      'location': location,
      'name': name,
      'ownerEmail': ownerEmail,
      'sku': ?sku?.toMap(),
      'studioEndpoint': studioEndpoint,
      'tags': ?tags,
      'type': type,
      'userStorageAccountId': userStorageAccountId,
      'workspaceId': workspaceId,
      'workspaceState': workspaceState,
      'workspaceType': workspaceType,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] as String,
      id: map['id'] as String,
      keyVaultIdentifierId: (() { final guardedValue = map['keyVaultIdentifierId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      ownerEmail: map['ownerEmail'] as String,
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      studioEndpoint: map['studioEndpoint'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      userStorageAccountId: map['userStorageAccountId'] as String,
      workspaceId: map['workspaceId'] as String,
      workspaceState: map['workspaceState'] as String,
      workspaceType: map['workspaceType'] as String,
    );
  }
}

