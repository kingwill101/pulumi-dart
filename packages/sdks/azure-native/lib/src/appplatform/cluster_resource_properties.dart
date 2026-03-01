// ignore_for_file: unused_element, unnecessary_cast

import 'marketplace_resource.dart';
import 'network_profile.dart';
import 'service_vnet_addons.dart';
import 'weekly_maintenance_schedule_configuration.dart';

/// Service properties payload
class ClusterResourceProperties {
  /// The name of the resource group that contains the infrastructure resources
  final String? infraResourceGroup;
  /// Additional Service settings for planned maintenance
  final WeeklyMaintenanceScheduleConfiguration? maintenanceScheduleConfiguration;
  /// The resource Id of the Managed Environment that the Spring Apps instance builds on
  final String? managedEnvironmentId;
  /// Purchasing 3rd party product of the Service resource.
  final MarketplaceResource? marketplaceResource;
  /// Network profile of the Service
  final NetworkProfile? networkProfile;
  /// Additional Service settings in vnet injection instance
  final ServiceVNetAddons? vnetAddons;
  final bool? zoneRedundant;

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
      'maintenanceScheduleConfiguration': ?maintenanceScheduleConfiguration == null ? null : maintenanceScheduleConfiguration!.toMap(),
      'managedEnvironmentId': ?managedEnvironmentId,
      'marketplaceResource': ?marketplaceResource == null ? null : marketplaceResource!.toMap(),
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'vnetAddons': ?vnetAddons == null ? null : vnetAddons!.toMap(),
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory ClusterResourceProperties.fromMap(Map<String, dynamic> map) {
    return ClusterResourceProperties(
      infraResourceGroup: map['infraResourceGroup'] == null ? null : map['infraResourceGroup'] as String,
      maintenanceScheduleConfiguration: map['maintenanceScheduleConfiguration'] == null ? null : WeeklyMaintenanceScheduleConfiguration.fromMap((map['maintenanceScheduleConfiguration'] as Map).cast<String, dynamic>()),
      managedEnvironmentId: map['managedEnvironmentId'] == null ? null : map['managedEnvironmentId'] as String,
      marketplaceResource: map['marketplaceResource'] == null ? null : MarketplaceResource.fromMap((map['marketplaceResource'] as Map).cast<String, dynamic>()),
      networkProfile: map['networkProfile'] == null ? null : NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      vnetAddons: map['vnetAddons'] == null ? null : ServiceVNetAddons.fromMap((map['vnetAddons'] as Map).cast<String, dynamic>()),
      zoneRedundant: map['zoneRedundant'] == null ? null : map['zoneRedundant'] as bool,
    );
  }
}

