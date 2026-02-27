// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../runtime_template_data_persistent_disk_spec/runtime_template_data_persistent_disk_spec.dart';
import '../runtime_template_encryption_spec/runtime_template_encryption_spec.dart';
import '../runtime_template_euc_config/runtime_template_euc_config.dart';
import '../runtime_template_idle_shutdown_config/runtime_template_idle_shutdown_config.dart';
import '../runtime_template_machine_spec/runtime_template_machine_spec.dart';
import '../runtime_template_network_spec/runtime_template_network_spec.dart';
import '../runtime_template_shielded_vm_config/runtime_template_shielded_vm_config.dart';
import '../runtime_template_software_config/runtime_template_software_config.dart';

/// The set of arguments for RuntimeTemplate.
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

  RuntimeTemplateArgs({
    this.dataPersistentDiskSpec,
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.eucConfig,
    this.idleShutdownConfig,
    this.labels,
    required this.location,
    this.machineSpec,
    this.name,
    this.networkSpec,
    this.networkTags,
    this.project,
    this.shieldedVmConfig,
    this.softwareConfig,
  });

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
      dataPersistentDiskSpec:
          pulumi.Input.asOptionalInput<RuntimeTemplateDataPersistentDiskSpec>(
              map['dataPersistentDiskSpec']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      encryptionSpec:
          pulumi.Input.asOptionalInput<RuntimeTemplateEncryptionSpec>(
              map['encryptionSpec']),
      eucConfig: pulumi.Input.asOptionalInput<RuntimeTemplateEucConfig>(
          map['eucConfig']),
      idleShutdownConfig:
          pulumi.Input.asOptionalInput<RuntimeTemplateIdleShutdownConfig>(
              map['idleShutdownConfig']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      machineSpec: pulumi.Input.asOptionalInput<RuntimeTemplateMachineSpec>(
          map['machineSpec']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkSpec: pulumi.Input.asOptionalInput<RuntimeTemplateNetworkSpec>(
          map['networkSpec']),
      networkTags:
          pulumi.Input.asOptionalInput<List<String>>(map['networkTags']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      shieldedVmConfig:
          pulumi.Input.asOptionalInput<RuntimeTemplateShieldedVmConfig>(
              map['shieldedVmConfig']),
      softwareConfig:
          pulumi.Input.asOptionalInput<RuntimeTemplateSoftwareConfig>(
              map['softwareConfig']),
    );
  }
}
