import 'package:pulumi/pulumi.dart';
import '../runtime_notebook_runtime_template_ref/runtime_notebook_runtime_template_ref.dart';
import 'runtime_args.dart';

/// 'A runtime is a Google-provisioned virtual machine (VM) that can run the code in your notebook (IPYNB file).'
///
///
/// To get more information about Runtime, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.notebookRuntimes)
/// * How-to Guides
/// * [Create a runtime](https://cloud.google.com/colab/docs/create-runtime)
///
/// ## Example Usage
///
/// ### Colab Runtime Basic
///
///
///
/// ### Colab Runtime Stopped
///
///
///
/// ### Colab Runtime Full
///
///
///
///
/// ## Import
///
/// Runtime can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/notebookRuntimes/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Runtime can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:colab/runtime:Runtime default projects/{{project}}/locations/{{location}}/notebookRuntimes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:colab/runtime:Runtime default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:colab/runtime:Runtime default {{location}}/{{name}}
/// ```
class Runtime extends CustomResource {
  /// Triggers an upgrade anytime the runtime is started if it is upgradable.
  late final Output<bool?> autoUpgrade;

  /// The description of the Runtime.
  late final Output<String?> description;

  /// Desired state of the Colab Runtime. Set this field to `RUNNING` to start the runtime, and `STOPPED` to stop it.
  late final Output<String?> desiredState;

  /// Required. The display name of the Runtime.
  late final Output<String> displayName;

  /// Output only. Timestamp when this NotebookRuntime will be expired.
  late final Output<String> expirationTime;

  /// Output only. Checks if the NotebookRuntime is upgradable.
  late final Output<bool> isUpgradable;

  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  late final Output<String> location;

  /// The resource name of the Runtime
  late final Output<String> name;

  /// 'Runtime specific information used for NotebookRuntime creation.'
  /// Structure is documented below.
  late final Output<RuntimeNotebookRuntimeTemplateRef?>
      notebookRuntimeTemplateRef;

  /// Output only. The type of the notebook runtime.
  late final Output<String> notebookRuntimeType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The user email of the NotebookRuntime.
  late final Output<String> runtimeUser;

  /// Output only. The state of the runtime.
  late final Output<String> state;

  Runtime(
    String name, {
    RuntimeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:colab/runtime:Runtime',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoUpgrade = registerOutput<bool?>('autoUpgrade');
    this.description = registerOutput<String?>('description');
    this.desiredState = registerOutput<String?>('desiredState');
    this.displayName = registerOutput<String>('displayName');
    this.expirationTime = registerOutput<String>('expirationTime');
    this.isUpgradable = registerOutput<bool>('isUpgradable');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.notebookRuntimeTemplateRef =
        registerOutput<RuntimeNotebookRuntimeTemplateRef?>(
            'notebookRuntimeTemplateRef');
    this.notebookRuntimeType = registerOutput<String>('notebookRuntimeType');
    this.project = registerOutput<String>('project');
    this.runtimeUser = registerOutput<String>('runtimeUser');
    this.state = registerOutput<String>('state');
  }
}
