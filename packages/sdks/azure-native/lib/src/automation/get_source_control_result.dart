// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSourceControl.
class GetSourceControlResult {
  /// The auto sync of the source control. Default is false.
  final bool? autoSync;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The repo branch of the source control. Include branch as empty string for VsoTfvc.
  final String? branch;
  /// The creation time.
  final String? creationTime;
  /// The description.
  final String? description;
  /// The folder path of the source control.
  final String? folderPath;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The last modified time.
  final String? lastModifiedTime;
  /// The name of the resource
  final String? name;
  /// The auto publish of the source control. Default is true.
  final bool? publishRunbook;
  /// The repo url of the source control.
  final String? repoUrl;
  /// The source type. Must be one of VsoGit, VsoTfvc, GitHub.
  final String? sourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetSourceControlResult].
  /// [autoSync] The auto sync of the source control. Default is false.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [branch] The repo branch of the source control. Include branch as empty string for VsoTfvc.
  /// [creationTime] The creation time.
  /// [description] The description.
  /// [folderPath] The folder path of the source control.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastModifiedTime] The last modified time.
  /// [name] The name of the resource
  /// [publishRunbook] The auto publish of the source control. Default is true.
  /// [repoUrl] The repo url of the source control.
  /// [sourceType] The source type. Must be one of VsoGit, VsoTfvc, GitHub.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSourceControlResult({
    this.autoSync,
    this.azureApiVersion,
    this.branch,
    this.creationTime,
    this.description,
    this.folderPath,
    this.id,
    this.lastModifiedTime,
    this.name,
    this.publishRunbook,
    this.repoUrl,
    this.sourceType,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSync': ?autoSync,
      'azureApiVersion': ?azureApiVersion,
      'branch': ?branch,
      'creationTime': ?creationTime,
      'description': ?description,
      'folderPath': ?folderPath,
      'id': ?id,
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'publishRunbook': ?publishRunbook,
      'repoUrl': ?repoUrl,
      'sourceType': ?sourceType,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetSourceControlResult.fromMap(Map<String, dynamic> map) {
    return GetSourceControlResult(
      autoSync: (() { final guardedValue = map['autoSync']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folderPath: (() { final guardedValue = map['folderPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publishRunbook: (() { final guardedValue = map['publishRunbook']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      repoUrl: (() { final guardedValue = map['repoUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
