// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'admin_settings.dart';
import 'custom_domain.dart';
import 'deny_maintenance_period.dart';
import 'encryption_config.dart';
import 'instance_platform_edition.dart';
import 'maintenance_schedule.dart';
import 'maintenance_window.dart';
import 'oauth_config.dart';
import 'user_metadata.dart';

/// {@template pulumi_looker_v1_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_looker_v1_instance_args_doc}
class InstanceArgs {
  /// Looker Instance Admin settings.
  final pulumi.Input<AdminSettings>? adminSettings;

  /// Network name in the consumer project. Format: `projects/{project}/global/networks/{network}`. Note that the consumer network may be in a different GCP project than the consumer project that is hosting the Looker Instance.
  final pulumi.Input<String>? consumerNetwork;
  final pulumi.Input<CustomDomain>? customDomain;

  /// Maintenance denial period for this instance.
  final pulumi.Input<DenyMaintenancePeriod>? denyMaintenancePeriod;

  /// Encryption configuration (CMEK). Only set if CMEK has been enabled on the instance.
  final pulumi.Input<EncryptionConfig>? encryptionConfig;

  /// Required. The unique instance identifier. Must contain only lowercase letters, numbers, or hyphens, with the first character a letter and the last a letter or a number. 63 characters maximum.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? location;

  /// Maintenance schedule for this instance.
  final pulumi.Input<MaintenanceSchedule>? maintenanceSchedule;

  /// Maintenance window for this instance.
  final pulumi.Input<MaintenanceWindow>? maintenanceWindow;

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

  /// Creates a new [InstanceArgs].
  /// [adminSettings] Looker Instance Admin settings.
  /// [consumerNetwork] Network name in the consumer project. Format: `projects/{project}/global/networks/{network}`. Note that the consumer network may be in a different GCP project than the consumer project that is hosting the Looker Instance.
  /// [customDomain] Optional.
  /// [denyMaintenancePeriod] Maintenance denial period for this instance.
  /// [encryptionConfig] Encryption configuration (CMEK). Only set if CMEK has been enabled on the instance.
  /// [instanceId] Required. The unique instance identifier. Must contain only lowercase letters, numbers, or hyphens, with the first character a letter and the last a letter or a number. 63 characters maximum.
  /// [location] Optional.
  /// [maintenanceSchedule] Maintenance schedule for this instance.
  /// [maintenanceWindow] Maintenance window for this instance.
  /// [oauthConfig] Looker instance OAuth login settings.
  /// [platformEdition] Platform edition.
  /// [privateIpEnabled] Whether private IP is enabled on the Looker instance.
  /// [project] Optional.
  /// [publicIpEnabled] Whether public IP is enabled on the Looker instance.
  /// [reservedRange] Name of a reserved IP address range within the Instance.consumer_network, to be used for private services access connection. May or may not be specified in a create request.
  /// [userMetadata] User metadata.
  InstanceArgs({
    AdminSettings? adminSettings,
    String? consumerNetwork,
    CustomDomain? customDomain,
    DenyMaintenancePeriod? denyMaintenancePeriod,
    EncryptionConfig? encryptionConfig,
    required String instanceId,
    String? location,
    MaintenanceSchedule? maintenanceSchedule,
    MaintenanceWindow? maintenanceWindow,
    OAuthConfig? oauthConfig,
    InstancePlatformEdition? platformEdition,
    bool? privateIpEnabled,
    String? project,
    bool? publicIpEnabled,
    String? reservedRange,
    UserMetadata? userMetadata,
  })  : adminSettings =
            pulumi.Input.asOptionalInput<AdminSettings>(adminSettings),
        consumerNetwork = pulumi.Input.asOptionalInput<String>(consumerNetwork),
        customDomain = pulumi.Input.asOptionalInput<CustomDomain>(customDomain),
        denyMaintenancePeriod =
            pulumi.Input.asOptionalInput<DenyMaintenancePeriod>(
                denyMaintenancePeriod),
        encryptionConfig =
            pulumi.Input.asOptionalInput<EncryptionConfig>(encryptionConfig),
        instanceId = pulumi.Input.asInput<String>(instanceId),
        location = pulumi.Input.asOptionalInput<String>(location),
        maintenanceSchedule = pulumi.Input.asOptionalInput<MaintenanceSchedule>(
            maintenanceSchedule),
        maintenanceWindow =
            pulumi.Input.asOptionalInput<MaintenanceWindow>(maintenanceWindow),
        oauthConfig = pulumi.Input.asOptionalInput<OAuthConfig>(oauthConfig),
        platformEdition = pulumi.Input.asOptionalInput<InstancePlatformEdition>(
            platformEdition),
        privateIpEnabled = pulumi.Input.asOptionalInput<bool>(privateIpEnabled),
        project = pulumi.Input.asOptionalInput<String>(project),
        publicIpEnabled = pulumi.Input.asOptionalInput<bool>(publicIpEnabled),
        reservedRange = pulumi.Input.asOptionalInput<String>(reservedRange),
        userMetadata = pulumi.Input.asOptionalInput<UserMetadata>(userMetadata);

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
              EncryptionConfig, Map<String, dynamic>>(
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
              MaintenanceWindow, Map<String, dynamic>>(
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

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      adminSettings: map['adminSettings'] == null
          ? null
          : AdminSettings.fromMap(
              (map['adminSettings'] as Map).cast<String, dynamic>()),
      consumerNetwork: map['consumerNetwork'] == null
          ? null
          : map['consumerNetwork'] as String,
      customDomain: map['customDomain'] == null
          ? null
          : CustomDomain.fromMap(
              (map['customDomain'] as Map).cast<String, dynamic>()),
      denyMaintenancePeriod: map['denyMaintenancePeriod'] == null
          ? null
          : DenyMaintenancePeriod.fromMap(
              (map['denyMaintenancePeriod'] as Map).cast<String, dynamic>()),
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : EncryptionConfig.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      instanceId: map['instanceId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      maintenanceSchedule: map['maintenanceSchedule'] == null
          ? null
          : MaintenanceSchedule.fromMap(
              (map['maintenanceSchedule'] as Map).cast<String, dynamic>()),
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : MaintenanceWindow.fromMap(
              (map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      oauthConfig: map['oauthConfig'] == null
          ? null
          : OAuthConfig.fromMap(
              (map['oauthConfig'] as Map).cast<String, dynamic>()),
      platformEdition: map['platformEdition'] == null
          ? null
          : InstancePlatformEdition.fromValue(map['platformEdition'] as String),
      privateIpEnabled: map['privateIpEnabled'] == null
          ? null
          : map['privateIpEnabled'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
      publicIpEnabled: map['publicIpEnabled'] == null
          ? null
          : map['publicIpEnabled'] as bool,
      reservedRange:
          map['reservedRange'] == null ? null : map['reservedRange'] as String,
      userMetadata: map['userMetadata'] == null
          ? null
          : UserMetadata.fromMap(
              (map['userMetadata'] as Map).cast<String, dynamic>()),
    );
  }
}
