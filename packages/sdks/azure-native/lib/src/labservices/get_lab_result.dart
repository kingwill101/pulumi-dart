// ignore_for_file: unused_element, unnecessary_cast

import 'auto_shutdown_profile_response.dart';
import 'connection_profile_response.dart';
import 'lab_network_profile_response.dart';
import 'resource_operation_error_response.dart';
import 'roster_profile_response.dart';
import 'security_profile_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_profile_response.dart';

/// Result data returned by getLab.
class GetLabResult {
  /// The resource auto shutdown configuration for the lab. This controls whether actions are taken on resources that are sitting idle.
  final AutoShutdownProfileResponse autoShutdownProfile;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The connection profile for the lab. This controls settings such as web access to lab resources or whether RDP or SSH ports are open.
  final ConnectionProfileResponse connectionProfile;

  /// The description of the lab.
  final String? description;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The ID of the lab plan. Used during resource creation to provide defaults and acts as a permission container when creating a lab via labs.azure.com. Setting a labPlanId on an existing lab provides organization..
  final String? labPlanId;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// The network profile for the lab, typically applied via a lab plan. This profile cannot be modified once a lab has been created.
  final LabNetworkProfileResponse? networkProfile;

  /// Current provisioning state of the lab.
  final String provisioningState;

  /// Error details of last operation done on lab.
  final ResourceOperationErrorResponse resourceOperationError;

  /// The lab user list management profile.
  final RosterProfileResponse? rosterProfile;

  /// The lab security profile.
  final SecurityProfileResponse securityProfile;

  /// The lab state.
  final String state;

  /// Metadata pertaining to creation and last modification of the lab.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The title of the lab.
  final String? title;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// The profile used for creating lab virtual machines.
  final VirtualMachineProfileResponse virtualMachineProfile;

  /// Creates a new [GetLabResult].
  /// [autoShutdownProfile] The resource auto shutdown configuration for the lab. This controls whether actions are taken on resources that are sitting idle.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionProfile] The connection profile for the lab. This controls settings such as web access to lab resources or whether RDP or SSH ports are open.
  /// [description] The description of the lab.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [labPlanId] The ID of the lab plan. Used during resource creation to provide defaults and acts as a permission container when creating a lab via labs.azure.com. Setting a labPlanId on an existing lab provides organization..
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkProfile] The network profile for the lab, typically applied via a lab plan. This profile cannot be modified once a lab has been created.
  /// [provisioningState] Current provisioning state of the lab.
  /// [resourceOperationError] Error details of last operation done on lab.
  /// [rosterProfile] The lab user list management profile.
  /// [securityProfile] The lab security profile.
  /// [state] The lab state.
  /// [systemData] Metadata pertaining to creation and last modification of the lab.
  /// [tags] Resource tags.
  /// [title] The title of the lab.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualMachineProfile] The profile used for creating lab virtual machines.
  GetLabResult({
    required this.autoShutdownProfile,
    required this.azureApiVersion,
    required this.connectionProfile,
    this.description,
    required this.id,
    this.labPlanId,
    required this.location,
    required this.name,
    this.networkProfile,
    required this.provisioningState,
    required this.resourceOperationError,
    this.rosterProfile,
    required this.securityProfile,
    required this.state,
    required this.systemData,
    this.tags,
    this.title,
    required this.type,
    required this.virtualMachineProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoShutdownProfile': autoShutdownProfile.toMap(),
      'azureApiVersion': azureApiVersion,
      'connectionProfile': connectionProfile.toMap(),
      'description': ?description,
      'id': id,
      'labPlanId': ?labPlanId,
      'location': location,
      'name': name,
      'networkProfile': ?networkProfile?.toMap(),
      'provisioningState': provisioningState,
      'resourceOperationError': resourceOperationError.toMap(),
      'rosterProfile': ?rosterProfile?.toMap(),
      'securityProfile': securityProfile.toMap(),
      'state': state,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'title': ?title,
      'type': type,
      'virtualMachineProfile': virtualMachineProfile.toMap(),
    };
  }

  factory GetLabResult.fromMap(Map<String, dynamic> map) {
    return GetLabResult(
      autoShutdownProfile: AutoShutdownProfileResponse.fromMap(
        (map['autoShutdownProfile']! as Map).cast<String, dynamic>(),
      ),
      azureApiVersion: map['azureApiVersion'] as String,
      connectionProfile: ConnectionProfileResponse.fromMap(
        (map['connectionProfile']! as Map).cast<String, dynamic>(),
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      labPlanId: (() {
        final guardedValue = map['labPlanId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: map['location'] as String,
      name: map['name'] as String,
      networkProfile: (() {
        final guardedValue = map['networkProfile'];
        if (guardedValue == null) return null;
        return LabNetworkProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      provisioningState: map['provisioningState'] as String,
      resourceOperationError: ResourceOperationErrorResponse.fromMap(
        (map['resourceOperationError']! as Map).cast<String, dynamic>(),
      ),
      rosterProfile: (() {
        final guardedValue = map['rosterProfile'];
        if (guardedValue == null) return null;
        return RosterProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      securityProfile: SecurityProfileResponse.fromMap(
        (map['securityProfile']! as Map).cast<String, dynamic>(),
      ),
      state: map['state'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      title: (() {
        final guardedValue = map['title'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
      virtualMachineProfile: VirtualMachineProfileResponse.fromMap(
        (map['virtualMachineProfile']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
