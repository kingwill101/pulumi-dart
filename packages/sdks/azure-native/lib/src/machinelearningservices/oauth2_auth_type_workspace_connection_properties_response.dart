// ignore_for_file: unused_element, unnecessary_cast

import 'workspace_connection_oauth2_response.dart';

class OAuth2AuthTypeWorkspaceConnectionPropertiesResponse {
  /// Authentication type of the connection target
  /// Expected value is 'OAuth2'.
  final String authType;
  /// Category of the connection
  final String? category;
  final String createdByWorkspaceArmId;
  /// ClientId and ClientSecret are required. Other properties are optional
  /// depending on each OAuth2 provider's implementation.
  final WorkspaceConnectionOAuth2Response? credentials;
  final String? expiryTime;
  /// Group based on connection category
  final String group;
  final bool? isSharedToAll;
  /// Store user metadata for this connection
  final Map<String, String>? metadata;
  final List<String>? sharedUserList;
  final String? target;
  /// Value details of the workspace connection.
  final String? value;
  /// format for the workspace connection value
  final String? valueFormat;

  /// Creates a new [OAuth2AuthTypeWorkspaceConnectionPropertiesResponse].
  /// [authType] Authentication type of the connection target
  /// [category] Category of the connection
  /// [createdByWorkspaceArmId] Required.
  /// [credentials] ClientId and ClientSecret are required. Other properties are optional
  /// [expiryTime] Optional.
  /// [group] Group based on connection category
  /// [isSharedToAll] Optional.
  /// [metadata] Store user metadata for this connection
  /// [sharedUserList] Optional.
  /// [target] Optional.
  /// [value] Value details of the workspace connection.
  /// [valueFormat] format for the workspace connection value
  OAuth2AuthTypeWorkspaceConnectionPropertiesResponse({
    required this.authType,
    this.category,
    required this.createdByWorkspaceArmId,
    this.credentials,
    this.expiryTime,
    required this.group,
    this.isSharedToAll,
    this.metadata,
    this.sharedUserList,
    this.target,
    this.value,
    this.valueFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authType': authType,
      'category': ?category,
      'createdByWorkspaceArmId': createdByWorkspaceArmId,
      'credentials': ?credentials == null ? null : credentials!.toMap(),
      'expiryTime': ?expiryTime,
      'group': group,
      'isSharedToAll': ?isSharedToAll,
      'metadata': ?metadata,
      'sharedUserList': ?sharedUserList,
      'target': ?target,
      'value': ?value,
      'valueFormat': ?valueFormat,
    };
  }

  factory OAuth2AuthTypeWorkspaceConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OAuth2AuthTypeWorkspaceConnectionPropertiesResponse(
      authType: map['authType'] as String,
      category: map['category'] == null ? null : map['category'] as String,
      createdByWorkspaceArmId: map['createdByWorkspaceArmId'] as String,
      credentials: map['credentials'] == null ? null : WorkspaceConnectionOAuth2Response.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      expiryTime: map['expiryTime'] == null ? null : map['expiryTime'] as String,
      group: map['group'] as String,
      isSharedToAll: map['isSharedToAll'] == null ? null : map['isSharedToAll'] as bool,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      sharedUserList: map['sharedUserList'] == null ? null : (map['sharedUserList'] as List).cast<String>(),
      target: map['target'] == null ? null : map['target'] as String,
      value: map['value'] == null ? null : map['value'] as String,
      valueFormat: map['valueFormat'] == null ? null : map['valueFormat'] as String,
    );
  }
}

