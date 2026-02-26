// ignore_for_file: unused_element, unnecessary_cast

import 'admin_settings_response.dart';
import 'custom_domain_response.dart';
import 'deny_maintenance_period_response.dart';
import 'encryption_config_response10.dart';
import 'maintenance_schedule_response.dart';
import 'maintenance_window_response5.dart';
import 'oauth_config_response.dart';
import 'user_metadata_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult15 {
  /// Looker Instance Admin settings.
  final AdminSettingsResponse adminSettings;

  /// Network name in the consumer project. Format: `projects/{project}/global/networks/{network}`. Note that the consumer network may be in a different GCP project than the consumer project that is hosting the Looker Instance.
  final String consumerNetwork;

  /// The time when the Looker instance provisioning was first requested.
  final String createTime;
  final CustomDomainResponse customDomain;

  /// Maintenance denial period for this instance.
  final DenyMaintenancePeriodResponse denyMaintenancePeriod;

  /// Public Egress IP (IPv4).
  final String egressPublicIp;

  /// Encryption configuration (CMEK). Only set if CMEK has been enabled on the instance.
  final EncryptionConfigResponse10 encryptionConfig;

  /// Private Ingress IP (IPv4).
  final String ingressPrivateIp;

  /// Public Ingress IP (IPv4).
  final String ingressPublicIp;

  /// Last computed maintenance denial period for this instance.
  final DenyMaintenancePeriodResponse lastDenyMaintenancePeriod;

  /// Looker instance URI which can be used to access the Looker Instance UI.
  final String lookerUri;

  /// The Looker version that the instance is using.
  final String lookerVersion;

  /// Maintenance schedule for this instance.
  final MaintenanceScheduleResponse maintenanceSchedule;

  /// Maintenance window for this instance.
  final MaintenanceWindowResponse5 maintenanceWindow;

  /// Format: `projects/{project}/locations/{location}/instances/{instance}`.
  final String name;

  /// Looker instance OAuth login settings.
  final OAuthConfigResponse oauthConfig;

  /// Platform edition.
  final String platformEdition;

  /// Whether private IP is enabled on the Looker instance.
  final bool privateIpEnabled;

  /// Whether public IP is enabled on the Looker instance.
  final bool publicIpEnabled;

  /// Name of a reserved IP address range within the Instance.consumer_network, to be used for private services access connection. May or may not be specified in a create request.
  final String reservedRange;

  /// The state of the instance.
  final String state;

  /// The time when the Looker instance was last updated.
  final String updateTime;

  /// User metadata.
  final UserMetadataResponse userMetadata;

  GetInstanceResult15({
    required this.adminSettings,
    required this.consumerNetwork,
    required this.createTime,
    required this.customDomain,
    required this.denyMaintenancePeriod,
    required this.egressPublicIp,
    required this.encryptionConfig,
    required this.ingressPrivateIp,
    required this.ingressPublicIp,
    required this.lastDenyMaintenancePeriod,
    required this.lookerUri,
    required this.lookerVersion,
    required this.maintenanceSchedule,
    required this.maintenanceWindow,
    required this.name,
    required this.oauthConfig,
    required this.platformEdition,
    required this.privateIpEnabled,
    required this.publicIpEnabled,
    required this.reservedRange,
    required this.state,
    required this.updateTime,
    required this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminSettings'] = adminSettings.toMap();
    map['consumerNetwork'] = consumerNetwork;
    map['createTime'] = createTime;
    map['customDomain'] = customDomain.toMap();
    map['denyMaintenancePeriod'] = denyMaintenancePeriod.toMap();
    map['egressPublicIp'] = egressPublicIp;
    map['encryptionConfig'] = encryptionConfig.toMap();
    map['ingressPrivateIp'] = ingressPrivateIp;
    map['ingressPublicIp'] = ingressPublicIp;
    map['lastDenyMaintenancePeriod'] = lastDenyMaintenancePeriod.toMap();
    map['lookerUri'] = lookerUri;
    map['lookerVersion'] = lookerVersion;
    map['maintenanceSchedule'] = maintenanceSchedule.toMap();
    map['maintenanceWindow'] = maintenanceWindow.toMap();
    map['name'] = name;
    map['oauthConfig'] = oauthConfig.toMap();
    map['platformEdition'] = platformEdition;
    map['privateIpEnabled'] = privateIpEnabled;
    map['publicIpEnabled'] = publicIpEnabled;
    map['reservedRange'] = reservedRange;
    map['state'] = state;
    map['updateTime'] = updateTime;
    map['userMetadata'] = userMetadata.toMap();
    return map;
  }

  factory GetInstanceResult15.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult15(
      adminSettings: AdminSettingsResponse.fromMap(
          (map['adminSettings'] as Map).cast<String, dynamic>()),
      consumerNetwork: map['consumerNetwork'] as String,
      createTime: map['createTime'] as String,
      customDomain: CustomDomainResponse.fromMap(
          (map['customDomain'] as Map).cast<String, dynamic>()),
      denyMaintenancePeriod: DenyMaintenancePeriodResponse.fromMap(
          (map['denyMaintenancePeriod'] as Map).cast<String, dynamic>()),
      egressPublicIp: map['egressPublicIp'] as String,
      encryptionConfig: EncryptionConfigResponse10.fromMap(
          (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      ingressPrivateIp: map['ingressPrivateIp'] as String,
      ingressPublicIp: map['ingressPublicIp'] as String,
      lastDenyMaintenancePeriod: DenyMaintenancePeriodResponse.fromMap(
          (map['lastDenyMaintenancePeriod'] as Map).cast<String, dynamic>()),
      lookerUri: map['lookerUri'] as String,
      lookerVersion: map['lookerVersion'] as String,
      maintenanceSchedule: MaintenanceScheduleResponse.fromMap(
          (map['maintenanceSchedule'] as Map).cast<String, dynamic>()),
      maintenanceWindow: MaintenanceWindowResponse5.fromMap(
          (map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      oauthConfig: OAuthConfigResponse.fromMap(
          (map['oauthConfig'] as Map).cast<String, dynamic>()),
      platformEdition: map['platformEdition'] as String,
      privateIpEnabled: map['privateIpEnabled'] as bool,
      publicIpEnabled: map['publicIpEnabled'] as bool,
      reservedRange: map['reservedRange'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      userMetadata: UserMetadataResponse.fromMap(
          (map['userMetadata'] as Map).cast<String, dynamic>()),
    );
  }
}
