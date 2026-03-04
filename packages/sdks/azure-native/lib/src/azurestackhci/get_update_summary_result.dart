// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getUpdateSummary.
class GetUpdateSummaryResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Current OEM Version.
  final String? currentOemVersion;

  /// Current Sbe version of the stamp.
  final String? currentSbeVersion;

  /// Current Solution Bundle version of the stamp.
  final String? currentVersion;

  /// Name of the hardware model.
  final String? hardwareModel;

  /// Last time the package-specific checks were run.
  final String? healthCheckDate;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// Last time the update service successfully checked for updates
  final String? lastChecked;

  /// Last time an update installation completed successfully.
  final String? lastUpdated;

  /// The geo-location where the resource lives
  final String? location;

  /// The name of the resource
  final String name;

  /// OEM family name.
  final String? oemFamily;

  /// Provisioning state of the UpdateSummaries proxy resource.
  final String provisioningState;

  /// Overall update state of the stamp.
  final String? state;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetUpdateSummaryResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [currentOemVersion] Current OEM Version.
  /// [currentSbeVersion] Current Sbe version of the stamp.
  /// [currentVersion] Current Solution Bundle version of the stamp.
  /// [hardwareModel] Name of the hardware model.
  /// [healthCheckDate] Last time the package-specific checks were run.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [lastChecked] Last time the update service successfully checked for updates
  /// [lastUpdated] Last time an update installation completed successfully.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [oemFamily] OEM family name.
  /// [provisioningState] Provisioning state of the UpdateSummaries proxy resource.
  /// [state] Overall update state of the stamp.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetUpdateSummaryResult({
    required this.azureApiVersion,
    this.currentOemVersion,
    this.currentSbeVersion,
    this.currentVersion,
    this.hardwareModel,
    this.healthCheckDate,
    required this.id,
    this.lastChecked,
    this.lastUpdated,
    this.location,
    required this.name,
    this.oemFamily,
    required this.provisioningState,
    this.state,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'currentOemVersion': ?currentOemVersion,
      'currentSbeVersion': ?currentSbeVersion,
      'currentVersion': ?currentVersion,
      'hardwareModel': ?hardwareModel,
      'healthCheckDate': ?healthCheckDate,
      'id': id,
      'lastChecked': ?lastChecked,
      'lastUpdated': ?lastUpdated,
      'location': ?location,
      'name': name,
      'oemFamily': ?oemFamily,
      'provisioningState': provisioningState,
      'state': ?state,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetUpdateSummaryResult.fromMap(Map<String, dynamic> map) {
    return GetUpdateSummaryResult(
      azureApiVersion: map['azureApiVersion'] as String,
      currentOemVersion: (() {
        final guardedValue = map['currentOemVersion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      currentSbeVersion: (() {
        final guardedValue = map['currentSbeVersion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      currentVersion: (() {
        final guardedValue = map['currentVersion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      hardwareModel: (() {
        final guardedValue = map['hardwareModel'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      healthCheckDate: (() {
        final guardedValue = map['healthCheckDate'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      lastChecked: (() {
        final guardedValue = map['lastChecked'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      lastUpdated: (() {
        final guardedValue = map['lastUpdated'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      oemFamily: (() {
        final guardedValue = map['oemFamily'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
