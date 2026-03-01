// ignore_for_file: unused_element, unnecessary_cast

import 'github_action_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getContainerAppsSourceControl.
class GetContainerAppsSourceControlResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The branch which will trigger the auto deployment
  final String? branch;
  /// Container App Revision Template with all possible settings and the
  /// defaults if user did not provide them. The defaults are populated
  /// as they were at the creation time
  final GithubActionConfigurationResponse? githubActionConfiguration;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Current provisioning State of the operation
  final String operationState;
  /// The repo url which will be integrated to ContainerApp.
  final String? repoUrl;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetContainerAppsSourceControlResult({
    required this.azureApiVersion,
    this.branch,
    this.githubActionConfiguration,
    required this.id,
    required this.name,
    required this.operationState,
    this.repoUrl,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'branch': ?branch,
      'githubActionConfiguration': ?githubActionConfiguration == null ? null : githubActionConfiguration!.toMap(),
      'id': id,
      'name': name,
      'operationState': operationState,
      'repoUrl': ?repoUrl,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetContainerAppsSourceControlResult.fromMap(Map<String, dynamic> map) {
    return GetContainerAppsSourceControlResult(
      azureApiVersion: map['azureApiVersion'] as String,
      branch: map['branch'] == null ? null : map['branch'] as String,
      githubActionConfiguration: map['githubActionConfiguration'] == null ? null : GithubActionConfigurationResponse.fromMap((map['githubActionConfiguration'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      operationState: map['operationState'] as String,
      repoUrl: map['repoUrl'] == null ? null : map['repoUrl'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

