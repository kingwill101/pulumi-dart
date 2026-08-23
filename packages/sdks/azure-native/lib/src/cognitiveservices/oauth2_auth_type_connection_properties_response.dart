// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_oauth2_response.dart';

class OAuth2AuthTypeConnectionPropertiesResponse {
  /// Authentication type of the connection target
  /// Expected value is 'OAuth2'.
  final pulumi.Input<String> authType;
  /// Category of the connection
  final pulumi.Input<String>? category;
  final pulumi.Input<String> createdByWorkspaceArmId;
  /// ClientId and ClientSecret are required. Other properties are optional
  /// depending on each OAuth2 provider's implementation.
  final pulumi.Input<ConnectionOAuth2Response>? credentials;
  /// Provides the error message if the connection fails
  final pulumi.Input<String>? error;
  final pulumi.Input<String>? expiryTime;
  /// Group based on connection category
  final pulumi.Input<String> group;
  final pulumi.Input<bool>? isSharedToAll;
  /// Store user metadata for this connection
  final pulumi.Input<Map<String, String>>? metadata;
  /// Specifies how private endpoints are used with this connection: 'Required', 'NotRequired', or 'NotApplicable'.
  final pulumi.Input<String>? peRequirement;
  /// Specifies the status of private endpoints for this connection: 'Inactive', 'Active', or 'NotApplicable'.
  final pulumi.Input<String>? peStatus;
  final pulumi.Input<List<String>>? sharedUserList;
  /// The connection URL to be used.
  final pulumi.Input<String>? target;
  final pulumi.Input<bool>? useWorkspaceManagedIdentity;

  /// Creates a new [OAuth2AuthTypeConnectionPropertiesResponse].
  /// [authType] Authentication type of the connection target
  /// [category] Category of the connection
  /// [createdByWorkspaceArmId] Required.
  /// [credentials] ClientId and ClientSecret are required. Other properties are optional
  /// [error] Provides the error message if the connection fails
  /// [expiryTime] Optional.
  /// [group] Group based on connection category
  /// [isSharedToAll] Optional.
  /// [metadata] Store user metadata for this connection
  /// [peRequirement] Specifies how private endpoints are used with this connection: 'Required', 'NotRequired', or 'NotApplicable'.
  /// [peStatus] Specifies the status of private endpoints for this connection: 'Inactive', 'Active', or 'NotApplicable'.
  /// [sharedUserList] Optional.
  /// [target] The connection URL to be used.
  /// [useWorkspaceManagedIdentity] Optional.
  const OAuth2AuthTypeConnectionPropertiesResponse({
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
      'credentials': ?pulumi.Input.mapOptionalInputValue<ConnectionOAuth2Response, Map<String, dynamic>>(credentials, (value) => value.toMap()),
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

  factory OAuth2AuthTypeConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OAuth2AuthTypeConnectionPropertiesResponse(
      authType: pulumi.Input.fromValue(map['authType'] as String),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdByWorkspaceArmId: pulumi.Input.fromValue(map['createdByWorkspaceArmId'] as String),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionOAuth2Response.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiryTime: (() { final guardedValue = map['expiryTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      group: pulumi.Input.fromValue(map['group'] as String),
      isSharedToAll: (() { final guardedValue = map['isSharedToAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      peRequirement: (() { final guardedValue = map['peRequirement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peStatus: (() { final guardedValue = map['peStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedUserList: (() { final guardedValue = map['sharedUserList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useWorkspaceManagedIdentity: (() { final guardedValue = map['useWorkspaceManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
