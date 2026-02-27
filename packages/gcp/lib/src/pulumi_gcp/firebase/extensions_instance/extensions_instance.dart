import 'package:pulumi/pulumi.dart' as pulumi;
import '../extensions_instance_config/extensions_instance_config.dart';
import '../extensions_instance_error_status/extensions_instance_error_status.dart';
import '../extensions_instance_runtime_data/extensions_instance_runtime_data.dart';
import 'extensions_instance_args.dart';

/// An Instance is an installation of an Extension into a user's project.
///
/// To get more information about Instance, see:
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/products/extensions)
///
/// ## Example Usage
///
/// ### Firebase Extensions Instance Resize Image
///
///
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance_id}}`
///
/// * `{{project}}/{{instance_id}}`
///
/// * `{{instance_id}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/extensionsInstance:ExtensionsInstance default projects/{{project}}/instances/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/extensionsInstance:ExtensionsInstance default {{project}}/{{instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/extensionsInstance:ExtensionsInstance default {{instance_id}}
/// ```
class ExtensionsInstance extends pulumi.CustomResource {
  /// The current Config of the Extension Instance.
  /// Structure is documented below.
  late final pulumi.Output<ExtensionsInstanceConfig> config;

  /// The time at which the Extension Instance was created.
  late final pulumi.Output<String> createTime;

  /// If this Instance has `state: ERRORED`, the error messages
  /// will be found here.
  /// Structure is documented below.
  late final pulumi.Output<List<ExtensionsInstanceErrorStatus>> errorStatuses;

  /// A weak etag that is computed by the server based on other configuration
  /// values and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// The ID to use for the Extension Instance, which will become the final
  /// component of the instance's name.
  late final pulumi.Output<String> instanceId;

  /// The name of the last operation that acted on this Extension
  /// Instance
  late final pulumi.Output<String> lastOperationName;

  /// The type of the last operation that acted on the Extension Instance.
  late final pulumi.Output<String> lastOperationType;

  /// The fully-qualified resource name of the Extension Instance.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Data set by the extension instance at runtime.
  /// Structure is documented below.
  late final pulumi.Output<List<ExtensionsInstanceRuntimeData>> runtimeDatas;

  /// The email of the service account to be used at runtime by compute resources
  /// created for the operation of the Extension instance.
  late final pulumi.Output<String> serviceAccountEmail;

  /// The processing state of the extension instance.
  late final pulumi.Output<String> state;

  /// The time at which the Extension Instance was updated.
  late final pulumi.Output<String> updateTime;

  ExtensionsInstance(
    String name, {
    ExtensionsInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/extensionsInstance:ExtensionsInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.config = registerOutput<ExtensionsInstanceConfig>('config');
    this.createTime = registerOutput<String>('createTime');
    this.errorStatuses =
        registerOutput<List<ExtensionsInstanceErrorStatus>>('errorStatuses');
    this.etag = registerOutput<String>('etag');
    this.instanceId = registerOutput<String>('instanceId');
    this.lastOperationName = registerOutput<String>('lastOperationName');
    this.lastOperationType = registerOutput<String>('lastOperationType');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.runtimeDatas =
        registerOutput<List<ExtensionsInstanceRuntimeData>>('runtimeDatas');
    this.serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
