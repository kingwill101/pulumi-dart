import 'package:pulumi/pulumi.dart';
import '../custom_plugin_location/custom_plugin_location.dart';
import 'custom_plugin_args.dart';

/// Provides an Amazon MSK Connect Custom Plugin Resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MSK Connect Custom Plugin using the plugin's `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:mskconnect/customPlugin:CustomPlugin example 'arn:aws:kafkaconnect:eu-central-1:123456789012:custom-plugin/debezium-example/abcdefgh-1234-5678-9abc-defghijklmno-4'
/// ```
class CustomPlugin extends CustomResource {
  /// the Amazon Resource Name (ARN) of the custom plugin.
  late final Output<String> arn;

  /// The type of the plugin file. Allowed values are `ZIP` and `JAR`.
  late final Output<String> contentType;

  /// A summary description of the custom plugin.
  late final Output<String?> description;

  /// an ID of the latest successfully created revision of the custom plugin.
  late final Output<int> latestRevision;

  /// Information about the location of a custom plugin. See `location` Block for details.
  late final Output<CustomPluginLocation> location;

  /// The name of the custom plugin..
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// the state of the custom plugin.
  late final Output<String> state;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  CustomPlugin(
    String name, {
    CustomPluginArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:mskconnect/customPlugin:CustomPlugin',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.contentType = registerOutput<String>('contentType');
    this.description = registerOutput<String?>('description');
    this.latestRevision = registerOutput<int>('latestRevision');
    this.location = registerOutput<CustomPluginLocation>('location');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
