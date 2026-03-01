// ignore_for_file: unused_element, unnecessary_cast

import 'marketplace_resource_response.dart';
import 'network_profile_response.dart';
import 'service_vnet_addons_response.dart';
import 'weekly_maintenance_schedule_configuration_response.dart';

/// Service properties payload
class ClusterResourcePropertiesResponse {
  /// Fully qualified dns name of the service instance
  final String fqdn;
  /// The name of the resource group that contains the infrastructure resources
  final String? infraResourceGroup;
  /// Additional Service settings for planned maintenance
  final WeeklyMaintenanceScheduleConfigurationResponse? maintenanceScheduleConfiguration;
  /// The resource Id of the Managed Environment that the Spring Apps instance builds on
  final String? managedEnvironmentId;
  /// Purchasing 3rd party product of the Service resource.
  final MarketplaceResourceResponse? marketplaceResource;
  /// Network profile of the Service
  final NetworkProfileResponse? networkProfile;
  /// Power state of the Service
  final String powerState;
  /// Provisioning state of the Service
  final String provisioningState;
  /// ServiceInstanceEntity Id which uniquely identifies a created resource
  final String serviceId;
  /// Version of the Service
  final int version;
  /// Additional Service settings in vnet injection instance
  final ServiceVNetAddonsResponse? vnetAddons;
  final bool? zoneRedundant;

  /// Creates a new [ClusterResourcePropertiesResponse].
  /// [fqdn] Fully qualified dns name of the service instance
  /// [infraResourceGroup] The name of the resource group that contains the infrastructure resources
  /// [maintenanceScheduleConfiguration] Additional Service settings for planned maintenance
  /// [managedEnvironmentId] The resource Id of the Managed Environment that the Spring Apps instance builds on
  /// [marketplaceResource] Purchasing 3rd party product of the Service resource.
  /// [networkProfile] Network profile of the Service
  /// [powerState] Power state of the Service
  /// [provisioningState] Provisioning state of the Service
  /// [serviceId] ServiceInstanceEntity Id which uniquely identifies a created resource
  /// [version] Version of the Service
  /// [vnetAddons] Additional Service settings in vnet injection instance
  /// [zoneRedundant] Optional.
  ClusterResourcePropertiesResponse({
    required this.fqdn,
    this.infraResourceGroup,
    this.maintenanceScheduleConfiguration,
    this.managedEnvironmentId,
    this.marketplaceResource,
    this.networkProfile,
    required this.powerState,
    required this.provisioningState,
    required this.serviceId,
    required this.version,
    this.vnetAddons,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': fqdn,
      'infraResourceGroup': ?infraResourceGroup,
      'maintenanceScheduleConfiguration': ?maintenanceScheduleConfiguration == null ? null : maintenanceScheduleConfiguration!.toMap(),
      'managedEnvironmentId': ?managedEnvironmentId,
      'marketplaceResource': ?marketplaceResource == null ? null : marketplaceResource!.toMap(),
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'powerState': powerState,
      'provisioningState': provisioningState,
      'serviceId': serviceId,
      'version': version,
      'vnetAddons': ?vnetAddons == null ? null : vnetAddons!.toMap(),
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory ClusterResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ClusterResourcePropertiesResponse(
      fqdn: map['fqdn'] as String,
      infraResourceGroup: map['infraResourceGroup'] == null ? null : map['infraResourceGroup'] as String,
      maintenanceScheduleConfiguration: map['maintenanceScheduleConfiguration'] == null ? null : WeeklyMaintenanceScheduleConfigurationResponse.fromMap((map['maintenanceScheduleConfiguration'] as Map).cast<String, dynamic>()),
      managedEnvironmentId: map['managedEnvironmentId'] == null ? null : map['managedEnvironmentId'] as String,
      marketplaceResource: map['marketplaceResource'] == null ? null : MarketplaceResourceResponse.fromMap((map['marketplaceResource'] as Map).cast<String, dynamic>()),
      networkProfile: map['networkProfile'] == null ? null : NetworkProfileResponse.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      powerState: map['powerState'] as String,
      provisioningState: map['provisioningState'] as String,
      serviceId: map['serviceId'] as String,
      version: map['version'] as int,
      vnetAddons: map['vnetAddons'] == null ? null : ServiceVNetAddonsResponse.fromMap((map['vnetAddons'] as Map).cast<String, dynamic>()),
      zoneRedundant: map['zoneRedundant'] == null ? null : map['zoneRedundant'] as bool,
    );
  }
}

