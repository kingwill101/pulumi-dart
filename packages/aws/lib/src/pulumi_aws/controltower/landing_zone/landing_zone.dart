import 'package:pulumi/pulumi.dart';
import '../landing_zone_drift_status/landing_zone_drift_status.dart';
import 'landing_zone_args.dart';

/// Creates a new landing zone using Control Tower. For more information on usage, please see the
/// [AWS Control Tower Landing Zone User Guide](https://docs.aws.amazon.com/controltower/latest/userguide/how-control-tower-works.html).
///
/// ## Import
///
/// Using `pulumi import`, import a Control Tower Landing Zone using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:controltower/landingZone:LandingZone example 1A2B3C4D5E6F7G8H
/// ```
class LandingZone extends CustomResource {
  /// The ARN of the landing zone.
  late final Output<String> arn;

  /// The drift status summary of the landing zone.
  late final Output<List<LandingZoneDriftStatus>> driftStatuses;

  /// The latest available version of the landing zone.
  late final Output<String> latestAvailableVersion;

  /// The manifest JSON file is a text file that describes your AWS resources. For examples, review [Launch your landing zone](https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch).
  late final Output<String> manifestJson;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tags to apply to the landing zone. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the landing zone, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The landing zone version.
  late final Output<String> version;

  LandingZone(
    String name, {
    LandingZoneArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:controltower/landingZone:LandingZone',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.driftStatuses = Output.createUnknown<List<LandingZoneDriftStatus>>();
    this.latestAvailableVersion = Output.createUnknown<String>();
    this.manifestJson = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.version = Output.createUnknown<String>();
  }
}
