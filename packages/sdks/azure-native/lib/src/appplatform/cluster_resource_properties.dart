// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'marketplace_resource.dart';
import 'network_profile.dart';
import 'service_vnet_addons.dart';
import 'weekly_maintenance_schedule_configuration.dart';

/// Service properties payload
class ClusterResourceProperties {
  /// The name of the resource group that contains the infrastructure resources
  final pulumi.Input<String>? infraResourceGroup;
  /// Additional Service settings for planned maintenance
  final pulumi.Input<WeeklyMaintenanceScheduleConfiguration>? maintenanceScheduleConfiguration;
  /// The resource Id of the Managed Environment that the Spring Apps instance builds on
  final pulumi.Input<String>? managedEnvironmentId;
  /// Purchasing 3rd party product of the Service resource.
  final pulumi.Input<MarketplaceResource>? marketplaceResource;
  /// Network profile of the Service
  final pulumi.Input<NetworkProfile>? networkProfile;
  /// Additional Service settings in vnet injection instance
  final pulumi.Input<ServiceVNetAddons>? vnetAddons;
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [ClusterResourceProperties].
  /// [infraResourceGroup] The name of the resource group that contains the infrastructure resources
  /// [maintenanceScheduleConfiguration] Additional Service settings for planned maintenance
  /// [managedEnvironmentId] The resource Id of the Managed Environment that the Spring Apps instance builds on
  /// [marketplaceResource] Purchasing 3rd party product of the Service resource.
  /// [networkProfile] Network profile of the Service
  /// [vnetAddons] Additional Service settings in vnet injection instance
  /// [zoneRedundant] Optional.
  ClusterResourceProperties({
    this.infraResourceGroup,
    this.maintenanceScheduleConfiguration,
    this.managedEnvironmentId,
    this.marketplaceResource,
    this.networkProfile,
    this.vnetAddons,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infraResourceGroup': ?infraResourceGroup,
      'maintenanceScheduleConfiguration': ?pulumi.Input.mapOptionalInputValue<WeeklyMaintenanceScheduleConfiguration, Map<String, dynamic>>(maintenanceScheduleConfiguration, (value) => value.toMap()),
      'managedEnvironmentId': ?managedEnvironmentId,
      'marketplaceResource': ?pulumi.Input.mapOptionalInputValue<MarketplaceResource, Map<String, dynamic>>(marketplaceResource, (value) => value.toMap()),
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'vnetAddons': ?pulumi.Input.mapOptionalInputValue<ServiceVNetAddons, Map<String, dynamic>>(vnetAddons, (value) => value.toMap()),
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory ClusterResourceProperties.fromMap(Map<String, dynamic> map) {
    return ClusterResourceProperties(
      infraResourceGroup: map['infraResourceGroup'] == null ? null : (map['infraResourceGroup'] as String).input(),
      maintenanceScheduleConfiguration: map['maintenanceScheduleConfiguration'] == null ? null : (WeeklyMaintenanceScheduleConfiguration.fromMap((map['maintenanceScheduleConfiguration'] as Map).cast<String, dynamic>())).input(),
      managedEnvironmentId: map['managedEnvironmentId'] == null ? null : (map['managedEnvironmentId'] as String).input(),
      marketplaceResource: map['marketplaceResource'] == null ? null : (MarketplaceResource.fromMap((map['marketplaceResource'] as Map).cast<String, dynamic>())).input(),
      networkProfile: map['networkProfile'] == null ? null : (NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())).input(),
      vnetAddons: map['vnetAddons'] == null ? null : (ServiceVNetAddons.fromMap((map['vnetAddons'] as Map).cast<String, dynamic>())).input(),
      zoneRedundant: map['zoneRedundant'] == null ? null : (map['zoneRedundant'] as bool).input(),
    );
  }
}

