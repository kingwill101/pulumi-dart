import 'package:pulumi/pulumi.dart';
import '../runtime_template_data_persistent_disk_spec/runtime_template_data_persistent_disk_spec.dart';
import '../runtime_template_encryption_spec/runtime_template_encryption_spec.dart';
import '../runtime_template_euc_config/runtime_template_euc_config.dart';
import '../runtime_template_idle_shutdown_config/runtime_template_idle_shutdown_config.dart';
import '../runtime_template_machine_spec/runtime_template_machine_spec.dart';
import '../runtime_template_network_spec/runtime_template_network_spec.dart';
import '../runtime_template_shielded_vm_config/runtime_template_shielded_vm_config.dart';
import '../runtime_template_software_config/runtime_template_software_config.dart';
import 'runtime_template_args.dart';

/// 'A runtime template is a VM configuration that specifies a machine type and other characteristics of the VM,
/// as well as common settings such as the network and whether public internet access is enabled. When you create
/// a runtime, its VM is created according to the specifications of a runtime template.'
///
///
/// To get more information about RuntimeTemplate, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.notebookRuntimeTemplates)
/// * How-to Guides
/// * [Create a runtime template](https://cloud.google.com/colab/docs/create-runtime-template)
///
/// ## Example Usage
///
/// ### Colab Runtime Template Basic
///
///
///
/// ### Colab Runtime Template No Name
///
///
///
/// ### Colab Runtime Template Full
///
///
///
///
/// ## Import
///
/// RuntimeTemplate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, RuntimeTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:colab/runtimeTemplate:RuntimeTemplate default projects/{{project}}/locations/{{location}}/notebookRuntimeTemplates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:colab/runtimeTemplate:RuntimeTemplate default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:colab/runtimeTemplate:RuntimeTemplate default {{location}}/{{name}}
/// ```
class RuntimeTemplate extends CustomResource {
  /// The configuration for the data disk of the runtime.
  /// Structure is documented below.
  late final Output<RuntimeTemplateDataPersistentDiskSpec>
      dataPersistentDiskSpec;

  /// The description of the Runtime Template.
  late final Output<String?> description;

  /// Required. The display name of the Runtime Template.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Customer-managed encryption key spec for the notebook runtime.
  /// Structure is documented below.
  late final Output<RuntimeTemplateEncryptionSpec?> encryptionSpec;

  /// EUC configuration of the NotebookRuntimeTemplate.
  /// Structure is documented below.
  late final Output<RuntimeTemplateEucConfig> eucConfig;

  /// Notebook Idle Shutdown configuration for the runtime.
  /// Structure is documented below.
  late final Output<RuntimeTemplateIdleShutdownConfig> idleShutdownConfig;

  /// Labels to identify and group the runtime template.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>> labels;

  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  late final Output<String> location;

  /// 'The machine configuration of the runtime.'
  /// Structure is documented below.
  late final Output<RuntimeTemplateMachineSpec> machineSpec;

  /// The resource name of the Runtime Template
  late final Output<String> name;

  /// The network configuration for the runtime.
  /// Structure is documented below.
  late final Output<RuntimeTemplateNetworkSpec> networkSpec;

  /// Applies the given Compute Engine tags to the runtime.
  late final Output<List<String>?> networkTags;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Runtime Shielded VM spec.
  /// Structure is documented below.
  late final Output<RuntimeTemplateShieldedVmConfig> shieldedVmConfig;

  /// The notebook software configuration of the notebook runtime.
  /// Structure is documented below.
  late final Output<RuntimeTemplateSoftwareConfig> softwareConfig;

  RuntimeTemplate(
    String name, {
    RuntimeTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:colab/runtimeTemplate:RuntimeTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataPersistentDiskSpec =
        registerOutput<RuntimeTemplateDataPersistentDiskSpec>(
            'dataPersistentDiskSpec');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionSpec =
        registerOutput<RuntimeTemplateEncryptionSpec?>('encryptionSpec');
    this.eucConfig = registerOutput<RuntimeTemplateEucConfig>('eucConfig');
    this.idleShutdownConfig =
        registerOutput<RuntimeTemplateIdleShutdownConfig>('idleShutdownConfig');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.machineSpec =
        registerOutput<RuntimeTemplateMachineSpec>('machineSpec');
    this.name = registerOutput<String>('name');
    this.networkSpec =
        registerOutput<RuntimeTemplateNetworkSpec>('networkSpec');
    this.networkTags = registerOutput<List<String>?>('networkTags');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.shieldedVmConfig =
        registerOutput<RuntimeTemplateShieldedVmConfig>('shieldedVmConfig');
    this.softwareConfig =
        registerOutput<RuntimeTemplateSoftwareConfig>('softwareConfig');
  }
}
