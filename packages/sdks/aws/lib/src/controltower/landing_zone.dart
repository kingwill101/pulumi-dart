import 'package:pulumi/pulumi.dart' as pulumi;
import 'landing_zone_args.dart';
import 'landing_zone_state.dart';

/// Creates a new landing zone using Control Tower. For more information on usage, please see the
/// [AWS Control Tower Landing Zone User Guide](https://docs.aws.amazon.com/controltower/latest/userguide/how-control-tower-works.html).
///
/// ## Import
///
/// Using `pulumi import`, import a Control Tower Landing Zone using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:controltower/landingZone:LandingZone example 1A2B3C4D5E6F7G8H
/// ```
class LandingZone extends pulumi.CustomResource {
  /// The ARN of the landing zone.
  late final pulumi.Output<String> arn;
  /// The drift status summary of the landing zone.
  late final pulumi.Output<List<Map<String, dynamic>>> driftStatuses;
  /// The latest available version of the landing zone.
  late final pulumi.Output<String> latestAvailableVersion;
  /// The manifest JSON file is a text file that describes your AWS resources. For examples, review [Launch your landing zone](https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch).
  late final pulumi.Output<String> manifestJson;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Tags to apply to the landing zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the landing zone, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The landing zone version.
  late final pulumi.Output<String> version;

  /// Creates a new [LandingZone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LandingZone]. {@macro pulumi_controltower_landing_zone_landing_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LandingZone(
    String name, {
    LandingZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:controltower/landingZone:LandingZone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    driftStatuses = registerOutput<List<Map<String, dynamic>>>('driftStatuses');
    latestAvailableVersion = registerOutput<String>('latestAvailableVersion');
    manifestJson = registerOutput<String>('manifestJson');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [LandingZone] resource's state with the given [name] and [id].
  static LandingZone get(
    String name,
    pulumi.Input<String> id, {
    LandingZoneState? state,
  }) {
    return LandingZone._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LandingZone._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:controltower/landingZone:LandingZone',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    driftStatuses = registerOutput<List<Map<String, dynamic>>>('driftStatuses');
    latestAvailableVersion = registerOutput<String>('latestAvailableVersion');
    manifestJson = registerOutput<String>('manifestJson');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    version = registerOutput<String>('version');
  }
}
