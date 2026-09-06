// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'marketplace_resource_response.dart';
import 'network_profile_response.dart';
import 'service_vnet_addons_response.dart';
import 'weekly_maintenance_schedule_configuration_response.dart';

/// Service properties payload
class ClusterResourcePropertiesResponse {
  /// Fully qualified dns name of the service instance
  final pulumi.Input<String> fqdn;
  /// The name of the resource group that contains the infrastructure resources
  final pulumi.Input<String?>? infraResourceGroup;
  /// Additional Service settings for planned maintenance
  final pulumi.Input<WeeklyMaintenanceScheduleConfigurationResponse?>? maintenanceScheduleConfiguration;
  /// The resource Id of the Managed Environment that the Spring Apps instance builds on
  final pulumi.Input<String?>? managedEnvironmentId;
  /// Purchasing 3rd party product of the Service resource.
  final pulumi.Input<MarketplaceResourceResponse?>? marketplaceResource;
  /// Network profile of the Service
  final pulumi.Input<NetworkProfileResponse?>? networkProfile;
  /// Power state of the Service
  final pulumi.Input<String> powerState;
  /// Provisioning state of the Service
  final pulumi.Input<String> provisioningState;
  /// ServiceInstanceEntity Id which uniquely identifies a created resource
  final pulumi.Input<String> serviceId;
  /// Version of the Service
  final pulumi.Input<int> version;
  /// Additional Service settings in vnet injection instance
  final pulumi.Input<ServiceVNetAddonsResponse?>? vnetAddons;
  final pulumi.Input<bool?>? zoneRedundant;

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
    pulumi.Input<bool?>? zoneRedundant,
  }) : zoneRedundant = zoneRedundant ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': fqdn,
      'infraResourceGroup': ?infraResourceGroup,
      'maintenanceScheduleConfiguration': ?pulumi.Input.mapOptionalInputValue<WeeklyMaintenanceScheduleConfigurationResponse, Map<String, dynamic>>(maintenanceScheduleConfiguration, (value) => value.toMap()),
      'managedEnvironmentId': ?managedEnvironmentId,
      'marketplaceResource': ?pulumi.Input.mapOptionalInputValue<MarketplaceResourceResponse, Map<String, dynamic>>(marketplaceResource, (value) => value.toMap()),
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfileResponse, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'powerState': powerState,
      'provisioningState': provisioningState,
      'serviceId': serviceId,
      'version': version,
      'vnetAddons': ?pulumi.Input.mapOptionalInputValue<ServiceVNetAddonsResponse, Map<String, dynamic>>(vnetAddons, (value) => value.toMap()),
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory ClusterResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ClusterResourcePropertiesResponse(
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      infraResourceGroup: (() { final guardedValue = map['infraResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceScheduleConfiguration: (() { final guardedValue = map['maintenanceScheduleConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WeeklyMaintenanceScheduleConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedEnvironmentId: (() { final guardedValue = map['managedEnvironmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplaceResource: (() { final guardedValue = map['marketplaceResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MarketplaceResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      powerState: pulumi.Input.fromValue(map['powerState'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      version: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['version'])),
      vnetAddons: (() { final guardedValue = map['vnetAddons']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceVNetAddonsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
