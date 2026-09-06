// ignore_for_file: unused_element, unnecessary_cast

import 'github_action_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getContainerAppsSourceControl.
class GetContainerAppsSourceControlResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The branch which will trigger the auto deployment
  final String? branch;
  /// Container App Revision Template with all possible settings and the
  /// defaults if user did not provide them. The defaults are populated
  /// as they were at the creation time
  final GithubActionConfigurationResponse? githubActionConfiguration;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Current provisioning State of the operation
  final String? operationState;
  /// The repo url which will be integrated to ContainerApp.
  final String? repoUrl;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetContainerAppsSourceControlResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [branch] The branch which will trigger the auto deployment
  /// [githubActionConfiguration] Container App Revision Template with all possible settings and the
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [operationState] Current provisioning State of the operation
  /// [repoUrl] The repo url which will be integrated to ContainerApp.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetContainerAppsSourceControlResult({
    this.azureApiVersion,
    this.branch,
    this.githubActionConfiguration,
    this.id,
    this.name,
    this.operationState,
    this.repoUrl,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'branch': ?branch,
      'githubActionConfiguration': ?githubActionConfiguration?.toMap(),
      'id': ?id,
      'name': ?name,
      'operationState': ?operationState,
      'repoUrl': ?repoUrl,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetContainerAppsSourceControlResult.fromMap(Map<String, dynamic> map) {
    return GetContainerAppsSourceControlResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      githubActionConfiguration: (() { final guardedValue = map['githubActionConfiguration']; if (guardedValue == null) return null; return GithubActionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operationState: (() { final guardedValue = map['operationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repoUrl: (() { final guardedValue = map['repoUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
