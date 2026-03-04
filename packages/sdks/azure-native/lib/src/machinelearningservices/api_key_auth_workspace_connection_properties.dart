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
  final pulumi.Input<String>? category;

  /// Api key object for workspace connection credential.
  final pulumi.Input<WorkspaceConnectionApiKey>? credentials;
  final pulumi.Input<String>? expiryTime;
  final pulumi.Input<bool>? isSharedToAll;

  /// Store user metadata for this connection
  final pulumi.Input<Map<String, String>>? metadata;
  final pulumi.Input<List<String>>? sharedUserList;
  final pulumi.Input<String>? target;

  /// Value details of the workspace connection.
  final pulumi.Input<String>? value;

  /// format for the workspace connection value
  final pulumi.Input<String>? valueFormat;

  /// Creates a new [ApiKeyAuthWorkspaceConnectionProperties].
  /// [authType] Authentication type of the connection target
  /// [category] Category of the connection
  /// [credentials] Api key object for workspace connection credential.
  /// [expiryTime] Optional.
  /// [isSharedToAll] Optional.
  /// [metadata] Store user metadata for this connection
  /// [sharedUserList] Optional.
  /// [target] Optional.
  /// [value] Value details of the workspace connection.
  /// [valueFormat] format for the workspace connection value
  ApiKeyAuthWorkspaceConnectionProperties({
    required this.authType,
    this.category,
    this.credentials,
    this.expiryTime,
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
      'credentials':
          ?pulumi.Input.mapOptionalInputValue<
            WorkspaceConnectionApiKey,
            Map<String, dynamic>
          >(credentials, (value) => value.toMap()),
      'expiryTime': ?expiryTime,
      'isSharedToAll': ?isSharedToAll,
      'metadata': ?metadata,
      'sharedUserList': ?sharedUserList,
      'target': ?target,
      'value': ?value,
      'valueFormat': ?valueFormat,
    };
  }

  factory ApiKeyAuthWorkspaceConnectionProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApiKeyAuthWorkspaceConnectionProperties(
      authType: pulumi.Input.fromValue(map['authType'] as String),
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      credentials: (() {
        final guardedValue = map['credentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkspaceConnectionApiKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      expiryTime: (() {
        final guardedValue = map['expiryTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isSharedToAll: (() {
        final guardedValue = map['isSharedToAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      sharedUserList: (() {
        final guardedValue = map['sharedUserList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      target: (() {
        final guardedValue = map['target'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      valueFormat: (() {
        final guardedValue = map['valueFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
