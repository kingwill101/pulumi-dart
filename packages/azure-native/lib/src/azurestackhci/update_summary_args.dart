// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_update_summary_args_doc}
/// The set of arguments for UpdateSummary.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_update_summary_args_doc}
class UpdateSummaryArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// Current OEM Version.
  final pulumi.Input<String>? currentOemVersion;
  /// Current Sbe version of the stamp.
  final pulumi.Input<String>? currentSbeVersion;
  /// Current Solution Bundle version of the stamp.
  final pulumi.Input<String>? currentVersion;
  /// Name of the hardware model.
  final pulumi.Input<String>? hardwareModel;
  /// Last time the package-specific checks were run.
  final pulumi.Input<String>? healthCheckDate;
  /// Last time the update service successfully checked for updates
  final pulumi.Input<String>? lastChecked;
  /// Last time an update installation completed successfully.
  final pulumi.Input<String>? lastUpdated;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// OEM family name.
  final pulumi.Input<String>? oemFamily;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Overall update state of the stamp.
  final pulumi.Input<String>? state;

  /// Creates a new [UpdateSummaryArgs].
  /// [clusterName] The name of the cluster.
  /// [currentOemVersion] Current OEM Version.
  /// [currentSbeVersion] Current Sbe version of the stamp.
  /// [currentVersion] Current Solution Bundle version of the stamp.
  /// [hardwareModel] Name of the hardware model.
  /// [healthCheckDate] Last time the package-specific checks were run.
  /// [lastChecked] Last time the update service successfully checked for updates
  /// [lastUpdated] Last time an update installation completed successfully.
  /// [location] The geo-location where the resource lives
  /// [oemFamily] OEM family name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [state] Overall update state of the stamp.
  UpdateSummaryArgs({
    required String clusterName,
    String? currentOemVersion,
    String? currentSbeVersion,
    String? currentVersion,
    String? hardwareModel,
    String? healthCheckDate,
    String? lastChecked,
    String? lastUpdated,
    String? location,
    String? oemFamily,
    required String resourceGroupName,
    String? state,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      currentOemVersion = pulumi.Input.asOptionalInput<String>(currentOemVersion),
      currentSbeVersion = pulumi.Input.asOptionalInput<String>(currentSbeVersion),
      currentVersion = pulumi.Input.asOptionalInput<String>(currentVersion),
      hardwareModel = pulumi.Input.asOptionalInput<String>(hardwareModel),
      healthCheckDate = pulumi.Input.asOptionalInput<String>(healthCheckDate),
      lastChecked = pulumi.Input.asOptionalInput<String>(lastChecked),
      lastUpdated = pulumi.Input.asOptionalInput<String>(lastUpdated),
      location = pulumi.Input.asOptionalInput<String>(location),
      oemFamily = pulumi.Input.asOptionalInput<String>(oemFamily),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'currentOemVersion': ?currentOemVersion,
      'currentSbeVersion': ?currentSbeVersion,
      'currentVersion': ?currentVersion,
      'hardwareModel': ?hardwareModel,
      'healthCheckDate': ?healthCheckDate,
      'lastChecked': ?lastChecked,
      'lastUpdated': ?lastUpdated,
      'location': ?location,
      'oemFamily': ?oemFamily,
      'resourceGroupName': resourceGroupName,
      'state': ?state,
    };
  }

  factory UpdateSummaryArgs.fromMap(Map<String, dynamic> map) {
    return UpdateSummaryArgs(
      clusterName: map['clusterName'] as String,
      currentOemVersion: map['currentOemVersion'] == null ? null : map['currentOemVersion'] as String,
      currentSbeVersion: map['currentSbeVersion'] == null ? null : map['currentSbeVersion'] as String,
      currentVersion: map['currentVersion'] == null ? null : map['currentVersion'] as String,
      hardwareModel: map['hardwareModel'] == null ? null : map['hardwareModel'] as String,
      healthCheckDate: map['healthCheckDate'] == null ? null : map['healthCheckDate'] as String,
      lastChecked: map['lastChecked'] == null ? null : map['lastChecked'] as String,
      lastUpdated: map['lastUpdated'] == null ? null : map['lastUpdated'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      oemFamily: map['oemFamily'] == null ? null : map['oemFamily'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

