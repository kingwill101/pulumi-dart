// ignore_for_file: unused_element, unnecessary_cast

import 'list_notebook_keys_result_response.dart';
import 'registry_list_credentials_result_response.dart';

/// Result data returned by listWorkspaceKeys.
class ListWorkspaceKeysResult {
  /// The access key of the workspace app insights
  final String appInsightsInstrumentationKey;
  final RegistryListCredentialsResultResponse? containerRegistryCredentials;
  final ListNotebookKeysResultResponse? notebookAccessKeys;
  /// The arm Id key of the workspace storage
  final String userStorageArmId;
  /// The access key of the workspace storage
  final String userStorageKey;

  /// Creates a new [ListWorkspaceKeysResult].
  /// [appInsightsInstrumentationKey] The access key of the workspace app insights
  /// [containerRegistryCredentials] Optional.
  /// [notebookAccessKeys] Optional.
  /// [userStorageArmId] The arm Id key of the workspace storage
  /// [userStorageKey] The access key of the workspace storage
  const ListWorkspaceKeysResult({
    required this.appInsightsInstrumentationKey,
    this.containerRegistryCredentials,
    this.notebookAccessKeys,
    required this.userStorageArmId,
    required this.userStorageKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInsightsInstrumentationKey': appInsightsInstrumentationKey,
      'containerRegistryCredentials': ?containerRegistryCredentials?.toMap(),
      'notebookAccessKeys': ?notebookAccessKeys?.toMap(),
      'userStorageArmId': userStorageArmId,
      'userStorageKey': userStorageKey,
    };
  }

  factory ListWorkspaceKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceKeysResult(
      appInsightsInstrumentationKey: map['appInsightsInstrumentationKey'] as String,
      containerRegistryCredentials: (() { final guardedValue = map['containerRegistryCredentials']; if (guardedValue == null) return null; return RegistryListCredentialsResultResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      notebookAccessKeys: (() { final guardedValue = map['notebookAccessKeys']; if (guardedValue == null) return null; return ListNotebookKeysResultResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      userStorageArmId: map['userStorageArmId'] as String,
      userStorageKey: map['userStorageKey'] as String,
    );
  }
}
