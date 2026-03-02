// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_connection_personal_access_token_response.dart';

class PATAuthTypeWorkspaceConnectionPropertiesResponse {
  /// Authentication type of the connection target
  /// Expected value is 'PAT'.
  final pulumi.Input<String> authType;
  /// Category of the connection
  final pulumi.Input<String>? category;
  final pulumi.Input<String> createdByWorkspaceArmId;
  final pulumi.Input<WorkspaceConnectionPersonalAccessTokenResponse>? credentials;
  final pulumi.Input<String>? expiryTime;
  /// Group based on connection category
  final pulumi.Input<String> group;
  final pulumi.Input<bool>? isSharedToAll;
  /// Store user metadata for this connection
  final pulumi.Input<Map<String, String>>? metadata;
  final pulumi.Input<List<String>>? sharedUserList;
  final pulumi.Input<String>? target;
  /// Value details of the workspace connection.
  final pulumi.Input<String>? value;
  /// format for the workspace connection value
  final pulumi.Input<String>? valueFormat;

  /// Creates a new [PATAuthTypeWorkspaceConnectionPropertiesResponse].
  /// [authType] Authentication type of the connection target
  /// [category] Category of the connection
  /// [createdByWorkspaceArmId] Required.
  /// [credentials] Optional.
  /// [expiryTime] Optional.
  /// [group] Group based on connection category
  /// [isSharedToAll] Optional.
  /// [metadata] Store user metadata for this connection
  /// [sharedUserList] Optional.
  /// [target] Optional.
  /// [value] Value details of the workspace connection.
  /// [valueFormat] format for the workspace connection value
  PATAuthTypeWorkspaceConnectionPropertiesResponse({
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
      'credentials': ?pulumi.Input.mapOptionalInputValue<WorkspaceConnectionPersonalAccessTokenResponse, Map<String, dynamic>>(credentials, (value) => value.toMap()),
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

  factory PATAuthTypeWorkspaceConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PATAuthTypeWorkspaceConnectionPropertiesResponse(
      authType: (map['authType'] as String).input(),
      category: map['category'] == null ? null : (map['category'] as String).input(),
      createdByWorkspaceArmId: (map['createdByWorkspaceArmId'] as String).input(),
      credentials: map['credentials'] == null ? null : (WorkspaceConnectionPersonalAccessTokenResponse.fromMap((map['credentials'] as Map).cast<String, dynamic>())).input(),
      expiryTime: map['expiryTime'] == null ? null : (map['expiryTime'] as String).input(),
      group: (map['group'] as String).input(),
      isSharedToAll: map['isSharedToAll'] == null ? null : (map['isSharedToAll'] as bool).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      sharedUserList: map['sharedUserList'] == null ? null : ((map['sharedUserList'] as List).cast<String>()).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
      valueFormat: map['valueFormat'] == null ? null : (map['valueFormat'] as String).input(),
    );
  }
}

