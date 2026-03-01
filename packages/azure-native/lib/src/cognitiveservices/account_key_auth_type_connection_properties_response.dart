// ignore_for_file: unused_element, unnecessary_cast

import 'connection_account_key_response.dart';

/// This connection type covers the account key connection for Azure storage
class AccountKeyAuthTypeConnectionPropertiesResponse {
  /// Authentication type of the connection target
  /// Expected value is 'AccountKey'.
  final String authType;
  /// Category of the connection
  final String? category;
  final String createdByWorkspaceArmId;
  /// Account key object for connection credential.
  final ConnectionAccountKeyResponse? credentials;
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

  /// Creates a new [AccountKeyAuthTypeConnectionPropertiesResponse].
  /// [authType] Authentication type of the connection target
  /// [category] Category of the connection
  /// [createdByWorkspaceArmId] Required.
  /// [credentials] Account key object for connection credential.
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
  AccountKeyAuthTypeConnectionPropertiesResponse({
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

  factory AccountKeyAuthTypeConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AccountKeyAuthTypeConnectionPropertiesResponse(
      authType: map['authType'] as String,
      category: map['category'] == null ? null : map['category'] as String,
      createdByWorkspaceArmId: map['createdByWorkspaceArmId'] as String,
      credentials: map['credentials'] == null ? null : ConnectionAccountKeyResponse.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
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

