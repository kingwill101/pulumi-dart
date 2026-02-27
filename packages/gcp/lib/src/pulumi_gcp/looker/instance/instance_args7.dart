// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_admin_settings/instance_admin_settings.dart';
import '../instance_controlled_egress_config/instance_controlled_egress_config.dart';
import '../instance_custom_domain/instance_custom_domain.dart';
import '../instance_deny_maintenance_period/instance_deny_maintenance_period.dart';
import '../instance_encryption_config/instance_encryption_config.dart';
import '../instance_maintenance_window/instance_maintenance_window.dart';
import '../instance_oauth_config/instance_oauth_config.dart';
import '../instance_periodic_export_config/instance_periodic_export_config.dart';
import '../instance_psc_config/instance_psc_config.dart';
import '../instance_user_metadata/instance_user_metadata.dart';

/// The set of arguments for Instance.
class InstanceArgs7 {
  /// Looker instance Admin settings.
  /// Structure is documented below.
  final Input<InstanceAdminSettings>? adminSettings;

  /// Network name in the consumer project in the format of: projects/{project}/global/networks/{network}
  /// Note that the consumer network may be in a different GCP project than the consumer
  /// project that is hosting the Looker Instance.
  final Input<String>? consumerNetwork;

  /// Controlled egress configuration.
  /// Structure is documented below.
  final Input<InstanceControlledEgressConfig>? controlledEgressConfig;

  /// Whether controlled egress is enabled on the Looker instance.
  final Input<bool>? controlledEgressEnabled;

  /// Custom domain settings for a Looker instance.
  /// Structure is documented below.
  final Input<InstanceCustomDomain>? customDomain;

  /// Policy to determine if the cluster should be deleted forcefully.
  /// If setting deletion_policy = "FORCE", the Looker instance will be deleted regardless
  /// of its nested resources. If set to "DEFAULT", Looker instances that still have
  /// nested resources will return an error. Possible values: DEFAULT, FORCE
  final Input<String>? deletionPolicy;

  /// Maintenance denial period for this instance.
  /// You must allow at least 14 days of maintenance availability
  /// between any two deny maintenance periods.
  /// Structure is documented below.
  final Input<InstanceDenyMaintenancePeriod>? denyMaintenancePeriod;

  /// Looker instance encryption settings.
  /// Structure is documented below.
  final Input<InstanceEncryptionConfig>? encryptionConfig;

  /// FIPS 140-2 Encryption enablement for Looker (Google Cloud Core).
  final Input<bool>? fipsEnabled;

  /// Gemini enablement for Looker (Google Cloud Core).
  final Input<bool>? geminiEnabled;

  /// Maintenance window for an instance.
  /// Maintenance of your instance takes place once a month, and will require
  /// your instance to be restarted during updates, which will temporarily
  /// disrupt service.
  /// Structure is documented below.
  final Input<InstanceMaintenanceWindow>? maintenanceWindow;

  /// The ID of the instance or a fully qualified identifier for the instance.
  final Input<String>? name;

  /// Looker Instance OAuth login settings.
  /// Structure is documented below.
  final Input<InstanceOauthConfig> oauthConfig;

  /// Configuration for periodic export.
  /// Structure is documented below.
  final Input<InstancePeriodicExportConfig>? periodicExportConfig;

  /// Platform editions for a Looker instance. Each edition maps to a set of instance features, like its size. Must be one of these values:
  /// - LOOKER_CORE_TRIAL: trial instance (Currently Unavailable)
  /// - LOOKER_CORE_STANDARD: pay as you go standard instance (Currently Unavailable)
  /// - LOOKER_CORE_STANDARD_ANNUAL: subscription standard instance
  /// - LOOKER_CORE_ENTERPRISE_ANNUAL: subscription enterprise instance
  /// - LOOKER_CORE_EMBED_ANNUAL: subscription embed instance
  /// - LOOKER_CORE_NONPROD_STANDARD_ANNUAL: nonprod subscription standard instance
  /// - LOOKER_CORE_NONPROD_ENTERPRISE_ANNUAL: nonprod subscription enterprise instance
  /// - LOOKER_CORE_NONPROD_EMBED_ANNUAL: nonprod subscription embed instance
  /// - LOOKER_CORE_TRIAL_STANDARD: A standard trial edition of Looker (Google Cloud core) product.
  /// - LOOKER_CORE_TRIAL_ENTERPRISE: An enterprise trial edition of Looker (Google Cloud core) product.
  /// - LOOKER_CORE_TRIAL_EMBED: An embed trial edition of Looker (Google Cloud core) product.
  /// Default value is `LOOKER_CORE_TRIAL`.
  /// Possible values are: `LOOKER_CORE_TRIAL`, `LOOKER_CORE_STANDARD`, `LOOKER_CORE_STANDARD_ANNUAL`, `LOOKER_CORE_ENTERPRISE_ANNUAL`, `LOOKER_CORE_EMBED_ANNUAL`, `LOOKER_CORE_NONPROD_STANDARD_ANNUAL`, `LOOKER_CORE_NONPROD_ENTERPRISE_ANNUAL`, `LOOKER_CORE_NONPROD_EMBED_ANNUAL`, `LOOKER_CORE_TRIAL_STANDARD`, `LOOKER_CORE_TRIAL_ENTERPRISE`, `LOOKER_CORE_TRIAL_EMBED`.
  final Input<String>? platformEdition;

  /// Whether private IP is enabled on the Looker instance.
  final Input<bool>? privateIpEnabled;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Information for Private Service Connect (PSC) setup for a Looker instance.
  /// Structure is documented below.
  final Input<InstancePscConfig>? pscConfig;

  /// Whether Public Service Connect (PSC) is enabled on the Looker instance
  final Input<bool>? pscEnabled;

  /// Whether public IP is enabled on the Looker instance.
  final Input<bool>? publicIpEnabled;

  /// The name of the Looker region of the instance.
  final Input<String>? region;

  /// Name of a reserved IP address range within the consumer network, to be used for
  /// private service access connection. User may or may not specify this in a request.
  final Input<String>? reservedRange;

  /// Metadata about users for a Looker instance.
  /// These settings are only available when platform edition LOOKER_CORE_STANDARD is set.
  /// There are ten Standard and two Developer users included in the cost of the product.
  /// You can allocate additional Standard, Viewer, and Developer users for this instance.
  /// It is an optional step and can be modified later.
  /// With the Standard edition of Looker (Google Cloud core), you can provision up to 50
  /// total users, distributed across Viewer, Standard, and Developer.
  /// Structure is documented below.
  final Input<InstanceUserMetadata>? userMetadata;

  InstanceArgs7({
    this.adminSettings,
    this.consumerNetwork,
    this.controlledEgressConfig,
    this.controlledEgressEnabled,
    this.customDomain,
    this.deletionPolicy,
    this.denyMaintenancePeriod,
    this.encryptionConfig,
    this.fipsEnabled,
    this.geminiEnabled,
    this.maintenanceWindow,
    this.name,
    required this.oauthConfig,
    this.periodicExportConfig,
    this.platformEdition,
    this.privateIpEnabled,
    this.project,
    this.pscConfig,
    this.pscEnabled,
    this.publicIpEnabled,
    this.region,
    this.reservedRange,
    this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminSettingsValue = adminSettings;
    if (adminSettingsValue != null) {
      map['adminSettings'] = Input.mapOptionalInputValue<InstanceAdminSettings,
          Map<String, dynamic>>(adminSettingsValue, (value) => value.toMap());
    }
    final consumerNetworkValue = consumerNetwork;
    if (consumerNetworkValue != null) {
      map['consumerNetwork'] = consumerNetworkValue;
    }
    final controlledEgressConfigValue = controlledEgressConfig;
    if (controlledEgressConfigValue != null) {
      map['controlledEgressConfig'] = Input.mapOptionalInputValue<
              InstanceControlledEgressConfig, Map<String, dynamic>>(
          controlledEgressConfigValue, (value) => value.toMap());
    }
    final controlledEgressEnabledValue = controlledEgressEnabled;
    if (controlledEgressEnabledValue != null) {
      map['controlledEgressEnabled'] = controlledEgressEnabledValue;
    }
    final customDomainValue = customDomain;
    if (customDomainValue != null) {
      map['customDomain'] = Input.mapOptionalInputValue<InstanceCustomDomain,
          Map<String, dynamic>>(customDomainValue, (value) => value.toMap());
    }
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    final denyMaintenancePeriodValue = denyMaintenancePeriod;
    if (denyMaintenancePeriodValue != null) {
      map['denyMaintenancePeriod'] = Input.mapOptionalInputValue<
              InstanceDenyMaintenancePeriod, Map<String, dynamic>>(
          denyMaintenancePeriodValue, (value) => value.toMap());
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = Input.mapOptionalInputValue<
              InstanceEncryptionConfig, Map<String, dynamic>>(
          encryptionConfigValue, (value) => value.toMap());
    }
    final fipsEnabledValue = fipsEnabled;
    if (fipsEnabledValue != null) {
      map['fipsEnabled'] = fipsEnabledValue;
    }
    final geminiEnabledValue = geminiEnabled;
    if (geminiEnabledValue != null) {
      map['geminiEnabled'] = geminiEnabledValue;
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = Input.mapOptionalInputValue<
              InstanceMaintenanceWindow, Map<String, dynamic>>(
          maintenanceWindowValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['oauthConfig'] =
        Input.mapInputValue<InstanceOauthConfig, Map<String, dynamic>>(
            oauthConfig, (value) => value.toMap());
    final periodicExportConfigValue = periodicExportConfig;
    if (periodicExportConfigValue != null) {
      map['periodicExportConfig'] = Input.mapOptionalInputValue<
              InstancePeriodicExportConfig, Map<String, dynamic>>(
          periodicExportConfigValue, (value) => value.toMap());
    }
    final platformEditionValue = platformEdition;
    if (platformEditionValue != null) {
      map['platformEdition'] = platformEditionValue;
    }
    final privateIpEnabledValue = privateIpEnabled;
    if (privateIpEnabledValue != null) {
      map['privateIpEnabled'] = privateIpEnabledValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pscConfigValue = pscConfig;
    if (pscConfigValue != null) {
      map['pscConfig'] =
          Input.mapOptionalInputValue<InstancePscConfig, Map<String, dynamic>>(
              pscConfigValue, (value) => value.toMap());
    }
    final pscEnabledValue = pscEnabled;
    if (pscEnabledValue != null) {
      map['pscEnabled'] = pscEnabledValue;
    }
    final publicIpEnabledValue = publicIpEnabled;
    if (publicIpEnabledValue != null) {
      map['publicIpEnabled'] = publicIpEnabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final reservedRangeValue = reservedRange;
    if (reservedRangeValue != null) {
      map['reservedRange'] = reservedRangeValue;
    }
    final userMetadataValue = userMetadata;
    if (userMetadataValue != null) {
      map['userMetadata'] = Input.mapOptionalInputValue<InstanceUserMetadata,
          Map<String, dynamic>>(userMetadataValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceArgs7.fromMap(Map<String, dynamic> map) {
    return InstanceArgs7(
      adminSettings:
          Input.asOptionalInput<InstanceAdminSettings>(map['adminSettings']),
      consumerNetwork: Input.asOptionalInput<String>(map['consumerNetwork']),
      controlledEgressConfig:
          Input.asOptionalInput<InstanceControlledEgressConfig>(
              map['controlledEgressConfig']),
      controlledEgressEnabled:
          Input.asOptionalInput<bool>(map['controlledEgressEnabled']),
      customDomain:
          Input.asOptionalInput<InstanceCustomDomain>(map['customDomain']),
      deletionPolicy: Input.asOptionalInput<String>(map['deletionPolicy']),
      denyMaintenancePeriod:
          Input.asOptionalInput<InstanceDenyMaintenancePeriod>(
              map['denyMaintenancePeriod']),
      encryptionConfig: Input.asOptionalInput<InstanceEncryptionConfig>(
          map['encryptionConfig']),
      fipsEnabled: Input.asOptionalInput<bool>(map['fipsEnabled']),
      geminiEnabled: Input.asOptionalInput<bool>(map['geminiEnabled']),
      maintenanceWindow: Input.asOptionalInput<InstanceMaintenanceWindow>(
          map['maintenanceWindow']),
      name: Input.asOptionalInput<String>(map['name']),
      oauthConfig: Input.asInput<InstanceOauthConfig>(map['oauthConfig']),
      periodicExportConfig: Input.asOptionalInput<InstancePeriodicExportConfig>(
          map['periodicExportConfig']),
      platformEdition: Input.asOptionalInput<String>(map['platformEdition']),
      privateIpEnabled: Input.asOptionalInput<bool>(map['privateIpEnabled']),
      project: Input.asOptionalInput<String>(map['project']),
      pscConfig: Input.asOptionalInput<InstancePscConfig>(map['pscConfig']),
      pscEnabled: Input.asOptionalInput<bool>(map['pscEnabled']),
      publicIpEnabled: Input.asOptionalInput<bool>(map['publicIpEnabled']),
      region: Input.asOptionalInput<String>(map['region']),
      reservedRange: Input.asOptionalInput<String>(map['reservedRange']),
      userMetadata:
          Input.asOptionalInput<InstanceUserMetadata>(map['userMetadata']),
    );
  }
}
