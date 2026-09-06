// ignore_for_file: unused_element, unnecessary_cast

import 'automation_error_response_response.dart';
import 'software_update_configuration_tasks_response.dart';
import 'sucschedule_properties_response.dart';
import 'system_data_response.dart';
import 'update_configuration_response.dart';

/// Result data returned by getSoftwareUpdateConfigurationByName.
class GetSoftwareUpdateConfigurationByNameResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// CreatedBy property, which only appears in the response.
  final String? createdBy;
  /// Creation time of the resource, which only appears in the response.
  final String? creationTime;
  /// Details of provisioning error
  final AutomationErrorResponseResponse? error;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// LastModifiedBy property, which only appears in the response.
  final String? lastModifiedBy;
  /// Last time resource was modified, which only appears in the response.
  final String? lastModifiedTime;
  /// The name of the resource
  final String? name;
  /// Provisioning state for the software update configuration, which only appears in the response.
  final String? provisioningState;
  /// Schedule information for the Software update configuration
  final SUCSchedulePropertiesResponse? scheduleInfo;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Tasks information for the Software update configuration.
  final SoftwareUpdateConfigurationTasksResponse? tasks;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// update specific properties for the Software update configuration
  final UpdateConfigurationResponse? updateConfiguration;

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
    this.azureApiVersion,
    this.createdBy,
    this.creationTime,
    this.error,
    this.id,
    this.lastModifiedBy,
    this.lastModifiedTime,
    this.name,
    this.provisioningState,
    this.scheduleInfo,
    this.systemData,
    this.tasks,
    this.type,
    this.updateConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdBy': ?createdBy,
      'creationTime': ?creationTime,
      'error': ?error?.toMap(),
      'id': ?id,
      'lastModifiedBy': ?lastModifiedBy,
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'scheduleInfo': ?scheduleInfo?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tasks': ?tasks?.toMap(),
      'type': ?type,
      'updateConfiguration': ?updateConfiguration?.toMap(),
    };
  }

  factory GetSoftwareUpdateConfigurationByNameResult.fromMap(Map<String, dynamic> map) {
    return GetSoftwareUpdateConfigurationByNameResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return AutomationErrorResponseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedBy: (() { final guardedValue = map['lastModifiedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scheduleInfo: (() { final guardedValue = map['scheduleInfo']; if (guardedValue == null) return null; return SUCSchedulePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tasks: (() { final guardedValue = map['tasks']; if (guardedValue == null) return null; return SoftwareUpdateConfigurationTasksResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateConfiguration: (() { final guardedValue = map['updateConfiguration']; if (guardedValue == null) return null; return UpdateConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
