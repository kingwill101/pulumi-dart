import 'package:pulumi/pulumi.dart';
import '../extension_action_point/extension_action_point.dart';
import '../extension_parameter/extension_parameter.dart';
import 'extension_args.dart';

/// Provides an AppConfig Extension resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Extensions using their extension ID. For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/extension:Extension example 71rxuzt
/// ```
class Extension extends CustomResource {
  /// The action points defined in the extension. Detailed below.
  late final Output<List<ExtensionActionPoint>> actionPoints;

  /// ARN of the AppConfig Extension.
  late final Output<String> arn;

  /// Information about the extension.
  late final Output<String> description;

  /// A name for the extension. Each extension name in your account must be unique. Extension versions use the same name.
  late final Output<String> name;

  /// The parameters accepted by the extension. You specify parameter values when you associate the extension to an AppConfig resource by using the CreateExtensionAssociation API action. For Lambda extension actions, these parameters are included in the Lambda request object. Detailed below.
  late final Output<List<ExtensionParameter>> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The version number for the extension.
  late final Output<int> version;

  Extension(
    String name, {
    ExtensionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/extension:Extension',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actionPoints =
        registerOutput<List<ExtensionActionPoint>>('actionPoints');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<List<ExtensionParameter>>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<int>('version');
  }
}
