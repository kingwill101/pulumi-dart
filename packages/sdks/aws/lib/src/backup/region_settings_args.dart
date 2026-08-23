// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_region_settings_region_settings_args_doc}
/// The set of arguments for RegionSettings.
/// {@endtemplate}
/// {@macro pulumi_backup_region_settings_region_settings_args_doc}
class RegionSettingsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of service names to their full management preferences for the Region. For more information, see the AWS Documentation on [what full management is](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#full-management) and [which services support full management](https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource).
  final pulumi.Input<Map<String, bool>>? resourceTypeManagementPreference;
  /// A map of service names to their opt-in preferences for the Region. See [AWS Documentation on which services support backup](https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html).
  final pulumi.Input<Map<String, bool>> resourceTypeOptInPreference;

  /// Creates a new [RegionSettingsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceTypeManagementPreference] A map of service names to their full management preferences for the Region. For more information, see the AWS Documentation on [what full management is](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#full-management) and [which services support full management](https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource).
  /// [resourceTypeOptInPreference] A map of service names to their opt-in preferences for the Region. See [AWS Documentation on which services support backup](https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html).
  const RegionSettingsArgs({
    this.region,
    this.resourceTypeManagementPreference,
    required this.resourceTypeOptInPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceTypeManagementPreference': ?resourceTypeManagementPreference,
      'resourceTypeOptInPreference': resourceTypeOptInPreference,
    };
  }

  factory RegionSettingsArgs.fromMap(Map<String, dynamic> map) {
    return RegionSettingsArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTypeManagementPreference: (() { final guardedValue = map['resourceTypeManagementPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, bool>()); })(),
      resourceTypeOptInPreference: pulumi.Input.fromValue((map['resourceTypeOptInPreference'] as Map).cast<String, bool>()),
    );
  }
}
