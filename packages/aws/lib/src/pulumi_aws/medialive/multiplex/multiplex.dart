import 'package:pulumi/pulumi.dart' as pulumi;
import '../multiplex_multiplex_settings/multiplex_multiplex_settings.dart';
import 'multiplex_args.dart';

/// Resource for managing an AWS MediaLive Multiplex.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MediaLive Multiplex using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:medialive/multiplex:Multiplex example 12345678
/// ```
class Multiplex extends pulumi.CustomResource {
  /// ARN of the Multiplex.
  late final pulumi.Output<String> arn;

  /// A list of availability zones. You must specify exactly two.
  late final pulumi.Output<List<String>> availabilityZones;

  /// Multiplex settings. See Multiplex Settings for more details.
  late final pulumi.Output<MultiplexMultiplexSettings?> multiplexSettings;

  /// name of Multiplex.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether to start the Multiplex. Defaults to `false`.
  late final pulumi.Output<bool?> startMultiplex;

  /// A map of tags to assign to the Multiplex. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  Multiplex(
    String name, {
    MultiplexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:medialive/multiplex:Multiplex',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.multiplexSettings =
        registerOutput<MultiplexMultiplexSettings?>('multiplexSettings');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.startMultiplex = registerOutput<bool?>('startMultiplex');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
