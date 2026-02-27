import 'package:pulumi/pulumi.dart';
import 'variable_args.dart';

/// Manages a RuntimeConfig variable in Google Cloud. For more information, see the
/// [official documentation](https://cloud.google.com/deployment-manager/runtime-configurator/),
/// or the
/// [JSON API](https://cloud.google.com/deployment-manager/runtime-configurator/reference/rest/).
///
/// ## Example Usage
///
/// Example creating a RuntimeConfig variable.
///
///
///
/// You can also encode binary content using the `value` argument instead. The
/// value must be base64 encoded.
///
/// Example of using the `value` argument.
///
///
///
/// ## Import
///
/// Runtime Config Variables can be imported using the `name` or full variable name, e.g.
///
/// * `projects/my-gcp-project/configs/{{config_id}}/variables/{{name}}`
///
/// * `{{config_id}}/{{name}}`
///
/// When using the `pulumi import` command, Runtime Config Variables can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:runtimeconfig/variable:Variable default projects/my-gcp-project/configs/{{config_id}}/variables/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:runtimeconfig/variable:Variable default {{config_id}}/{{name}}
/// ```
///
/// When importing using only the name, the provider project must be set.
class Variable extends CustomResource {
  /// The name of the variable to manage. Note that variable
  /// names can be hierarchical using slashes (e.g. "prod-variables/hostname").
  late final Output<String> name;

  /// The name of the RuntimeConfig resource containing this
  /// variable.
  late final Output<String> parent;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// or `value` - (Required) The content to associate with the variable.
  /// Exactly one of `text` or `variable` must be specified. If `text` is specified,
  /// it must be a valid UTF-8 string and less than 4096 bytes in length. If `value`
  /// is specified, it must be base64 encoded and less than 4096 bytes in length.
  ///
  /// - - -
  late final Output<String?> text;

  /// (Computed) The timestamp in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds, representing when the variable was last updated.
  /// Example: "2016-10-09T12:33:37.578138407Z".
  late final Output<String> updateTime;
  late final Output<String?> value;

  Variable(
    String name, {
    VariableArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:runtimeconfig/variable:Variable',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.project = registerOutput<String>('project');
    this.text = registerOutput<String?>('text');
    this.updateTime = registerOutput<String>('updateTime');
    this.value = registerOutput<String?>('value');
  }
}
