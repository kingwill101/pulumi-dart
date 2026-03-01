// ignore_for_file: unused_element, unnecessary_cast

import 'custom_keys_response.dart';

/// Category:= CustomKeys
/// AuthType:= CustomKeys (as type discriminator)
/// Credentials:= {CustomKeys} as CustomKeys
/// Target:= {any value}
/// Use Metadata property bag for ApiVersion and other metadata fields
class CustomKeysConnectionPropertiesResponse {
  /// Authentication type of the connection target
  /// Expected value is 'CustomKeys'.
  final String authType;
  /// Category of the connection
  final String? category;
  final String createdByWorkspaceArmId;
  /// Custom Keys credential object
  final CustomKeysResponse? credentials;
  final String? error;
  final String? expiryTime;
  /// Group based on connection category
  final String group;
  final bool? isSharedToAll;
  /// Store user metadata for this connection
  final Map<String, String>? metadata;
  final String? peRequirement;
  final String? peStatus;
  final List<String>? sharedUserList;
  final String? target;
  final bool? useWorkspaceManagedIdentity;

  /// Creates a new [CustomKeysConnectionPropertiesResponse].
  /// [authType] Authentication type of the connection target
  /// [category] Category of the connection
  /// [createdByWorkspaceArmId] Required.
  /// [credentials] Custom Keys credential object
  /// [error] Optional.
  /// [expiryTime] Optional.
  /// [group] Group based on connection category
  /// [isSharedToAll] Optional.
  /// [metadata] Store user metadata for this connection
  /// [peRequirement] Optional.
  /// [peStatus] Optional.
  /// [sharedUserList] Optional.
  /// [target] Optional.
  /// [useWorkspaceManagedIdentity] Optional.
  CustomKeysConnectionPropertiesResponse({
    required this.authType,
    this.category,
    required this.createdByWorkspaceArmId,
    this.credentials,
    this.error,
    this.expiryTime,
    required this.group,
    this.isSharedToAll,
    this.metadata,
    this.peRequirement,
    this.peStatus,
    this.sharedUserList,
    this.target,
    this.useWorkspaceManagedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
      'category': ?category,
      'createdByWorkspaceArmId': createdByWorkspaceArmId,
      'credentials': ?credentials == null ? null : credentials!.toMap(),
      'error': ?error,
      'expiryTime': ?expiryTime,
      'group': group,
      'isSharedToAll': ?isSharedToAll,
      'metadata': ?metadata,
      'peRequirement': ?peRequirement,
      'peStatus': ?peStatus,
      'sharedUserList': ?sharedUserList,
      'target': ?target,
      'useWorkspaceManagedIdentity': ?useWorkspaceManagedIdentity,
    };
  }

  factory CustomKeysConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CustomKeysConnectionPropertiesResponse(
      authType: map['authType'] as String,
      category: map['category'] == null ? null : map['category'] as String,
      createdByWorkspaceArmId: map['createdByWorkspaceArmId'] as String,
      credentials: map['credentials'] == null ? null : CustomKeysResponse.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      error: map['error'] == null ? null : map['error'] as String,
      expiryTime: map['expiryTime'] == null ? null : map['expiryTime'] as String,
      group: map['group'] as String,
      isSharedToAll: map['isSharedToAll'] == null ? null : map['isSharedToAll'] as bool,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      peRequirement: map['peRequirement'] == null ? null : map['peRequirement'] as String,
      peStatus: map['peStatus'] == null ? null : map['peStatus'] as String,
      sharedUserList: map['sharedUserList'] == null ? null : (map['sharedUserList'] as List).cast<String>(),
      target: map['target'] == null ? null : map['target'] as String,
      useWorkspaceManagedIdentity: map['useWorkspaceManagedIdentity'] == null ? null : map['useWorkspaceManagedIdentity'] as bool,
    );
  }
}

