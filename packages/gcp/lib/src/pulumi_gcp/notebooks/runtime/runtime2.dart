import 'package:pulumi/pulumi.dart';
import '../runtime_access_config/runtime_access_config.dart';
import '../runtime_metric/runtime_metric.dart';
import '../runtime_software_config/runtime_software_config.dart';
import '../runtime_virtual_machine/runtime_virtual_machine.dart';
import 'runtime_args2.dart';

/// > **Warning:** `google_notebook_runtime` is deprecated and will be removed in a future major release. Use `gcp.workbench.Instance` instead.
///
/// A Cloud AI Platform Notebook runtime.
///
///
/// > **Note:** Due to limitations of the Notebooks Runtime API, many fields
/// in this resource do not properly detect drift. These fields will also not
/// appear in state once imported.
///
///
/// To get more information about Runtime, see:
///
/// * [API documentation](https://cloud.google.com/ai-platform/notebooks/docs/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/ai-platform-notebooks)
///
/// ## Example Usage
///
/// ### Notebook Runtime Basic
///
///
///
/// ### Notebook Runtime Basic Gpu
///
///
///
/// ### Notebook Runtime Basic Container
///
///
///
/// ### Notebook Runtime Kernels
///
///
///
/// ### Notebook Runtime Script
///
///
///
///
/// ## Import
///
/// Runtime can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/runtimes/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Runtime can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:notebooks/runtime:Runtime default projects/{{project}}/locations/{{location}}/runtimes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:notebooks/runtime:Runtime default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:notebooks/runtime:Runtime default {{location}}/{{name}}
/// ```
class Runtime2 extends CustomResource {
  /// The config settings for accessing runtime.
  /// Structure is documented below.
  late final Output<RuntimeAccessConfig?> accessConfig;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The health state of this runtime. For a list of possible output
  /// values, see `https://cloud.google.com/vertex-ai/docs/workbench/
  /// reference/rest/v1/projects.locations.runtimes#healthstate`.
  late final Output<String> healthState;

  /// The labels to associate with this runtime. Label **keys** must
  /// contain 1 to 63 characters, and must conform to [RFC 1035]
  /// (https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be
  /// empty, but, if present, must contain 1 to 63 characters, and must
  /// conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No
  /// more than 32 labels can be associated with a cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// A reference to the zone where the machine resides.
  late final Output<String> location;

  /// Contains Runtime daemon metrics such as Service status and JupyterLab
  /// status
  /// Structure is documented below.
  late final Output<List<RuntimeMetric>> metrics;

  /// The name specified for the Notebook runtime.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The config settings for software inside the runtime.
  /// Structure is documented below.
  late final Output<RuntimeSoftwareConfig> softwareConfig;

  /// The state of this runtime.
  late final Output<String> state;

  /// Use a Compute Engine VM image to start the managed notebook instance.
  /// Structure is documented below.
  late final Output<RuntimeVirtualMachine?> virtualMachine;

  Runtime2(
    String name, {
    RuntimeArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:notebooks/runtime:Runtime',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessConfig = registerOutput<RuntimeAccessConfig?>('accessConfig');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.healthState = registerOutput<String>('healthState');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.metrics = registerOutput<List<RuntimeMetric>>('metrics');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.softwareConfig =
        registerOutput<RuntimeSoftwareConfig>('softwareConfig');
    this.state = registerOutput<String>('state');
    this.virtualMachine =
        registerOutput<RuntimeVirtualMachine?>('virtualMachine');
  }
}
