// ignore_for_file: unused_element, unnecessary_cast

import 'resource_status_last_instance_termination_details_response.dart';
import 'resource_status_scheduling_response.dart';
import 'resource_status_shutdown_details_response.dart';
import 'upcoming_maintenance_response.dart';

/// Contains output only fields. Use this sub-message for actual values set on Instance attributes as compared to the value requested by the user (intent) in their instance CRUD calls.
class ResourceStatusResponse {
  /// Contains last termination details why the instance was terminated.
  final ResourceStatusLastInstanceTerminationDetailsResponse
  lastInstanceTerminationDetails;

  /// An opaque ID of the host on which the VM is running.
  final String physicalHost;
  final ResourceStatusSchedulingResponse scheduling;

  /// Represents the status of the service integration specs defined by the user in instance.serviceIntegrationSpecs.
  final Map<String, String> serviceIntegrationStatuses;

  /// Details about stopping state of instance
  final ResourceStatusShutdownDetailsResponse shutdownDetails;
  final UpcomingMaintenanceResponse upcomingMaintenance;

  /// Creates a new [ResourceStatusResponse].
  /// [lastInstanceTerminationDetails] Contains last termination details why the instance was terminated.
  /// [physicalHost] An opaque ID of the host on which the VM is running.
  /// [scheduling] Required.
  /// [serviceIntegrationStatuses] Represents the status of the service integration specs defined by the user in instance.serviceIntegrationSpecs.
  /// [shutdownDetails] Details about stopping state of instance
  /// [upcomingMaintenance] Required.
  ResourceStatusResponse({
    required this.lastInstanceTerminationDetails,
    required this.physicalHost,
    required this.scheduling,
    required this.serviceIntegrationStatuses,
    required this.shutdownDetails,
    required this.upcomingMaintenance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastInstanceTerminationDetails': lastInstanceTerminationDetails.toMap(),
      'physicalHost': physicalHost,
      'scheduling': scheduling.toMap(),
      'serviceIntegrationStatuses': serviceIntegrationStatuses,
      'shutdownDetails': shutdownDetails.toMap(),
      'upcomingMaintenance': upcomingMaintenance.toMap(),
    };
  }

  factory ResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return ResourceStatusResponse(
      lastInstanceTerminationDetails:
          ResourceStatusLastInstanceTerminationDetailsResponse.fromMap(
            (map['lastInstanceTerminationDetails'] as Map)
                .cast<String, dynamic>(),
          ),
      physicalHost: map['physicalHost'] as String,
      scheduling: ResourceStatusSchedulingResponse.fromMap(
        (map['scheduling'] as Map).cast<String, dynamic>(),
      ),
      serviceIntegrationStatuses: (map['serviceIntegrationStatuses'] as Map)
          .cast<String, String>(),
      shutdownDetails: ResourceStatusShutdownDetailsResponse.fromMap(
        (map['shutdownDetails'] as Map).cast<String, dynamic>(),
      ),
      upcomingMaintenance: UpcomingMaintenanceResponse.fromMap(
        (map['upcomingMaintenance'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
