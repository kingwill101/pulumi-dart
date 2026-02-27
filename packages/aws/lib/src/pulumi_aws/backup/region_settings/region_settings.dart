import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_settings_args.dart';

/// Provides an AWS Backup Region Settings resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup Region Settings using the `region`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/regionSettings:RegionSettings test us-west-2
/// ```
class RegionSettings extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of service names to their full management preferences for the Region. For more information, see the AWS Documentation on [what full management is](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#full-management) and [which services support full management](https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource).
  late final pulumi.Output<Map<String, bool>> resourceTypeManagementPreference;

  /// A map of service names to their opt-in preferences for the Region. See [AWS Documentation on which services support backup](https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html).
  late final pulumi.Output<Map<String, bool>> resourceTypeOptInPreference;

  RegionSettings(
    String name, {
    RegionSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/regionSettings:RegionSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceTypeManagementPreference =
        registerOutput<Map<String, bool>>('resourceTypeManagementPreference');
    this.resourceTypeOptInPreference =
        registerOutput<Map<String, bool>>('resourceTypeOptInPreference');
  }
}
