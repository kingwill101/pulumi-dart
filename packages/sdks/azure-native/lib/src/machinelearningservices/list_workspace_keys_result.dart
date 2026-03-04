// ignore_for_file: unused_element, unnecessary_cast

import 'list_notebook_keys_result_response.dart';
import 'registry_list_credentials_result_response.dart';

/// Result data returned by listWorkspaceKeys.
class ListWorkspaceKeysResult {
  final String appInsightsInstrumentationKey;
  final RegistryListCredentialsResultResponse containerRegistryCredentials;
  final ListNotebookKeysResultResponse notebookAccessKeys;
  final String userStorageKey;
  final String userStorageResourceId;

  /// Creates a new [ListWorkspaceKeysResult].
  /// [appInsightsInstrumentationKey] Required.
  /// [containerRegistryCredentials] Required.
  /// [notebookAccessKeys] Required.
  /// [userStorageKey] Required.
  /// [userStorageResourceId] Required.
  ListWorkspaceKeysResult({
    required this.appInsightsInstrumentationKey,
    required this.containerRegistryCredentials,
    required this.notebookAccessKeys,
    required this.userStorageKey,
    required this.userStorageResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInsightsInstrumentationKey': appInsightsInstrumentationKey,
      'containerRegistryCredentials': containerRegistryCredentials.toMap(),
      'notebookAccessKeys': notebookAccessKeys.toMap(),
      'userStorageKey': userStorageKey,
      'userStorageResourceId': userStorageResourceId,
    };
  }

  factory ListWorkspaceKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceKeysResult(
      appInsightsInstrumentationKey:
          map['appInsightsInstrumentationKey'] as String,
      containerRegistryCredentials:
          RegistryListCredentialsResultResponse.fromMap(
            (map['containerRegistryCredentials']! as Map)
                .cast<String, dynamic>(),
          ),
      notebookAccessKeys: ListNotebookKeysResultResponse.fromMap(
        (map['notebookAccessKeys']! as Map).cast<String, dynamic>(),
      ),
      userStorageKey: map['userStorageKey'] as String,
      userStorageResourceId: map['userStorageResourceId'] as String,
    );
  }
}
