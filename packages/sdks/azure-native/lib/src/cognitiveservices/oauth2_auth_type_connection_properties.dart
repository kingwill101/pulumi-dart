// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_oauth2.dart';

class OAuth2AuthTypeConnectionProperties {
  /// Authentication type of the connection target
  /// Expected value is 'OAuth2'.
  final pulumi.Input<String> authType;
  /// Category of the connection
  final pulumi.Input<dynamic>? category;
  /// ClientId and ClientSecret are required. Other properties are optional
  /// depending on each OAuth2 provider's implementation.
  final pulumi.Input<ConnectionOAuth2?>? credentials;
  /// Provides the error message if the connection fails
  final pulumi.Input<String?>? error;
  final pulumi.Input<String?>? expiryTime;
  final pulumi.Input<bool?>? isSharedToAll;
  /// Store user metadata for this connection
  final pulumi.Input<Map<String, String>?>? metadata;
  /// Specifies how private endpoints are used with this connection: 'Required', 'NotRequired', or 'NotApplicable'.
  final pulumi.Input<dynamic>? peRequirement;
  /// Specifies the status of private endpoints for this connection: 'Inactive', 'Active', or 'NotApplicable'.
  final pulumi.Input<dynamic>? peStatus;
  final pulumi.Input<List<String>?>? sharedUserList;
  /// The connection URL to be used.
  final pulumi.Input<String?>? target;
  final pulumi.Input<bool?>? useWorkspaceManagedIdentity;

  /// Creates a new [OAuth2AuthTypeConnectionProperties].
  /// [authType] Authentication type of the connection target
  /// [category] Category of the connection
  /// [credentials] ClientId and ClientSecret are required. Other properties are optional
  /// [error] Provides the error message if the connection fails
  /// [expiryTime] Optional.
  /// [isSharedToAll] Optional.
  /// [metadata] Store user metadata for this connection
  /// [peRequirement] Specifies how private endpoints are used with this connection: 'Required', 'NotRequired', or 'NotApplicable'.
  /// [peStatus] Specifies the status of private endpoints for this connection: 'Inactive', 'Active', or 'NotApplicable'.
  /// [sharedUserList] Optional.
  /// [target] The connection URL to be used.
  /// [useWorkspaceManagedIdentity] Optional.
  const OAuth2AuthTypeConnectionProperties({
    required this.authType,
    this.category,
    this.credentials,
    this.error,
    this.expiryTime,
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
      'credentials': ?pulumi.Input.mapOptionalInputValue<ConnectionOAuth2, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'error': ?error,
      'expiryTime': ?expiryTime,
      'isSharedToAll': ?isSharedToAll,
      'metadata': ?metadata,
      'peRequirement': ?peRequirement,
      'peStatus': ?peStatus,
      'sharedUserList': ?sharedUserList,
      'target': ?target,
      'useWorkspaceManagedIdentity': ?useWorkspaceManagedIdentity,
    };
  }

  factory OAuth2AuthTypeConnectionProperties.fromMap(Map<String, dynamic> map) {
    return OAuth2AuthTypeConnectionProperties(
      authType: pulumi.Input.fromValue(map['authType'] as String),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionOAuth2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiryTime: (() { final guardedValue = map['expiryTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isSharedToAll: (() { final guardedValue = map['isSharedToAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      peRequirement: (() { final guardedValue = map['peRequirement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      peStatus: (() { final guardedValue = map['peStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sharedUserList: (() { final guardedValue = map['sharedUserList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useWorkspaceManagedIdentity: (() { final guardedValue = map['useWorkspaceManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
