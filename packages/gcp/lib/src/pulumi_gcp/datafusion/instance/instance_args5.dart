// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_accelerator/instance_accelerator.dart';
import '../instance_crypto_key_config/instance_crypto_key_config.dart';
import '../instance_event_publish_config/instance_event_publish_config.dart';
import '../instance_network_config/instance_network_config2.dart';

/// The set of arguments for Instance.
class InstanceArgs5 {
  /// List of accelerators enabled for this CDF instance.
  /// If accelerators are enabled it is possible a permadiff will be created with the Options field.
  /// Users will need to either manually update their state file to include these diffed options, or include the field in a lifecycle ignore changes block.
  /// Structure is documented below.
  final Input<List<InstanceAccelerator>>? accelerators;

  /// The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature.
  /// Structure is documented below.
  final Input<InstanceCryptoKeyConfig>? cryptoKeyConfig;

  /// User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines.
  final Input<String>? dataprocServiceAccount;

  /// An optional description of the instance.
  final Input<String>? description;

  /// Display name for an instance.
  final Input<String>? displayName;

  /// Option to enable granular role-based access control.
  final Input<bool>? enableRbac;

  /// Option to enable Stackdriver Logging.
  final Input<bool>? enableStackdriverLogging;

  /// Option to enable Stackdriver Monitoring.
  final Input<bool>? enableStackdriverMonitoring;

  /// Option to enable and pass metadata for event publishing.
  /// Structure is documented below.
  final Input<InstanceEventPublishConfig>? eventPublishConfig;

  /// The resource labels for instance to use to annotate any related underlying resources,
  /// such as Compute Engine VMs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The ID of the instance or a fully qualified identifier for the instance.
  final Input<String>? name;

  /// Network configuration options. These are required when a private Data Fusion instance is to be created.
  /// Structure is documented below.
  final Input<InstanceNetworkConfig2>? networkConfig;

  /// Map of additional options used to configure the behavior of Data Fusion instance.
  final Input<Map<String, String>>? options;

  /// Specifies whether the Data Fusion instance should be private. If set to
  /// true, all Data Fusion nodes will have private IP addresses and will not be
  /// able to access the public internet.
  final Input<bool>? privateInstance;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region of the Data Fusion instance.
  final Input<String>? region;

  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  /// The field is ignored (both PUT & PATCH) when empty.
  final Input<Map<String, String>>? tags;

  /// Represents the type of Data Fusion instance. Each type is configured with
  /// the default settings for processing and memory.
  /// - BASIC: Basic Data Fusion instance. In Basic type, the user will be able to create data pipelines
  /// using point and click UI. However, there are certain limitations, such as fewer number
  /// of concurrent pipelines, no support for streaming pipelines, etc.
  /// - ENTERPRISE: Enterprise Data Fusion instance. In Enterprise type, the user will have more features
  /// available, such as support for streaming pipelines, higher number of concurrent pipelines, etc.
  /// - DEVELOPER: Developer Data Fusion instance. In Developer type, the user will have all features available but
  /// with restrictive capabilities. This is to help enterprises design and develop their data ingestion and integration
  /// pipelines at low cost.
  /// Possible values are: `BASIC`, `ENTERPRISE`, `DEVELOPER`.
  final Input<String> type;

  /// Current version of the Data Fusion.
  final Input<String>? version;

  /// Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field.
  final Input<String>? zone;

  InstanceArgs5({
    this.accelerators,
    this.cryptoKeyConfig,
    this.dataprocServiceAccount,
    this.description,
    this.displayName,
    this.enableRbac,
    this.enableStackdriverLogging,
    this.enableStackdriverMonitoring,
    this.eventPublishConfig,
    this.labels,
    this.name,
    this.networkConfig,
    this.options,
    this.privateInstance,
    this.project,
    this.region,
    this.tags,
    required this.type,
    this.version,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorsValue = accelerators;
    if (acceleratorsValue != null) {
      map['accelerators'] = Input.mapOptionalInputValue<
              List<InstanceAccelerator>, List<Map<String, dynamic>>>(
          acceleratorsValue,
          (value) =>
              Input.encodeList<InstanceAccelerator, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final cryptoKeyConfigValue = cryptoKeyConfig;
    if (cryptoKeyConfigValue != null) {
      map['cryptoKeyConfig'] = Input.mapOptionalInputValue<
          InstanceCryptoKeyConfig,
          Map<String, dynamic>>(cryptoKeyConfigValue, (value) => value.toMap());
    }
    final dataprocServiceAccountValue = dataprocServiceAccount;
    if (dataprocServiceAccountValue != null) {
      map['dataprocServiceAccount'] = dataprocServiceAccountValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final enableRbacValue = enableRbac;
    if (enableRbacValue != null) {
      map['enableRbac'] = enableRbacValue;
    }
    final enableStackdriverLoggingValue = enableStackdriverLogging;
    if (enableStackdriverLoggingValue != null) {
      map['enableStackdriverLogging'] = enableStackdriverLoggingValue;
    }
    final enableStackdriverMonitoringValue = enableStackdriverMonitoring;
    if (enableStackdriverMonitoringValue != null) {
      map['enableStackdriverMonitoring'] = enableStackdriverMonitoringValue;
    }
    final eventPublishConfigValue = eventPublishConfig;
    if (eventPublishConfigValue != null) {
      map['eventPublishConfig'] = Input.mapOptionalInputValue<
              InstanceEventPublishConfig, Map<String, dynamic>>(
          eventPublishConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = Input.mapOptionalInputValue<InstanceNetworkConfig2,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = optionsValue;
    }
    final privateInstanceValue = privateInstance;
    if (privateInstanceValue != null) {
      map['privateInstance'] = privateInstanceValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceArgs5.fromMap(Map<String, dynamic> map) {
    return InstanceArgs5(
      accelerators:
          Input.asOptionalInput<List<InstanceAccelerator>>(map['accelerators']),
      cryptoKeyConfig: Input.asOptionalInput<InstanceCryptoKeyConfig>(
          map['cryptoKeyConfig']),
      dataprocServiceAccount:
          Input.asOptionalInput<String>(map['dataprocServiceAccount']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      enableRbac: Input.asOptionalInput<bool>(map['enableRbac']),
      enableStackdriverLogging:
          Input.asOptionalInput<bool>(map['enableStackdriverLogging']),
      enableStackdriverMonitoring:
          Input.asOptionalInput<bool>(map['enableStackdriverMonitoring']),
      eventPublishConfig: Input.asOptionalInput<InstanceEventPublishConfig>(
          map['eventPublishConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      networkConfig:
          Input.asOptionalInput<InstanceNetworkConfig2>(map['networkConfig']),
      options: Input.asOptionalInput<Map<String, String>>(map['options']),
      privateInstance: Input.asOptionalInput<bool>(map['privateInstance']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asInput<String>(map['type']),
      version: Input.asOptionalInput<String>(map['version']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
