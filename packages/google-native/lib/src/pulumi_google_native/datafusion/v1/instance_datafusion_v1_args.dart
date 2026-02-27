// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_config.dart';
import 'event_publish_config.dart';
import 'instance_type_datafusion_v1.dart';
import 'network_config_datafusion_v1.dart';

/// The set of arguments for Instance.
class InstanceDatafusionV1Args {
  /// The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature.
  final pulumi.Input<CryptoKeyConfig>? cryptoKeyConfig;

  /// User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines. This allows users to have fine-grained access control on Dataproc's accesses to cloud resources.
  final pulumi.Input<String>? dataprocServiceAccount;

  /// A description of this instance.
  final pulumi.Input<String>? description;

  /// Display name for an instance.
  final pulumi.Input<String>? displayName;

  /// Option to enable granular role-based access control.
  final pulumi.Input<bool>? enableRbac;

  /// Option to enable Stackdriver Logging.
  final pulumi.Input<bool>? enableStackdriverLogging;

  /// Option to enable Stackdriver Monitoring.
  final pulumi.Input<bool>? enableStackdriverMonitoring;

  /// Option to enable granular zone separation.
  final pulumi.Input<bool>? enableZoneSeparation;

  /// Option to enable and pass metadata for event publishing.
  final pulumi.Input<EventPublishConfig>? eventPublishConfig;

  /// Required. The name of the instance to create.
  final pulumi.Input<String> instanceId;

  /// The resource labels for instance to use to annotate any related underlying resources such as Compute Engine VMs. The character '=' is not allowed to be used within the labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Network configuration options. These are required when a private Data Fusion instance is to be created.
  final pulumi.Input<NetworkConfigDatafusionV1>? networkConfig;

  /// Map of additional options used to configure the behavior of Data Fusion instance.
  final pulumi.Input<Map<String, String>>? options;

  /// Optional. Current patch revision of the Data Fusion.
  final pulumi.Input<String>? patchRevision;

  /// Specifies whether the Data Fusion instance should be private. If set to true, all Data Fusion nodes will have private IP addresses and will not be able to access the public internet.
  final pulumi.Input<bool>? privateInstance;
  final pulumi.Input<String>? project;

  /// Instance type.
  final pulumi.Input<InstanceTypeDatafusionV1> type;

  /// Current version of the Data Fusion. Only specifiable in Update.
  final pulumi.Input<String>? version;

  /// Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field.
  final pulumi.Input<String>? zone;

  InstanceDatafusionV1Args({
    this.cryptoKeyConfig,
    this.dataprocServiceAccount,
    this.description,
    this.displayName,
    this.enableRbac,
    this.enableStackdriverLogging,
    this.enableStackdriverMonitoring,
    this.enableZoneSeparation,
    this.eventPublishConfig,
    required this.instanceId,
    this.labels,
    this.location,
    this.networkConfig,
    this.options,
    this.patchRevision,
    this.privateInstance,
    this.project,
    required this.type,
    this.version,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cryptoKeyConfigValue = cryptoKeyConfig;
    if (cryptoKeyConfigValue != null) {
      map['cryptoKeyConfig'] = pulumi.Input.mapOptionalInputValue<
          CryptoKeyConfig,
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
    final enableZoneSeparationValue = enableZoneSeparation;
    if (enableZoneSeparationValue != null) {
      map['enableZoneSeparation'] = enableZoneSeparationValue;
    }
    final eventPublishConfigValue = eventPublishConfig;
    if (eventPublishConfigValue != null) {
      map['eventPublishConfig'] = pulumi.Input.mapOptionalInputValue<
              EventPublishConfig, Map<String, dynamic>>(
          eventPublishConfigValue, (value) => value.toMap());
    }
    map['instanceId'] = instanceId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          NetworkConfigDatafusionV1,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = optionsValue;
    }
    final patchRevisionValue = patchRevision;
    if (patchRevisionValue != null) {
      map['patchRevision'] = patchRevisionValue;
    }
    final privateInstanceValue = privateInstance;
    if (privateInstanceValue != null) {
      map['privateInstance'] = privateInstanceValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['type'] = pulumi.Input.mapInputValue<InstanceTypeDatafusionV1, String>(
        type, (value) => value.value);
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

  factory InstanceDatafusionV1Args.fromMap(Map<String, dynamic> map) {
    return InstanceDatafusionV1Args(
      cryptoKeyConfig:
          pulumi.Input.asOptionalInput<CryptoKeyConfig>(map['cryptoKeyConfig']),
      dataprocServiceAccount:
          pulumi.Input.asOptionalInput<String>(map['dataprocServiceAccount']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      enableRbac: pulumi.Input.asOptionalInput<bool>(map['enableRbac']),
      enableStackdriverLogging:
          pulumi.Input.asOptionalInput<bool>(map['enableStackdriverLogging']),
      enableStackdriverMonitoring: pulumi.Input.asOptionalInput<bool>(
          map['enableStackdriverMonitoring']),
      enableZoneSeparation:
          pulumi.Input.asOptionalInput<bool>(map['enableZoneSeparation']),
      eventPublishConfig: pulumi.Input.asOptionalInput<EventPublishConfig>(
          map['eventPublishConfig']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      networkConfig: pulumi.Input.asOptionalInput<NetworkConfigDatafusionV1>(
          map['networkConfig']),
      options:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['options']),
      patchRevision: pulumi.Input.asOptionalInput<String>(map['patchRevision']),
      privateInstance:
          pulumi.Input.asOptionalInput<bool>(map['privateInstance']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      type: pulumi.Input.asInput<InstanceTypeDatafusionV1>(map['type']),
      version: pulumi.Input.asOptionalInput<String>(map['version']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
