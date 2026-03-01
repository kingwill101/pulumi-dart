// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_ashared_disk_replication_details_response.dart';
import 'current_scenario_details_response.dart';
import 'health_error_response.dart';

/// Shared Disk Replication item custom data details.
class SharedDiskReplicationItemPropertiesResponse {
  /// The Current active location of the PE.
  final String? activeLocation;
  /// The allowed operations on the Replication protected item.
  final List<String>? allowedOperations;
  /// The current scenario.
  final CurrentScenarioDetailsResponse? currentScenario;
  /// List of health errors.
  final List<HealthErrorResponse>? healthErrors;
  /// The protection state of shared disk.
  final String? protectionState;
  /// The consolidated protection health for the VM taking any issues with SRS as well as all the replication units associated with the VM's replication group into account. This is a string representation of the ProtectionHealth enumeration.
  final String? replicationHealth;
  /// The Replication provider custom settings.
  final A2ASharedDiskReplicationDetailsResponse? sharedDiskProviderSpecificDetails;
  /// The tfo state of shared disk.
  final String? testFailoverState;

  /// Creates a new [SharedDiskReplicationItemPropertiesResponse].
  /// [activeLocation] The Current active location of the PE.
  /// [allowedOperations] The allowed operations on the Replication protected item.
  /// [currentScenario] The current scenario.
  /// [healthErrors] List of health errors.
  /// [protectionState] The protection state of shared disk.
  /// [replicationHealth] The consolidated protection health for the VM taking any issues with SRS as well as all the replication units associated with the VM's replication group into account. This is a string representation of the ProtectionHealth enumeration.
  /// [sharedDiskProviderSpecificDetails] The Replication provider custom settings.
  /// [testFailoverState] The tfo state of shared disk.
  SharedDiskReplicationItemPropertiesResponse({
    this.activeLocation,
    this.allowedOperations,
    this.currentScenario,
    this.healthErrors,
    this.protectionState,
    this.replicationHealth,
    this.sharedDiskProviderSpecificDetails,
    this.testFailoverState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeLocation': ?activeLocation,
      'allowedOperations': ?allowedOperations,
      'currentScenario': ?currentScenario == null ? null : currentScenario!.toMap(),
      'healthErrors': ?healthErrors == null ? null : pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(healthErrors!, (value) => value.toMap()),
      'protectionState': ?protectionState,
      'replicationHealth': ?replicationHealth,
      'sharedDiskProviderSpecificDetails': ?sharedDiskProviderSpecificDetails == null ? null : sharedDiskProviderSpecificDetails!.toMap(),
      'testFailoverState': ?testFailoverState,
    };
  }

  factory SharedDiskReplicationItemPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SharedDiskReplicationItemPropertiesResponse(
      activeLocation: map['activeLocation'] == null ? null : map['activeLocation'] as String,
      allowedOperations: map['allowedOperations'] == null ? null : (map['allowedOperations'] as List).cast<String>(),
      currentScenario: map['currentScenario'] == null ? null : CurrentScenarioDetailsResponse.fromMap((map['currentScenario'] as Map).cast<String, dynamic>()),
      healthErrors: map['healthErrors'] == null ? null : pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      protectionState: map['protectionState'] == null ? null : map['protectionState'] as String,
      replicationHealth: map['replicationHealth'] == null ? null : map['replicationHealth'] as String,
      sharedDiskProviderSpecificDetails: map['sharedDiskProviderSpecificDetails'] == null ? null : A2ASharedDiskReplicationDetailsResponse.fromMap((map['sharedDiskProviderSpecificDetails'] as Map).cast<String, dynamic>()),
      testFailoverState: map['testFailoverState'] == null ? null : map['testFailoverState'] as String,
    );
  }
}

