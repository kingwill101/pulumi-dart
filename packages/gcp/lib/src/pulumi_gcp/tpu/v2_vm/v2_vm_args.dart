// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2_vm_accelerator_config/v2_vm_accelerator_config.dart';
import '../v2_vm_data_disk/v2_vm_data_disk.dart';
import '../v2_vm_network_config/v2_vm_network_config.dart';
import '../v2_vm_scheduling_config/v2_vm_scheduling_config.dart';
import '../v2_vm_service_account/v2_vm_service_account.dart';
import '../v2_vm_shielded_instance_config/v2_vm_shielded_instance_config.dart';

/// The set of arguments for V2Vm.
class V2VmArgs {
  /// The AccleratorConfig for the TPU Node. <span pulumi-lang-nodejs="`acceleratorConfig`" pulumi-lang-dotnet="`AcceleratorConfig`" pulumi-lang-go="`acceleratorConfig`" pulumi-lang-python="`accelerator_config`" pulumi-lang-yaml="`acceleratorConfig`" pulumi-lang-java="`acceleratorConfig`">`accelerator_config`</span> cannot be used at the same time
  /// as <span pulumi-lang-nodejs="`acceleratorType`" pulumi-lang-dotnet="`AcceleratorType`" pulumi-lang-go="`acceleratorType`" pulumi-lang-python="`accelerator_type`" pulumi-lang-yaml="`acceleratorType`" pulumi-lang-java="`acceleratorType`">`accelerator_type`</span>. If neither is specified, <span pulumi-lang-nodejs="`acceleratorType`" pulumi-lang-dotnet="`AcceleratorType`" pulumi-lang-go="`acceleratorType`" pulumi-lang-python="`accelerator_type`" pulumi-lang-yaml="`acceleratorType`" pulumi-lang-java="`acceleratorType`">`accelerator_type`</span> defaults to 'v2-8'.
  /// Structure is documented below.
  final Input<V2VmAcceleratorConfig>? acceleratorConfig;

  /// TPU accelerator type for the TPU. <span pulumi-lang-nodejs="`acceleratorType`" pulumi-lang-dotnet="`AcceleratorType`" pulumi-lang-go="`acceleratorType`" pulumi-lang-python="`accelerator_type`" pulumi-lang-yaml="`acceleratorType`" pulumi-lang-java="`acceleratorType`">`accelerator_type`</span> cannot be used at the same time as
  /// <span pulumi-lang-nodejs="`acceleratorConfig`" pulumi-lang-dotnet="`AcceleratorConfig`" pulumi-lang-go="`acceleratorConfig`" pulumi-lang-python="`accelerator_config`" pulumi-lang-yaml="`acceleratorConfig`" pulumi-lang-java="`acceleratorConfig`">`accelerator_config`</span>. If neither is specified, <span pulumi-lang-nodejs="`acceleratorType`" pulumi-lang-dotnet="`AcceleratorType`" pulumi-lang-go="`acceleratorType`" pulumi-lang-python="`accelerator_type`" pulumi-lang-yaml="`acceleratorType`" pulumi-lang-java="`acceleratorType`">`accelerator_type`</span> defaults to 'v2-8'.
  final Input<String>? acceleratorType;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must
  /// be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger
  /// block would be wasteful (a node can only consume one IP address). Errors will occur if the
  /// CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts
  /// with any subnetworks in the user's provided network, or the provided network is peered with
  /// another network that is using that CIDR block.
  final Input<String>? cidrBlock;

  /// The additional data disks for the Node.
  /// Structure is documented below.
  final Input<List<V2VmDataDisk>>? dataDisks;

  /// Text description of the TPU.
  final Input<String>? description;

  /// Resource labels to represent user-provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script.
  final Input<Map<String, String>>? metadata;

  /// The immutable name of the TPU.
  final Input<String>? name;

  /// Network configurations for the TPU node.
  /// Structure is documented below.
  final Input<V2VmNetworkConfig>? networkConfig;

  /// Repeated network configurations for the TPU node. This field is used to specify multiple
  /// network configs for the TPU node.
  /// Structure is documented below.
  final Input<List<V2VmNetworkConfig>>? networkConfigs;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Runtime version for the TPU.
  final Input<String> runtimeVersion;

  /// The scheduling options for this node.
  /// Structure is documented below.
  final Input<V2VmSchedulingConfig>? schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is
  /// specified, the default compute service account will be used.
  /// Structure is documented below.
  final Input<V2VmServiceAccount>? serviceAccount;

  /// Shielded Instance options.
  /// Structure is documented below.
  final Input<V2VmShieldedInstanceConfig>? shieldedInstanceConfig;

  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final Input<List<String>>? tags;

  /// The GCP location for the TPU. If it is not provided, the provider zone is used.
  final Input<String>? zone;

  V2VmArgs({
    this.acceleratorConfig,
    this.acceleratorType,
    this.cidrBlock,
    this.dataDisks,
    this.description,
    this.labels,
    this.metadata,
    this.name,
    this.networkConfig,
    this.networkConfigs,
    this.project,
    required this.runtimeVersion,
    this.schedulingConfig,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorConfigValue = acceleratorConfig;
    if (acceleratorConfigValue != null) {
      map['acceleratorConfig'] = Input.mapOptionalInputValue<
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
      map['dataDisks'] = Input.mapOptionalInputValue<List<V2VmDataDisk>,
              List<Map<String, dynamic>>>(
          dataDisksValue,
          (value) => Input.encodeList<V2VmDataDisk, Map<String, dynamic>>(
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
      map['networkConfig'] =
          Input.mapOptionalInputValue<V2VmNetworkConfig, Map<String, dynamic>>(
              networkConfigValue, (value) => value.toMap());
    }
    final networkConfigsValue = networkConfigs;
    if (networkConfigsValue != null) {
      map['networkConfigs'] = Input.mapOptionalInputValue<
              List<V2VmNetworkConfig>, List<Map<String, dynamic>>>(
          networkConfigsValue,
          (value) => Input.encodeList<V2VmNetworkConfig, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['runtimeVersion'] = runtimeVersion;
    final schedulingConfigValue = schedulingConfig;
    if (schedulingConfigValue != null) {
      map['schedulingConfig'] = Input.mapOptionalInputValue<
              V2VmSchedulingConfig, Map<String, dynamic>>(
          schedulingConfigValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] =
          Input.mapOptionalInputValue<V2VmServiceAccount, Map<String, dynamic>>(
              serviceAccountValue, (value) => value.toMap());
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = Input.mapOptionalInputValue<
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
      acceleratorConfig: Input.asOptionalInput<V2VmAcceleratorConfig>(
          map['acceleratorConfig']),
      acceleratorType: Input.asOptionalInput<String>(map['acceleratorType']),
      cidrBlock: Input.asOptionalInput<String>(map['cidrBlock']),
      dataDisks: Input.asOptionalInput<List<V2VmDataDisk>>(map['dataDisks']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      metadata: Input.asOptionalInput<Map<String, String>>(map['metadata']),
      name: Input.asOptionalInput<String>(map['name']),
      networkConfig:
          Input.asOptionalInput<V2VmNetworkConfig>(map['networkConfig']),
      networkConfigs:
          Input.asOptionalInput<List<V2VmNetworkConfig>>(map['networkConfigs']),
      project: Input.asOptionalInput<String>(map['project']),
      runtimeVersion: Input.asInput<String>(map['runtimeVersion']),
      schedulingConfig:
          Input.asOptionalInput<V2VmSchedulingConfig>(map['schedulingConfig']),
      serviceAccount:
          Input.asOptionalInput<V2VmServiceAccount>(map['serviceAccount']),
      shieldedInstanceConfig: Input.asOptionalInput<V2VmShieldedInstanceConfig>(
          map['shieldedInstanceConfig']),
      tags: Input.asOptionalInput<List<String>>(map['tags']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
