// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'admin_settings.dart';
import 'custom_domain.dart';
import 'deny_maintenance_period.dart';
import 'encryption_config_looker_v1.dart';
import 'instance_platform_edition.dart';
import 'maintenance_schedule.dart';
import 'maintenance_window_looker_v1.dart';
import 'oauth_config.dart';
import 'user_metadata.dart';

/// The set of arguments for Instance.
class InstanceLookerV1Args {
  /// Looker Instance Admin settings.
  final pulumi.Input<AdminSettings>? adminSettings;

  /// Network name in the consumer project. Format: `projects/{project}/global/networks/{network}`. Note that the consumer network may be in a different GCP project than the consumer project that is hosting the Looker Instance.
  final pulumi.Input<String>? consumerNetwork;
  final pulumi.Input<CustomDomain>? customDomain;

  /// Maintenance denial period for this instance.
  final pulumi.Input<DenyMaintenancePeriod>? denyMaintenancePeriod;

  /// Encryption configuration (CMEK). Only set if CMEK has been enabled on the instance.
  final pulumi.Input<EncryptionConfigLookerV1>? encryptionConfig;

  /// Required. The unique instance identifier. Must contain only lowercase letters, numbers, or hyphens, with the first character a letter and the last a letter or a number. 63 characters maximum.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? location;

  /// Maintenance schedule for this instance.
  final pulumi.Input<MaintenanceSchedule>? maintenanceSchedule;

  /// Maintenance window for this instance.
  final pulumi.Input<MaintenanceWindowLookerV1>? maintenanceWindow;

  /// Looker instance OAuth login settings.
  final pulumi.Input<OAuthConfig>? oauthConfig;

  /// Platform edition.
  final pulumi.Input<InstancePlatformEdition>? platformEdition;

  /// Whether private IP is enabled on the Looker instance.
  final pulumi.Input<bool>? privateIpEnabled;
  final pulumi.Input<String>? project;

  /// Whether public IP is enabled on the Looker instance.
  final pulumi.Input<bool>? publicIpEnabled;

  /// Name of a reserved IP address range within the Instance.consumer_network, to be used for private services access connection. May or may not be specified in a create request.
  final pulumi.Input<String>? reservedRange;

  /// User metadata.
  final pulumi.Input<UserMetadata>? userMetadata;

  InstanceLookerV1Args({
    this.adminSettings,
    this.consumerNetwork,
    this.customDomain,
    this.denyMaintenancePeriod,
    this.encryptionConfig,
    required this.instanceId,
    this.location,
    this.maintenanceSchedule,
    this.maintenanceWindow,
    this.oauthConfig,
    this.platformEdition,
    this.privateIpEnabled,
    this.project,
    this.publicIpEnabled,
    this.reservedRange,
    this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminSettingsValue = adminSettings;
    if (adminSettingsValue != null) {
      map['adminSettings'] = pulumi.Input.mapOptionalInputValue<AdminSettings,
          Map<String, dynamic>>(adminSettingsValue, (value) => value.toMap());
    }
    final consumerNetworkValue = consumerNetwork;
    if (consumerNetworkValue != null) {
      map['consumerNetwork'] = consumerNetworkValue;
    }
    final customDomainValue = customDomain;
    if (customDomainValue != null) {
      map['customDomain'] = pulumi.Input.mapOptionalInputValue<CustomDomain,
          Map<String, dynamic>>(customDomainValue, (value) => value.toMap());
    }
    final denyMaintenancePeriodValue = denyMaintenancePeriod;
    if (denyMaintenancePeriodValue != null) {
      map['denyMaintenancePeriod'] = pulumi.Input.mapOptionalInputValue<
              DenyMaintenancePeriod, Map<String, dynamic>>(
          denyMaintenancePeriodValue, (value) => value.toMap());
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = pulumi.Input.mapOptionalInputValue<
              EncryptionConfigLookerV1, Map<String, dynamic>>(
          encryptionConfigValue, (value) => value.toMap());
    }
    map['instanceId'] = instanceId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final maintenanceScheduleValue = maintenanceSchedule;
    if (maintenanceScheduleValue != null) {
      map['maintenanceSchedule'] = pulumi.Input.mapOptionalInputValue<
              MaintenanceSchedule, Map<String, dynamic>>(
          maintenanceScheduleValue, (value) => value.toMap());
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = pulumi.Input.mapOptionalInputValue<
              MaintenanceWindowLookerV1, Map<String, dynamic>>(
          maintenanceWindowValue, (value) => value.toMap());
    }
    final oauthConfigValue = oauthConfig;
    if (oauthConfigValue != null) {
      map['oauthConfig'] =
          pulumi.Input.mapOptionalInputValue<OAuthConfig, Map<String, dynamic>>(
              oauthConfigValue, (value) => value.toMap());
    }
    final platformEditionValue = platformEdition;
    if (platformEditionValue != null) {
      map['platformEdition'] =
          pulumi.Input.mapOptionalInputValue<InstancePlatformEdition, String>(
              platformEditionValue, (value) => value.value);
    }
    final privateIpEnabledValue = privateIpEnabled;
    if (privateIpEnabledValue != null) {
      map['privateIpEnabled'] = privateIpEnabledValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final publicIpEnabledValue = publicIpEnabled;
    if (publicIpEnabledValue != null) {
      map['publicIpEnabled'] = publicIpEnabledValue;
    }
    final reservedRangeValue = reservedRange;
    if (reservedRangeValue != null) {
      map['reservedRange'] = reservedRangeValue;
    }
    final userMetadataValue = userMetadata;
    if (userMetadataValue != null) {
      map['userMetadata'] = pulumi.Input.mapOptionalInputValue<UserMetadata,
          Map<String, dynamic>>(userMetadataValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceLookerV1Args.fromMap(Map<String, dynamic> map) {
    return InstanceLookerV1Args(
      adminSettings:
          pulumi.Input.asOptionalInput<AdminSettings>(map['adminSettings']),
      consumerNetwork:
          pulumi.Input.asOptionalInput<String>(map['consumerNetwork']),
      customDomain:
          pulumi.Input.asOptionalInput<CustomDomain>(map['customDomain']),
      denyMaintenancePeriod:
          pulumi.Input.asOptionalInput<DenyMaintenancePeriod>(
              map['denyMaintenancePeriod']),
      encryptionConfig: pulumi.Input.asOptionalInput<EncryptionConfigLookerV1>(
          map['encryptionConfig']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      maintenanceSchedule: pulumi.Input.asOptionalInput<MaintenanceSchedule>(
          map['maintenanceSchedule']),
      maintenanceWindow:
          pulumi.Input.asOptionalInput<MaintenanceWindowLookerV1>(
              map['maintenanceWindow']),
      oauthConfig:
          pulumi.Input.asOptionalInput<OAuthConfig>(map['oauthConfig']),
      platformEdition: pulumi.Input.asOptionalInput<InstancePlatformEdition>(
          map['platformEdition']),
      privateIpEnabled:
          pulumi.Input.asOptionalInput<bool>(map['privateIpEnabled']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      publicIpEnabled:
          pulumi.Input.asOptionalInput<bool>(map['publicIpEnabled']),
      reservedRange: pulumi.Input.asOptionalInput<String>(map['reservedRange']),
      userMetadata:
          pulumi.Input.asOptionalInput<UserMetadata>(map['userMetadata']),
    );
  }
}
