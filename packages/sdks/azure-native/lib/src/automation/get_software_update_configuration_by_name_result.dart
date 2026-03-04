// ignore_for_file: unused_element, unnecessary_cast

import 'error_response_response.dart';
import 'software_update_configuration_tasks_response.dart';
import 'sucschedule_properties_response.dart';
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
  final ErrorResponseResponse? error;

  /// Resource Id.
  final String id;

  /// LastModifiedBy property, which only appears in the response.
  final String lastModifiedBy;

  /// Last time resource was modified, which only appears in the response.
  final String lastModifiedTime;

  /// Resource name.
  final String name;

  /// Provisioning state for the software update configuration, which only appears in the response.
  final String provisioningState;

  /// Schedule information for the Software update configuration
  final SUCSchedulePropertiesResponse scheduleInfo;

  /// Tasks information for the Software update configuration.
  final SoftwareUpdateConfigurationTasksResponse? tasks;

  /// Resource type
  final String type;

  /// update specific properties for the Software update configuration
  final UpdateConfigurationResponse updateConfiguration;

  /// Creates a new [GetSoftwareUpdateConfigurationByNameResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdBy] CreatedBy property, which only appears in the response.
  /// [creationTime] Creation time of the resource, which only appears in the response.
  /// [error] Details of provisioning error
  /// [id] Resource Id.
  /// [lastModifiedBy] LastModifiedBy property, which only appears in the response.
  /// [lastModifiedTime] Last time resource was modified, which only appears in the response.
  /// [name] Resource name.
  /// [provisioningState] Provisioning state for the software update configuration, which only appears in the response.
  /// [scheduleInfo] Schedule information for the Software update configuration
  /// [tasks] Tasks information for the Software update configuration.
  /// [type] Resource type
  /// [updateConfiguration] update specific properties for the Software update configuration
  GetSoftwareUpdateConfigurationByNameResult({
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
      'tasks': ?tasks?.toMap(),
      'type': type,
      'updateConfiguration': updateConfiguration.toMap(),
    };
  }

  factory GetSoftwareUpdateConfigurationByNameResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSoftwareUpdateConfigurationByNameResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdBy: map['createdBy'] as String,
      creationTime: map['creationTime'] as String,
      error: (() {
        final guardedValue = map['error'];
        if (guardedValue == null) return null;
        return ErrorResponseResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: map['id'] as String,
      lastModifiedBy: map['lastModifiedBy'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      scheduleInfo: SUCSchedulePropertiesResponse.fromMap(
        (map['scheduleInfo']! as Map).cast<String, dynamic>(),
      ),
      tasks: (() {
        final guardedValue = map['tasks'];
        if (guardedValue == null) return null;
        return SoftwareUpdateConfigurationTasksResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      type: map['type'] as String,
      updateConfiguration: UpdateConfigurationResponse.fromMap(
        (map['updateConfiguration']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
