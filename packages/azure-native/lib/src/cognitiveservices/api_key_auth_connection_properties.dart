// ignore_for_file: unused_element, unnecessary_cast

import 'connection_api_key.dart';

/// This connection type covers the generic ApiKey auth connection categories, for examples:
/// AzureOpenAI:
/// Category:= AzureOpenAI
/// AuthType:= ApiKey (as type discriminator)
/// Credentials:= {ApiKey} as .ApiKey
/// Target:= {ApiBase}
///
/// CognitiveService:
/// Category:= CognitiveService
/// AuthType:= ApiKey (as type discriminator)
/// Credentials:= {SubscriptionKey} as ApiKey
/// Target:= ServiceRegion={serviceRegion}
///
/// CognitiveSearch:
/// Category:= CognitiveSearch
/// AuthType:= ApiKey (as type discriminator)
/// Credentials:= {Key} as ApiKey
/// Target:= {Endpoint}
///
/// Use Metadata property bag for ApiType, ApiVersion, Kind and other metadata fields
class ApiKeyAuthConnectionProperties {
  /// Authentication type of the connection target
  /// Expected value is 'ApiKey'.
  final String authType;
  /// Category of the connection
  final String? category;
  /// Api key object for connection credential.
  final ConnectionApiKey? credentials;
  final String? error;
  final String? expiryTime;
  final bool? isSharedToAll;
  /// Store user metadata for this connection
  final Map<String, String>? metadata;
  final String? peRequirement;
  final String? peStatus;
  final List<String>? sharedUserList;
  final String? target;
  final bool? useWorkspaceManagedIdentity;

  /// Creates a new [ApiKeyAuthConnectionProperties].
  /// [authType] Authentication type of the connection target
  /// [category] Category of the connection
  /// [credentials] Api key object for connection credential.
  /// [error] Optional.
  /// [expiryTime] Optional.
  /// [isSharedToAll] Optional.
  /// [metadata] Store user metadata for this connection
  /// [peRequirement] Optional.
  /// [peStatus] Optional.
  /// [sharedUserList] Optional.
  /// [target] Optional.
  /// [useWorkspaceManagedIdentity] Optional.
  ApiKeyAuthConnectionProperties({
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
      'credentials': ?credentials == null ? null : credentials!.toMap(),
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

  factory ApiKeyAuthConnectionProperties.fromMap(Map<String, dynamic> map) {
    return ApiKeyAuthConnectionProperties(
      authType: map['authType'] as String,
      category: map['category'] == null ? null : map['category'] as String,
      credentials: map['credentials'] == null ? null : ConnectionApiKey.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      error: map['error'] == null ? null : map['error'] as String,
      expiryTime: map['expiryTime'] == null ? null : map['expiryTime'] as String,
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

