// ignore_for_file: unused_element, unnecessary_cast

import 'automation_error_response_response.dart';
import 'software_update_configuration_tasks_response.dart';
import 'sucschedule_properties_response.dart';
import 'system_data_response.dart';
import 'update_configuration_response.dart';

/// Result data returned by getSoftwareUpdateConfigurationByName.
class GetSoftwareUpdateConfigurationByNameResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// CreatedBy property, which only appears in the response.
  final String createdBy;
  /// Creation time of the resource, which only appears in the response.
  final String creationTime;
  /// Details of provisioning error
  final AutomationErrorResponseResponse? error;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// LastModifiedBy property, which only appears in the response.
  final String lastModifiedBy;
  /// Last time resource was modified, which only appears in the response.
  final String lastModifiedTime;
  /// The name of the resource
  final String name;
  /// Provisioning state for the software update configuration, which only appears in the response.
  final String provisioningState;
  /// Schedule information for the Software update configuration
  final SUCSchedulePropertiesResponse scheduleInfo;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Tasks information for the Software update configuration.
  final SoftwareUpdateConfigurationTasksResponse? tasks;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// update specific properties for the Software update configuration
  final UpdateConfigurationResponse updateConfiguration;

  /// Creates a new [GetSoftwareUpdateConfigurationByNameResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdBy] CreatedBy property, which only appears in the response.
  /// [creationTime] Creation time of the resource, which only appears in the response.
  /// [error] Details of provisioning error
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastModifiedBy] LastModifiedBy property, which only appears in the response.
  /// [lastModifiedTime] Last time resource was modified, which only appears in the response.
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state for the software update configuration, which only appears in the response.
  /// [scheduleInfo] Schedule information for the Software update configuration
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tasks] Tasks information for the Software update configuration.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updateConfiguration] update specific properties for the Software update configuration
  const GetSoftwareUpdateConfigurationByNameResult({
    required this.azureApiVersion,
    required this.createdBy,
    required this.creationTime,
    this.error,
    required this.id,
    required this.lastModifiedBy,
    required this.lastModifiedTime,
    required this.name,
    required this.provisioningState,
    required this.scheduleInfo,
    required this.systemData,
    this.tasks,
    required this.type,
    required this.updateConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdBy': createdBy,
      'creationTime': creationTime,
      'error': ?error?.toMap(),
      'id': id,
      'lastModifiedBy': lastModifiedBy,
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'provisioningState': provisioningState,
      'scheduleInfo': scheduleInfo.toMap(),
      'systemData': systemData.toMap(),
      'tasks': ?tasks?.toMap(),
      'type': type,
      'updateConfiguration': updateConfiguration.toMap(),
    };
  }

  factory GetSoftwareUpdateConfigurationByNameResult.fromMap(Map<String, dynamic> map) {
    return GetSoftwareUpdateConfigurationByNameResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdBy: map['createdBy'] as String,
      creationTime: map['creationTime'] as String,
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return AutomationErrorResponseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      lastModifiedBy: map['lastModifiedBy'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      scheduleInfo: SUCSchedulePropertiesResponse.fromMap((map['scheduleInfo']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tasks: (() { final guardedValue = map['tasks']; if (guardedValue == null) return null; return SoftwareUpdateConfigurationTasksResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: map['type'] as String,
      updateConfiguration: UpdateConfigurationResponse.fromMap((map['updateConfiguration']! as Map).cast<String, dynamic>()),
    );
  }
}
