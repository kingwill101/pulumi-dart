// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stop_on_disconnect_configuration.dart';

/// {@template pulumi_devcenter_pool_args_doc}
/// The set of arguments for Pool.
/// {@endtemplate}
/// {@macro pulumi_devcenter_pool_args_doc}
class PoolArgs {
  /// Name of a Dev Box definition in parent Project of this Pool
  final pulumi.Input<String> devBoxDefinitionName;
  /// The display name of the pool.
  final pulumi.Input<String>? displayName;
  /// Specifies the license type indicating the caller has already acquired licenses for the Dev Boxes that will be created.
  final pulumi.Input<String> licenseType;
  /// Indicates whether owners of Dev Boxes in this pool are added as local administrators on the Dev Box.
  final pulumi.Input<String> localAdministrator;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The regions of the managed virtual network (required when managedNetworkType is Managed).
  final pulumi.Input<List<String>>? managedVirtualNetworkRegions;
  /// Name of a Network Connection in parent Project of this Pool
  final pulumi.Input<String> networkConnectionName;
  /// Name of the pool.
  final pulumi.Input<String>? poolName;
  /// The name of the project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Indicates whether Dev Boxes in this pool are created with single sign on enabled. The also requires that single sign on be enabled on the tenant.
  final pulumi.Input<String>? singleSignOnStatus;
  /// Stop on disconnect configuration settings for Dev Boxes created in this pool.
  final pulumi.Input<StopOnDisconnectConfiguration>? stopOnDisconnect;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Indicates whether the pool uses a Virtual Network managed by Microsoft or a customer provided network.
  final pulumi.Input<String>? virtualNetworkType;

  /// Creates a new [PoolArgs].
  /// [devBoxDefinitionName] Name of a Dev Box definition in parent Project of this Pool
  /// [displayName] The display name of the pool.
  /// [licenseType] Specifies the license type indicating the caller has already acquired licenses for the Dev Boxes that will be created.
  /// [localAdministrator] Indicates whether owners of Dev Boxes in this pool are added as local administrators on the Dev Box.
  /// [location] The geo-location where the resource lives
  /// [managedVirtualNetworkRegions] The regions of the managed virtual network (required when managedNetworkType is Managed).
  /// [networkConnectionName] Name of a Network Connection in parent Project of this Pool
  /// [poolName] Name of the pool.
  /// [projectName] The name of the project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [singleSignOnStatus] Indicates whether Dev Boxes in this pool are created with single sign on enabled. The also requires that single sign on be enabled on the tenant.
  /// [stopOnDisconnect] Stop on disconnect configuration settings for Dev Boxes created in this pool.
  /// [tags] Resource tags.
  /// [virtualNetworkType] Indicates whether the pool uses a Virtual Network managed by Microsoft or a customer provided network.
  PoolArgs({
    required this.devBoxDefinitionName,
    this.displayName,
    required this.licenseType,
    required this.localAdministrator,
    this.location,
    this.managedVirtualNetworkRegions,
    required this.networkConnectionName,
    this.poolName,
    required this.projectName,
    required this.resourceGroupName,
    this.singleSignOnStatus,
    this.stopOnDisconnect,
    this.tags,
    this.virtualNetworkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devBoxDefinitionName': devBoxDefinitionName,
      'displayName': ?displayName,
      'licenseType': licenseType,
      'localAdministrator': localAdministrator,
      'location': ?location,
      'managedVirtualNetworkRegions': ?managedVirtualNetworkRegions,
      'networkConnectionName': networkConnectionName,
      'poolName': ?poolName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'singleSignOnStatus': ?singleSignOnStatus,
      'stopOnDisconnect': ?pulumi.Input.mapOptionalInputValue<StopOnDisconnectConfiguration, Map<String, dynamic>>(stopOnDisconnect, (value) => value.toMap()),
      'tags': ?tags,
      'virtualNetworkType': ?virtualNetworkType,
    };
  }

  factory PoolArgs.fromMap(Map<String, dynamic> map) {
    return PoolArgs(
      devBoxDefinitionName: (map['devBoxDefinitionName'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      licenseType: (map['licenseType'] as String).input(),
      localAdministrator: (map['localAdministrator'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedVirtualNetworkRegions: map['managedVirtualNetworkRegions'] == null ? null : ((map['managedVirtualNetworkRegions']! as List).cast<String>()).input(),
      networkConnectionName: (map['networkConnectionName'] as String).input(),
      poolName: map['poolName'] == null ? null : (map['poolName']! as String).input(),
      projectName: (map['projectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      singleSignOnStatus: map['singleSignOnStatus'] == null ? null : (map['singleSignOnStatus']! as String).input(),
      stopOnDisconnect: map['stopOnDisconnect'] == null ? null : (StopOnDisconnectConfiguration.fromMap((map['stopOnDisconnect']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualNetworkType: map['virtualNetworkType'] == null ? null : (map['virtualNetworkType']! as String).input(),
    );
  }
}

