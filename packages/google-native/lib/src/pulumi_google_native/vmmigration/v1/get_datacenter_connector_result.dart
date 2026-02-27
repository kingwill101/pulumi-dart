// ignore_for_file: unused_element, unnecessary_cast

import 'available_updates_response.dart';
import 'status_response_vmmigration_v1.dart';
import 'upgrade_status_response.dart';

/// Result data returned by getDatacenterConnector.
class GetDatacenterConnectorResult {
  /// Appliance OVA version. This is the OVA which is manually installed by the user and contains the infrastructure for the automatically updatable components on the appliance.
  final String applianceInfrastructureVersion;

  /// Appliance last installed update bundle version. This is the version of the automatically updatable components on the appliance.
  final String applianceSoftwareVersion;

  /// The available versions for updating this appliance.
  final AvailableUpdatesResponse availableVersions;

  /// The communication channel between the datacenter connector and Google Cloud.
  final String bucket;

  /// The time the connector was created (as an API call, not when it was actually installed).
  final String createTime;

  /// Provides details on the state of the Datacenter Connector in case of an error.
  final StatusResponseVmmigrationV1 error;

  /// The connector's name.
  final String name;

  /// Immutable. A unique key for this connector. This key is internal to the OVA connector and is supplied with its creation during the registration process and can not be modified.
  final String registrationId;

  /// The service account to use in the connector when communicating with the cloud.
  final String serviceAccount;

  /// State of the DatacenterConnector, as determined by the health checks.
  final String state;

  /// The time the state was last set.
  final String stateTime;

  /// The last time the connector was updated with an API call.
  final String updateTime;

  /// The status of the current / last upgradeAppliance operation.
  final UpgradeStatusResponse upgradeStatus;

  /// The version running in the DatacenterConnector. This is supplied by the OVA connector during the registration process and can not be modified.
  final String version;

  GetDatacenterConnectorResult({
    required this.applianceInfrastructureVersion,
    required this.applianceSoftwareVersion,
    required this.availableVersions,
    required this.bucket,
    required this.createTime,
    required this.error,
    required this.name,
    required this.registrationId,
    required this.serviceAccount,
    required this.state,
    required this.stateTime,
    required this.updateTime,
    required this.upgradeStatus,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applianceInfrastructureVersion'] = applianceInfrastructureVersion;
    map['applianceSoftwareVersion'] = applianceSoftwareVersion;
    map['availableVersions'] = availableVersions.toMap();
    map['bucket'] = bucket;
    map['createTime'] = createTime;
    map['error'] = error.toMap();
    map['name'] = name;
    map['registrationId'] = registrationId;
    map['serviceAccount'] = serviceAccount;
    map['state'] = state;
    map['stateTime'] = stateTime;
    map['updateTime'] = updateTime;
    map['upgradeStatus'] = upgradeStatus.toMap();
    map['version'] = version;
    return map;
  }

  factory GetDatacenterConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetDatacenterConnectorResult(
      applianceInfrastructureVersion:
          map['applianceInfrastructureVersion'] as String,
      applianceSoftwareVersion: map['applianceSoftwareVersion'] as String,
      availableVersions: AvailableUpdatesResponse.fromMap(
          (map['availableVersions'] as Map).cast<String, dynamic>()),
      bucket: map['bucket'] as String,
      createTime: map['createTime'] as String,
      error: StatusResponseVmmigrationV1.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      registrationId: map['registrationId'] as String,
      serviceAccount: map['serviceAccount'] as String,
      state: map['state'] as String,
      stateTime: map['stateTime'] as String,
      updateTime: map['updateTime'] as String,
      upgradeStatus: UpgradeStatusResponse.fromMap(
          (map['upgradeStatus'] as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}
