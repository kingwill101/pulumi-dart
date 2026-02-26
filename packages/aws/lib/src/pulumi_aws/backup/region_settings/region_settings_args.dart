// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RegionSettings.
class RegionSettingsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of service names to their full management preferences for the Region. For more information, see the AWS Documentation on [what full management is](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#full-management) and [which services support full management](https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html#features-by-resource).
  final Input<Map<String, bool>>? resourceTypeManagementPreference;

  /// A map of service names to their opt-in preferences for the Region. See [AWS Documentation on which services support backup](https://docs.aws.amazon.com/aws-backup/latest/devguide/backup-feature-availability.html).
  final Input<Map<String, bool>> resourceTypeOptInPreference;

  RegionSettingsArgs({
    this.region,
    this.resourceTypeManagementPreference,
    required this.resourceTypeOptInPreference,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceTypeManagementPreferenceValue =
        resourceTypeManagementPreference;
    if (resourceTypeManagementPreferenceValue != null) {
      map['resourceTypeManagementPreference'] =
          resourceTypeManagementPreferenceValue;
    }
    map['resourceTypeOptInPreference'] = resourceTypeOptInPreference;
    return map;
  }

  factory RegionSettingsArgs.fromMap(Map<String, dynamic> map) {
    return RegionSettingsArgs(
      region: Input.asOptionalInput<String>(map['region']),
      resourceTypeManagementPreference:
          Input.asOptionalInput<Map<String, bool>>(
              map['resourceTypeManagementPreference']),
      resourceTypeOptInPreference:
          Input.asInput<Map<String, bool>>(map['resourceTypeOptInPreference']),
    );
  }
}
