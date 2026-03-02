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
    required this.clusterName,
    this.currentOemVersion,
    this.currentSbeVersion,
    this.currentVersion,
    this.hardwareModel,
    this.healthCheckDate,
    this.lastChecked,
    this.lastUpdated,
    this.location,
    this.oemFamily,
    required this.resourceGroupName,
    this.state,
  });

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
      clusterName: (map['clusterName'] as String).input(),
      currentOemVersion: map['currentOemVersion'] == null ? null : (map['currentOemVersion']! as String).input(),
      currentSbeVersion: map['currentSbeVersion'] == null ? null : (map['currentSbeVersion']! as String).input(),
      currentVersion: map['currentVersion'] == null ? null : (map['currentVersion']! as String).input(),
      hardwareModel: map['hardwareModel'] == null ? null : (map['hardwareModel']! as String).input(),
      healthCheckDate: map['healthCheckDate'] == null ? null : (map['healthCheckDate']! as String).input(),
      lastChecked: map['lastChecked'] == null ? null : (map['lastChecked']! as String).input(),
      lastUpdated: map['lastUpdated'] == null ? null : (map['lastUpdated']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      oemFamily: map['oemFamily'] == null ? null : (map['oemFamily']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

