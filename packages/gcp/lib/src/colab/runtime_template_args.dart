// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_template_data_persistent_disk_spec.dart';
import 'runtime_template_encryption_spec.dart';
import 'runtime_template_euc_config.dart';
import 'runtime_template_idle_shutdown_config.dart';
import 'runtime_template_machine_spec.dart';
import 'runtime_template_network_spec.dart';
import 'runtime_template_shielded_vm_config.dart';
import 'runtime_template_software_config.dart';

/// {@template pulumi_colab_runtime_template_runtime_template_args_doc}
/// The set of arguments for RuntimeTemplate.
/// {@endtemplate}
/// {@macro pulumi_colab_runtime_template_runtime_template_args_doc}
class RuntimeTemplateArgs {
  /// The configuration for the data disk of the runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateDataPersistentDiskSpec>?
      dataPersistentDiskSpec;

  /// The description of the Runtime Template.
  final pulumi.Input<String>? description;

  /// Required. The display name of the Runtime Template.
  final pulumi.Input<String> displayName;

  /// Customer-managed encryption key spec for the notebook runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateEncryptionSpec>? encryptionSpec;

  /// EUC configuration of the NotebookRuntimeTemplate.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateEucConfig>? eucConfig;

  /// Notebook Idle Shutdown configuration for the runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateIdleShutdownConfig>? idleShutdownConfig;

  /// Labels to identify and group the runtime template.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final pulumi.Input<String> location;

  /// 'The machine configuration of the runtime.'
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateMachineSpec>? machineSpec;

  /// The resource name of the Runtime Template
  final pulumi.Input<String>? name;

  /// The network configuration for the runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateNetworkSpec>? networkSpec;

  /// Applies the given Compute Engine tags to the runtime.
  final pulumi.Input<List<String>>? networkTags;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Runtime Shielded VM spec.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateShieldedVmConfig>? shieldedVmConfig;

  /// The notebook software configuration of the notebook runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeTemplateSoftwareConfig>? softwareConfig;

  /// Creates a new [RuntimeTemplateArgs].
  /// [dataPersistentDiskSpec] The configuration for the data disk of the runtime.
  /// [description] The description of the Runtime Template.
  /// [displayName] Required. The display name of the Runtime Template.
  /// [encryptionSpec] Customer-managed encryption key spec for the notebook runtime.
  /// [eucConfig] EUC configuration of the NotebookRuntimeTemplate.
  /// [idleShutdownConfig] Notebook Idle Shutdown configuration for the runtime.
  /// [labels] Labels to identify and group the runtime template.
  /// [location] The location for the resource: https://cloud.google.com/colab/docs/locations
  /// [machineSpec] 'The machine configuration of the runtime.'
  /// [name] The resource name of the Runtime Template
  /// [networkSpec] The network configuration for the runtime.
  /// [networkTags] Applies the given Compute Engine tags to the runtime.
  /// [project] The ID of the project in which the resource belongs.
  /// [shieldedVmConfig] Runtime Shielded VM spec.
  /// [softwareConfig] The notebook software configuration of the notebook runtime.
  RuntimeTemplateArgs({
    RuntimeTemplateDataPersistentDiskSpec? dataPersistentDiskSpec,
    String? description,
    required String displayName,
    RuntimeTemplateEncryptionSpec? encryptionSpec,
    RuntimeTemplateEucConfig? eucConfig,
    RuntimeTemplateIdleShutdownConfig? idleShutdownConfig,
    Map<String, String>? labels,
    required String location,
    RuntimeTemplateMachineSpec? machineSpec,
    String? name,
    RuntimeTemplateNetworkSpec? networkSpec,
    List<String>? networkTags,
    String? project,
    RuntimeTemplateShieldedVmConfig? shieldedVmConfig,
    RuntimeTemplateSoftwareConfig? softwareConfig,
  })  : dataPersistentDiskSpec =
            pulumi.Input.asOptionalInput<RuntimeTemplateDataPersistentDiskSpec>(
                dataPersistentDiskSpec),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        encryptionSpec =
            pulumi.Input.asOptionalInput<RuntimeTemplateEncryptionSpec>(
                encryptionSpec),
        eucConfig =
            pulumi.Input.asOptionalInput<RuntimeTemplateEucConfig>(eucConfig),
        idleShutdownConfig =
            pulumi.Input.asOptionalInput<RuntimeTemplateIdleShutdownConfig>(
                idleShutdownConfig),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        machineSpec = pulumi.Input.asOptionalInput<RuntimeTemplateMachineSpec>(
            machineSpec),
        name = pulumi.Input.asOptionalInput<String>(name),
        networkSpec = pulumi.Input.asOptionalInput<RuntimeTemplateNetworkSpec>(
            networkSpec),
        networkTags = pulumi.Input.asOptionalInput<List<String>>(networkTags),
        project = pulumi.Input.asOptionalInput<String>(project),
        shieldedVmConfig =
            pulumi.Input.asOptionalInput<RuntimeTemplateShieldedVmConfig>(
                shieldedVmConfig),
        softwareConfig =
            pulumi.Input.asOptionalInput<RuntimeTemplateSoftwareConfig>(
                softwareConfig);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataPersistentDiskSpecValue = dataPersistentDiskSpec;
    if (dataPersistentDiskSpecValue != null) {
      map['dataPersistentDiskSpec'] = pulumi.Input.mapOptionalInputValue<
              RuntimeTemplateDataPersistentDiskSpec, Map<String, dynamic>>(
          dataPersistentDiskSpecValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = pulumi.Input.mapOptionalInputValue<
          RuntimeTemplateEncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final eucConfigValue = eucConfig;
    if (eucConfigValue != null) {
      map['eucConfig'] = pulumi.Input.mapOptionalInputValue<
          RuntimeTemplateEucConfig,
          Map<String, dynamic>>(eucConfigValue, (value) => value.toMap());
    }
    final idleShutdownConfigValue = idleShutdownConfig;
    if (idleShutdownConfigValue != null) {
      map['idleShutdownConfig'] = pulumi.Input.mapOptionalInputValue<
              RuntimeTemplateIdleShutdownConfig, Map<String, dynamic>>(
          idleShutdownConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final machineSpecValue = machineSpec;
    if (machineSpecValue != null) {
      map['machineSpec'] = pulumi.Input.mapOptionalInputValue<
          RuntimeTemplateMachineSpec,
          Map<String, dynamic>>(machineSpecValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkSpecValue = networkSpec;
    if (networkSpecValue != null) {
      map['networkSpec'] = pulumi.Input.mapOptionalInputValue<
          RuntimeTemplateNetworkSpec,
          Map<String, dynamic>>(networkSpecValue, (value) => value.toMap());
    }
    final networkTagsValue = networkTags;
    if (networkTagsValue != null) {
      map['networkTags'] = networkTagsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final shieldedVmConfigValue = shieldedVmConfig;
    if (shieldedVmConfigValue != null) {
      map['shieldedVmConfig'] = pulumi.Input.mapOptionalInputValue<
              RuntimeTemplateShieldedVmConfig, Map<String, dynamic>>(
          shieldedVmConfigValue, (value) => value.toMap());
    }
    final softwareConfigValue = softwareConfig;
    if (softwareConfigValue != null) {
      map['softwareConfig'] = pulumi.Input.mapOptionalInputValue<
          RuntimeTemplateSoftwareConfig,
          Map<String, dynamic>>(softwareConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory RuntimeTemplateArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateArgs(
      dataPersistentDiskSpec: map['dataPersistentDiskSpec'] == null
          ? null
          : RuntimeTemplateDataPersistentDiskSpec.fromMap(
              (map['dataPersistentDiskSpec'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      encryptionSpec: map['encryptionSpec'] == null
          ? null
          : RuntimeTemplateEncryptionSpec.fromMap(
              (map['encryptionSpec'] as Map).cast<String, dynamic>()),
      eucConfig: map['eucConfig'] == null
          ? null
          : RuntimeTemplateEucConfig.fromMap(
              (map['eucConfig'] as Map).cast<String, dynamic>()),
      idleShutdownConfig: map['idleShutdownConfig'] == null
          ? null
          : RuntimeTemplateIdleShutdownConfig.fromMap(
              (map['idleShutdownConfig'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      machineSpec: map['machineSpec'] == null
          ? null
          : RuntimeTemplateMachineSpec.fromMap(
              (map['machineSpec'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      networkSpec: map['networkSpec'] == null
          ? null
          : RuntimeTemplateNetworkSpec.fromMap(
              (map['networkSpec'] as Map).cast<String, dynamic>()),
      networkTags: map['networkTags'] == null
          ? null
          : (map['networkTags'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      shieldedVmConfig: map['shieldedVmConfig'] == null
          ? null
          : RuntimeTemplateShieldedVmConfig.fromMap(
              (map['shieldedVmConfig'] as Map).cast<String, dynamic>()),
      softwareConfig: map['softwareConfig'] == null
          ? null
          : RuntimeTemplateSoftwareConfig.fromMap(
              (map['softwareConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
