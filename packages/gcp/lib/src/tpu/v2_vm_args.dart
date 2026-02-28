// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_vm_accelerator_config.dart';
import 'v2_vm_data_disk.dart';
import 'v2_vm_network_config.dart';
import 'v2_vm_scheduling_config.dart';
import 'v2_vm_service_account.dart';
import 'v2_vm_shielded_instance_config.dart';

/// {@template pulumi_tpu_v2_vm_v2_vm_args_doc}
/// The set of arguments for V2Vm.
/// {@endtemplate}
/// {@macro pulumi_tpu_v2_vm_v2_vm_args_doc}
class V2VmArgs {
  /// The AccleratorConfig for the TPU Node. `accelerator_config` cannot be used at the same time
  /// as `accelerator_type`. If neither is specified, `accelerator_type` defaults to 'v2-8'.
  /// Structure is documented below.
  final pulumi.Input<V2VmAcceleratorConfig>? acceleratorConfig;

  /// TPU accelerator type for the TPU. `accelerator_type` cannot be used at the same time as
  /// `accelerator_config`. If neither is specified, `accelerator_type` defaults to 'v2-8'.
  final pulumi.Input<String>? acceleratorType;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must
  /// be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger
  /// block would be wasteful (a node can only consume one IP address). Errors will occur if the
  /// CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts
  /// with any subnetworks in the user's provided network, or the provided network is peered with
  /// another network that is using that CIDR block.
  final pulumi.Input<String>? cidrBlock;

  /// The additional data disks for the Node.
  /// Structure is documented below.
  final pulumi.Input<List<V2VmDataDisk>>? dataDisks;

  /// Text description of the TPU.
  final pulumi.Input<String>? description;

  /// Resource labels to represent user-provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script.
  final pulumi.Input<Map<String, String>>? metadata;

  /// The immutable name of the TPU.
  final pulumi.Input<String>? name;

  /// Network configurations for the TPU node.
  /// Structure is documented below.
  final pulumi.Input<V2VmNetworkConfig>? networkConfig;

  /// Repeated network configurations for the TPU node. This field is used to specify multiple
  /// network configs for the TPU node.
  /// Structure is documented below.
  final pulumi.Input<List<V2VmNetworkConfig>>? networkConfigs;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Runtime version for the TPU.
  final pulumi.Input<String> runtimeVersion;

  /// The scheduling options for this node.
  /// Structure is documented below.
  final pulumi.Input<V2VmSchedulingConfig>? schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is
  /// specified, the default compute service account will be used.
  /// Structure is documented below.
  final pulumi.Input<V2VmServiceAccount>? serviceAccount;

  /// Shielded Instance options.
  /// Structure is documented below.
  final pulumi.Input<V2VmShieldedInstanceConfig>? shieldedInstanceConfig;

  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final pulumi.Input<List<String>>? tags;

  /// The GCP location for the TPU. If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [V2VmArgs].
  /// [acceleratorConfig] The AccleratorConfig for the TPU Node. `accelerator_config` cannot be used at the same time
  /// [acceleratorType] TPU accelerator type for the TPU. `accelerator_type` cannot be used at the same time as
  /// [cidrBlock] The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must
  /// [dataDisks] The additional data disks for the Node.
  /// [description] Text description of the TPU.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [metadata] Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script.
  /// [name] The immutable name of the TPU.
  /// [networkConfig] Network configurations for the TPU node.
  /// [networkConfigs] Repeated network configurations for the TPU node. This field is used to specify multiple
  /// [project] The ID of the project in which the resource belongs.
  /// [runtimeVersion] Runtime version for the TPU.
  /// [schedulingConfig] The scheduling options for this node.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is
  /// [shieldedInstanceConfig] Shielded Instance options.
  /// [tags] Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  /// [zone] The GCP location for the TPU. If it is not provided, the provider zone is used.
  V2VmArgs({
    V2VmAcceleratorConfig? acceleratorConfig,
    String? acceleratorType,
    String? cidrBlock,
    List<V2VmDataDisk>? dataDisks,
    String? description,
    Map<String, String>? labels,
    Map<String, String>? metadata,
    String? name,
    V2VmNetworkConfig? networkConfig,
    List<V2VmNetworkConfig>? networkConfigs,
    String? project,
    required String runtimeVersion,
    V2VmSchedulingConfig? schedulingConfig,
    V2VmServiceAccount? serviceAccount,
    V2VmShieldedInstanceConfig? shieldedInstanceConfig,
    List<String>? tags,
    String? zone,
  })  : acceleratorConfig = pulumi.Input.asOptionalInput<V2VmAcceleratorConfig>(
            acceleratorConfig),
        acceleratorType = pulumi.Input.asOptionalInput<String>(acceleratorType),
        cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
        dataDisks = pulumi.Input.asOptionalInput<List<V2VmDataDisk>>(dataDisks),
        description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
        name = pulumi.Input.asOptionalInput<String>(name),
        networkConfig =
            pulumi.Input.asOptionalInput<V2VmNetworkConfig>(networkConfig),
        networkConfigs = pulumi.Input.asOptionalInput<List<V2VmNetworkConfig>>(
            networkConfigs),
        project = pulumi.Input.asOptionalInput<String>(project),
        runtimeVersion = pulumi.Input.asInput<String>(runtimeVersion),
        schedulingConfig = pulumi.Input.asOptionalInput<V2VmSchedulingConfig>(
            schedulingConfig),
        serviceAccount =
            pulumi.Input.asOptionalInput<V2VmServiceAccount>(serviceAccount),
        shieldedInstanceConfig =
            pulumi.Input.asOptionalInput<V2VmShieldedInstanceConfig>(
                shieldedInstanceConfig),
        tags = pulumi.Input.asOptionalInput<List<String>>(tags),
        zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorConfigValue = acceleratorConfig;
    if (acceleratorConfigValue != null) {
      map['acceleratorConfig'] = pulumi.Input.mapOptionalInputValue<
              V2VmAcceleratorConfig, Map<String, dynamic>>(
          acceleratorConfigValue, (value) => value.toMap());
    }
    final acceleratorTypeValue = acceleratorType;
    if (acceleratorTypeValue != null) {
      map['acceleratorType'] = acceleratorTypeValue;
    }
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final dataDisksValue = dataDisks;
    if (dataDisksValue != null) {
      map['dataDisks'] = pulumi.Input.mapOptionalInputValue<List<V2VmDataDisk>,
              List<Map<String, dynamic>>>(
          dataDisksValue,
          (value) =>
              pulumi.Input.encodeList<V2VmDataDisk, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          V2VmNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final networkConfigsValue = networkConfigs;
    if (networkConfigsValue != null) {
      map['networkConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<V2VmNetworkConfig>, List<Map<String, dynamic>>>(
          networkConfigsValue,
          (value) =>
              pulumi.Input.encodeList<V2VmNetworkConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['runtimeVersion'] = runtimeVersion;
    final schedulingConfigValue = schedulingConfig;
    if (schedulingConfigValue != null) {
      map['schedulingConfig'] = pulumi.Input.mapOptionalInputValue<
              V2VmSchedulingConfig, Map<String, dynamic>>(
          schedulingConfigValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = pulumi.Input.mapOptionalInputValue<
          V2VmServiceAccount,
          Map<String, dynamic>>(serviceAccountValue, (value) => value.toMap());
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = pulumi.Input.mapOptionalInputValue<
              V2VmShieldedInstanceConfig, Map<String, dynamic>>(
          shieldedInstanceConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory V2VmArgs.fromMap(Map<String, dynamic> map) {
    return V2VmArgs(
      acceleratorConfig: map['acceleratorConfig'] == null
          ? null
          : V2VmAcceleratorConfig.fromMap(
              (map['acceleratorConfig'] as Map).cast<String, dynamic>()),
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
      cidrBlock: map['cidrBlock'] == null ? null : map['cidrBlock'] as String,
      dataDisks: map['dataDisks'] == null
          ? null
          : pulumi.Input.decodeList<V2VmDataDisk>(
              map['dataDisks'],
              (value) =>
                  V2VmDataDisk.fromMap((value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      networkConfig: map['networkConfig'] == null
          ? null
          : V2VmNetworkConfig.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>()),
      networkConfigs: map['networkConfigs'] == null
          ? null
          : pulumi.Input.decodeList<V2VmNetworkConfig>(
              map['networkConfigs'],
              (value) => V2VmNetworkConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      runtimeVersion: map['runtimeVersion'] as String,
      schedulingConfig: map['schedulingConfig'] == null
          ? null
          : V2VmSchedulingConfig.fromMap(
              (map['schedulingConfig'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : V2VmServiceAccount.fromMap(
              (map['serviceAccount'] as Map).cast<String, dynamic>()),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : V2VmShieldedInstanceConfig.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
