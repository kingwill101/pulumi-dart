import 'package:pulumi/pulumi.dart';
import 'config_args2.dart';

/// Manages a RuntimeConfig resource in Google Cloud.
///
/// To get more information about RuntimeConfigs, see:
///
/// * [API documentation](https://cloud.google.com/deployment-manager/runtime-configurator/reference/rest/v1beta1/projects.configs)
/// * How-to Guides
/// * [Runtime Configurator Fundamentals](https://cloud.google.com/deployment-manager/runtime-configurator/)
///
/// ## Example Usage
///
/// Example creating a RuntimeConfig resource.
///
///
///
/// ## Import
///
/// Runtime Configs can be imported using the `name` or full config name, e.g.
///
/// * `projects/{{project_id}}/configs/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Runtime Configs can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:runtimeconfig/config:Config default projects/{{project_id}}/configs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:runtimeconfig/config:Config default {{name}}
/// ```
///
/// When importing using only the name, the provider project must be set.
class Config2 extends CustomResource {
  /// The description to associate with the runtime
  /// config.
  late final Output<String?> description;

  /// The name of the runtime config.
  ///
  /// - - -
  late final Output<String> name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  Config2(
    String name, {
    ConfigArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:runtimeconfig/config:Config',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
