import 'package:pulumi/pulumi.dart' as pulumi;
import '../landing_zone_drift_status/landing_zone_drift_status.dart';
import 'landing_zone_args.dart';

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
  late final pulumi.Output<List<LandingZoneDriftStatus>> driftStatuses;

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
    this.arn = registerOutput<String>('arn');
    this.driftStatuses =
        registerOutput<List<LandingZoneDriftStatus>>('driftStatuses');
    this.latestAvailableVersion =
        registerOutput<String>('latestAvailableVersion');
    this.manifestJson = registerOutput<String>('manifestJson');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<String>('version');
  }
}
