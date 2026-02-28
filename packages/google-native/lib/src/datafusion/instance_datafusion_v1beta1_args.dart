// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_config_datafusion_v1beta1.dart';
import 'event_publish_config_datafusion_v1beta1.dart';
import 'instance_type_datafusion_v1beta1.dart';
import 'network_config_datafusion_v1beta1.dart';

/// {@template pulumi_datafusion_v1beta1_instance_datafusion_v1beta1_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_datafusion_v1beta1_instance_datafusion_v1beta1_args_doc}
class InstanceDatafusionV1beta1Args {
  /// The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature.
  final pulumi.Input<CryptoKeyConfigDatafusionV1beta1>? cryptoKeyConfig;
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
  /// Option to enable zone separation.
  final pulumi.Input<bool>? enableZoneSeparation;
  /// Option to enable and pass metadata for event publishing.
  final pulumi.Input<EventPublishConfigDatafusionV1beta1>? eventPublishConfig;
  /// Required. The name of the instance to create.
  final pulumi.Input<String> instanceId;
  /// The resource labels for instance to use to annotate any related underlying resources such as Compute Engine VMs. The character '=' is not allowed to be used within the labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Network configuration options. These are required when a private Data Fusion instance is to be created.
  final pulumi.Input<NetworkConfigDatafusionV1beta1>? networkConfig;
  /// Map of additional options used to configure the behavior of Data Fusion instance.
  final pulumi.Input<Map<String, String>>? options;
  /// Optional. Current patch revision of the Data Fusion.
  final pulumi.Input<String>? patchRevision;
  /// Specifies whether the Data Fusion instance should be private. If set to true, all Data Fusion nodes will have private IP addresses and will not be able to access the public internet.
  final pulumi.Input<bool>? privateInstance;
  final pulumi.Input<String>? project;
  /// Instance type.
  final pulumi.Input<InstanceTypeDatafusionV1beta1> type;
  /// Current version of Data Fusion.
  final pulumi.Input<String>? version;
  /// Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceDatafusionV1beta1Args].
  /// [cryptoKeyConfig] The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature.
  /// [dataprocServiceAccount] User-managed service account to set on Dataproc when Cloud Data Fusion creates Dataproc to run data processing pipelines. This allows users to have fine-grained access control on Dataproc's accesses to cloud resources.
  /// [description] A description of this instance.
  /// [displayName] Display name for an instance.
  /// [enableRbac] Option to enable granular role-based access control.
  /// [enableStackdriverLogging] Option to enable Stackdriver Logging.
  /// [enableStackdriverMonitoring] Option to enable Stackdriver Monitoring.
  /// [enableZoneSeparation] Option to enable zone separation.
  /// [eventPublishConfig] Option to enable and pass metadata for event publishing.
  /// [instanceId] Required. The name of the instance to create.
  /// [labels] The resource labels for instance to use to annotate any related underlying resources such as Compute Engine VMs. The character '=' is not allowed to be used within the labels.
  /// [location] Optional.
  /// [networkConfig] Network configuration options. These are required when a private Data Fusion instance is to be created.
  /// [options] Map of additional options used to configure the behavior of Data Fusion instance.
  /// [patchRevision] Optional. Current patch revision of the Data Fusion.
  /// [privateInstance] Specifies whether the Data Fusion instance should be private. If set to true, all Data Fusion nodes will have private IP addresses and will not be able to access the public internet.
  /// [project] Optional.
  /// [type] Instance type.
  /// [version] Current version of Data Fusion.
  /// [zone] Name of the zone in which the Data Fusion instance will be created. Only DEVELOPER instances use this field.
  InstanceDatafusionV1beta1Args({
    CryptoKeyConfigDatafusionV1beta1? cryptoKeyConfig,
    String? dataprocServiceAccount,
    String? description,
    String? displayName,
    bool? enableRbac,
    bool? enableStackdriverLogging,
    bool? enableStackdriverMonitoring,
    bool? enableZoneSeparation,
    EventPublishConfigDatafusionV1beta1? eventPublishConfig,
    required String instanceId,
    Map<String, String>? labels,
    String? location,
    NetworkConfigDatafusionV1beta1? networkConfig,
    Map<String, String>? options,
    String? patchRevision,
    bool? privateInstance,
    String? project,
    required InstanceTypeDatafusionV1beta1 type,
    String? version,
    String? zone,
  }) :
      cryptoKeyConfig = pulumi.Input.asOptionalInput<CryptoKeyConfigDatafusionV1beta1>(cryptoKeyConfig),
      dataprocServiceAccount = pulumi.Input.asOptionalInput<String>(dataprocServiceAccount),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enableRbac = pulumi.Input.asOptionalInput<bool>(enableRbac),
      enableStackdriverLogging = pulumi.Input.asOptionalInput<bool>(enableStackdriverLogging),
      enableStackdriverMonitoring = pulumi.Input.asOptionalInput<bool>(enableStackdriverMonitoring),
      enableZoneSeparation = pulumi.Input.asOptionalInput<bool>(enableZoneSeparation),
      eventPublishConfig = pulumi.Input.asOptionalInput<EventPublishConfigDatafusionV1beta1>(eventPublishConfig),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkConfig = pulumi.Input.asOptionalInput<NetworkConfigDatafusionV1beta1>(networkConfig),
      options = pulumi.Input.asOptionalInput<Map<String, String>>(options),
      patchRevision = pulumi.Input.asOptionalInput<String>(patchRevision),
      privateInstance = pulumi.Input.asOptionalInput<bool>(privateInstance),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asInput<InstanceTypeDatafusionV1beta1>(type),
      version = pulumi.Input.asOptionalInput<String>(version),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyConfig': ?pulumi.Input.mapOptionalInputValue<CryptoKeyConfigDatafusionV1beta1, Map<String, dynamic>>(cryptoKeyConfig, (value) => value.toMap()),
      'dataprocServiceAccount': ?dataprocServiceAccount,
      'description': ?description,
      'displayName': ?displayName,
      'enableRbac': ?enableRbac,
      'enableStackdriverLogging': ?enableStackdriverLogging,
      'enableStackdriverMonitoring': ?enableStackdriverMonitoring,
      'enableZoneSeparation': ?enableZoneSeparation,
      'eventPublishConfig': ?pulumi.Input.mapOptionalInputValue<EventPublishConfigDatafusionV1beta1, Map<String, dynamic>>(eventPublishConfig, (value) => value.toMap()),
      'instanceId': instanceId,
      'labels': ?labels,
      'location': ?location,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<NetworkConfigDatafusionV1beta1, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'options': ?options,
      'patchRevision': ?patchRevision,
      'privateInstance': ?privateInstance,
      'project': ?project,
      'type': pulumi.Input.mapInputValue<InstanceTypeDatafusionV1beta1, String>(type, (value) => value.value),
      'version': ?version,
      'zone': ?zone,
    };
  }

  factory InstanceDatafusionV1beta1Args.fromMap(Map<String, dynamic> map) {
    return InstanceDatafusionV1beta1Args(
      cryptoKeyConfig: map['cryptoKeyConfig'] == null ? null : CryptoKeyConfigDatafusionV1beta1.fromMap((map['cryptoKeyConfig'] as Map).cast<String, dynamic>()),
      dataprocServiceAccount: map['dataprocServiceAccount'] == null ? null : map['dataprocServiceAccount'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      enableRbac: map['enableRbac'] == null ? null : map['enableRbac'] as bool,
      enableStackdriverLogging: map['enableStackdriverLogging'] == null ? null : map['enableStackdriverLogging'] as bool,
      enableStackdriverMonitoring: map['enableStackdriverMonitoring'] == null ? null : map['enableStackdriverMonitoring'] as bool,
      enableZoneSeparation: map['enableZoneSeparation'] == null ? null : map['enableZoneSeparation'] as bool,
      eventPublishConfig: map['eventPublishConfig'] == null ? null : EventPublishConfigDatafusionV1beta1.fromMap((map['eventPublishConfig'] as Map).cast<String, dynamic>()),
      instanceId: map['instanceId'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      networkConfig: map['networkConfig'] == null ? null : NetworkConfigDatafusionV1beta1.fromMap((map['networkConfig'] as Map).cast<String, dynamic>()),
      options: map['options'] == null ? null : (map['options'] as Map).cast<String, String>(),
      patchRevision: map['patchRevision'] == null ? null : map['patchRevision'] as String,
      privateInstance: map['privateInstance'] == null ? null : map['privateInstance'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
      type: InstanceTypeDatafusionV1beta1.fromValue(map['type'] as String),
      version: map['version'] == null ? null : map['version'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

