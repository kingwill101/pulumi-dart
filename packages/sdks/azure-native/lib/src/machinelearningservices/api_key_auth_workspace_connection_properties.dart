// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_connection_api_key.dart';

/// This connection type covers the generic ApiKey auth connection categories, for examples:
/// AzureOpenAI:
/// Category:= AzureOpenAI
/// AuthType:= ApiKey (as type discriminator)
/// Credentials:= {ApiKey} as Microsoft.MachineLearning.AccountRP.Contracts.WorkspaceConnection.ApiKey
/// Target:= {ApiBase}
///
/// CognitiveService:
/// Category:= CognitiveService
/// AuthType:= ApiKey (as type discriminator)
/// Credentials:= {SubscriptionKey} as Microsoft.MachineLearning.AccountRP.Contracts.WorkspaceConnection.ApiKey
/// Target:= ServiceRegion={serviceRegion}
///
/// CognitiveSearch:
/// Category:= CognitiveSearch
/// AuthType:= ApiKey (as type discriminator)
/// Credentials:= {Key} as Microsoft.MachineLearning.AccountRP.Contracts.WorkspaceConnection.ApiKey
/// Target:= {Endpoint}
///
/// Use Metadata property bag for ApiType, ApiVersion, Kind and other metadata fields
class ApiKeyAuthWorkspaceConnectionProperties {
  /// Authentication type of the connection target
  /// Expected value is 'ApiKey'.
  final pulumi.Input<String> authType;
  /// Category of the connection
  final pulumi.Input<dynamic>? category;
  /// Api key object for workspace connection credential.
  final pulumi.Input<WorkspaceConnectionApiKey?>? credentials;
  final pulumi.Input<String?>? error;
  final pulumi.Input<String?>? expiryTime;
  final pulumi.Input<bool?>? isSharedToAll;
  /// Store user metadata for this connection
  final pulumi.Input<Map<String, String>?>? metadata;
  final pulumi.Input<dynamic>? peRequirement;
  final pulumi.Input<dynamic>? peStatus;
  final pulumi.Input<List<String>?>? sharedUserList;
  final pulumi.Input<String?>? target;
  final pulumi.Input<bool?>? useWorkspaceManagedIdentity;

  /// Creates a new [ApiKeyAuthWorkspaceConnectionProperties].
  /// [authType] Authentication type of the connection target
  /// [category] Category of the connection
  /// [credentials] Api key object for workspace connection credential.
  /// [error] Optional.
  /// [expiryTime] Optional.
  /// [isSharedToAll] Optional.
  /// [metadata] Store user metadata for this connection
  /// [peRequirement] Optional.
  /// [peStatus] Optional.
  /// [sharedUserList] Optional.
  /// [target] Optional.
  /// [useWorkspaceManagedIdentity] Optional.
  const ApiKeyAuthWorkspaceConnectionProperties({
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
      'credentials': ?pulumi.Input.mapOptionalInputValue<WorkspaceConnectionApiKey, Map<String, dynamic>>(credentials, (value) => value.toMap()),
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

  factory ApiKeyAuthWorkspaceConnectionProperties.fromMap(Map<String, dynamic> map) {
    return ApiKeyAuthWorkspaceConnectionProperties(
      authType: pulumi.Input.fromValue(map['authType'] as String),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceConnectionApiKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
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
