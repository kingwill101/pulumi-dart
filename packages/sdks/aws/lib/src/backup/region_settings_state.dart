// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegionSettings resources.
class RegionSettingsState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of service names to their full management preferences for the Region. For more information, see the AWS Documentation on [what full management is](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#full-management) and [which services support full management](https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource).
  final pulumi.Input<Map<String, bool>>? resourceTypeManagementPreference;
  /// A map of service names to their opt-in preferences for the Region. See [AWS Documentation on which services support backup](https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html).
  final pulumi.Input<Map<String, bool>>? resourceTypeOptInPreference;

  /// Creates a new [RegionSettingsState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceTypeManagementPreference] A map of service names to their full management preferences for the Region. For more information, see the AWS Documentation on [what full management is](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#full-management) and [which services support full management](https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource).
  /// [resourceTypeOptInPreference] A map of service names to their opt-in preferences for the Region. See [AWS Documentation on which services support backup](https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html).
  RegionSettingsState({
    this.region,
    this.resourceTypeManagementPreference,
    this.resourceTypeOptInPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceTypeManagementPreference': ?resourceTypeManagementPreference,
      'resourceTypeOptInPreference': ?resourceTypeOptInPreference,
    };
  }

  factory RegionSettingsState.fromMap(Map<String, dynamic> map) {
    return RegionSettingsState(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceTypeManagementPreference: map['resourceTypeManagementPreference'] == null ? null : (((map['resourceTypeManagementPreference'] as Map).cast<String, bool>()).input()).input(),
      resourceTypeOptInPreference: map['resourceTypeOptInPreference'] == null ? null : (((map['resourceTypeOptInPreference'] as Map).cast<String, bool>()).input()).input(),
    );
  }
}

