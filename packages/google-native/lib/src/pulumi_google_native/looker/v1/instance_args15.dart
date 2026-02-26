// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'admin_settings.dart';
import 'custom_domain.dart';
import 'deny_maintenance_period.dart';
import 'encryption_config10.dart';
import 'instance_platform_edition.dart';
import 'maintenance_schedule.dart';
import 'maintenance_window5.dart';
import 'oauth_config.dart';
import 'user_metadata.dart';

/// The set of arguments for Instance.
class InstanceArgs15 {
  /// Looker Instance Admin settings.
  final Input<AdminSettings>? adminSettings;

  /// Network name in the consumer project. Format: `projects/{project}/global/networks/{network}`. Note that the consumer network may be in a different GCP project than the consumer project that is hosting the Looker Instance.
  final Input<String>? consumerNetwork;
  final Input<CustomDomain>? customDomain;

  /// Maintenance denial period for this instance.
  final Input<DenyMaintenancePeriod>? denyMaintenancePeriod;

  /// Encryption configuration (CMEK). Only set if CMEK has been enabled on the instance.
  final Input<EncryptionConfig10>? encryptionConfig;

  /// Required. The unique instance identifier. Must contain only lowercase letters, numbers, or hyphens, with the first character a letter and the last a letter or a number. 63 characters maximum.
  final Input<String> instanceId;
  final Input<String>? location;

  /// Maintenance schedule for this instance.
  final Input<MaintenanceSchedule>? maintenanceSchedule;

  /// Maintenance window for this instance.
  final Input<MaintenanceWindow5>? maintenanceWindow;

  /// Looker instance OAuth login settings.
  final Input<OAuthConfig>? oauthConfig;

  /// Platform edition.
  final Input<InstancePlatformEdition>? platformEdition;

  /// Whether private IP is enabled on the Looker instance.
  final Input<bool>? privateIpEnabled;
  final Input<String>? project;

  /// Whether public IP is enabled on the Looker instance.
  final Input<bool>? publicIpEnabled;

  /// Name of a reserved IP address range within the Instance.consumer_network, to be used for private services access connection. May or may not be specified in a create request.
  final Input<String>? reservedRange;

  /// User metadata.
  final Input<UserMetadata>? userMetadata;

  InstanceArgs15({
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
      map['adminSettings'] =
          Input.mapOptionalInputValue<AdminSettings, Map<String, dynamic>>(
              adminSettingsValue, (value) => value.toMap());
    }
    final consumerNetworkValue = consumerNetwork;
    if (consumerNetworkValue != null) {
      map['consumerNetwork'] = consumerNetworkValue;
    }
    final customDomainValue = customDomain;
    if (customDomainValue != null) {
      map['customDomain'] =
          Input.mapOptionalInputValue<CustomDomain, Map<String, dynamic>>(
              customDomainValue, (value) => value.toMap());
    }
    final denyMaintenancePeriodValue = denyMaintenancePeriod;
    if (denyMaintenancePeriodValue != null) {
      map['denyMaintenancePeriod'] = Input.mapOptionalInputValue<
              DenyMaintenancePeriod, Map<String, dynamic>>(
          denyMaintenancePeriodValue, (value) => value.toMap());
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] =
          Input.mapOptionalInputValue<EncryptionConfig10, Map<String, dynamic>>(
              encryptionConfigValue, (value) => value.toMap());
    }
    map['instanceId'] = instanceId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final maintenanceScheduleValue = maintenanceSchedule;
    if (maintenanceScheduleValue != null) {
      map['maintenanceSchedule'] = Input.mapOptionalInputValue<
              MaintenanceSchedule, Map<String, dynamic>>(
          maintenanceScheduleValue, (value) => value.toMap());
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] =
          Input.mapOptionalInputValue<MaintenanceWindow5, Map<String, dynamic>>(
              maintenanceWindowValue, (value) => value.toMap());
    }
    final oauthConfigValue = oauthConfig;
    if (oauthConfigValue != null) {
      map['oauthConfig'] =
          Input.mapOptionalInputValue<OAuthConfig, Map<String, dynamic>>(
              oauthConfigValue, (value) => value.toMap());
    }
    final platformEditionValue = platformEdition;
    if (platformEditionValue != null) {
      map['platformEdition'] =
          Input.mapOptionalInputValue<InstancePlatformEdition, String>(
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
      map['userMetadata'] =
          Input.mapOptionalInputValue<UserMetadata, Map<String, dynamic>>(
              userMetadataValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceArgs15.fromMap(Map<String, dynamic> map) {
    return InstanceArgs15(
      adminSettings: Input.asOptionalInput<AdminSettings>(map['adminSettings']),
      consumerNetwork: Input.asOptionalInput<String>(map['consumerNetwork']),
      customDomain: Input.asOptionalInput<CustomDomain>(map['customDomain']),
      denyMaintenancePeriod: Input.asOptionalInput<DenyMaintenancePeriod>(
          map['denyMaintenancePeriod']),
      encryptionConfig:
          Input.asOptionalInput<EncryptionConfig10>(map['encryptionConfig']),
      instanceId: Input.asInput<String>(map['instanceId']),
      location: Input.asOptionalInput<String>(map['location']),
      maintenanceSchedule: Input.asOptionalInput<MaintenanceSchedule>(
          map['maintenanceSchedule']),
      maintenanceWindow:
          Input.asOptionalInput<MaintenanceWindow5>(map['maintenanceWindow']),
      oauthConfig: Input.asOptionalInput<OAuthConfig>(map['oauthConfig']),
      platformEdition: Input.asOptionalInput<InstancePlatformEdition>(
          map['platformEdition']),
      privateIpEnabled: Input.asOptionalInput<bool>(map['privateIpEnabled']),
      project: Input.asOptionalInput<String>(map['project']),
      publicIpEnabled: Input.asOptionalInput<bool>(map['publicIpEnabled']),
      reservedRange: Input.asOptionalInput<String>(map['reservedRange']),
      userMetadata: Input.asOptionalInput<UserMetadata>(map['userMetadata']),
    );
  }
}
