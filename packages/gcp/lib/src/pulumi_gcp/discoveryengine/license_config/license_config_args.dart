// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../license_config_end_date/license_config_end_date.dart';
import '../license_config_start_date/license_config_start_date.dart';

/// The set of arguments for LicenseConfig.
class LicenseConfigArgs {
  /// Whether the license config should be auto renewed when it reaches the end date.
  final Input<bool>? autoRenew;

  /// The planned end date.
  /// Structure is documented below.
  final Input<LicenseConfigEndDate>? endDate;

  /// Whether the license config is for free trial.
  final Input<bool>? freeTrial;

  /// The unique id of the license config.
  final Input<String> licenseConfigId;

  /// Number of licenses purchased.
  final Input<int> licenseCount;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The start date.
  /// Structure is documented below.
  final Input<LicenseConfigStartDate> startDate;

  /// Subscription term.
  /// Possible values are: `SUBSCRIPTION_TERM_UNSPECIFIED`, `SUBSCRIPTION_TERM_ONE_MONTH`, `SUBSCRIPTION_TERM_ONE_YEAR`, `SUBSCRIPTION_TERM_THREE_YEARS`, `SUBSCRIPTION_TERM_THREE_MONTHS`, `SUBSCRIPTION_TERM_FOURTEEN_DAYS`, `SUBSCRIPTION_TERM_CUSTOM`.
  final Input<String> subscriptionTerm;

  /// Subscription tier information for the license config.
  /// Possible values are: `SUBSCRIPTION_TIER_UNSPECIFIED`, `SUBSCRIPTION_TIER_SEARCH`, `SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT`, `SUBSCRIPTION_TIER_NOTEBOOK_LM`, `SUBSCRIPTION_TIER_FRONTLINE_WORKER`, `SUBSCRIPTION_TIER_AGENTSPACE_STARTER`, `SUBSCRIPTION_TIER_AGENTSPACE_BUSINESS`, `SUBSCRIPTION_TIER_ENTERPRISE`, `SUBSCRIPTION_TIER_EDU`, `SUBSCRIPTION_TIER_EDU_PRO`.
  final Input<String> subscriptionTier;

  LicenseConfigArgs({
    this.autoRenew,
    this.endDate,
    this.freeTrial,
    required this.licenseConfigId,
    required this.licenseCount,
    required this.location,
    this.project,
    required this.startDate,
    required this.subscriptionTerm,
    required this.subscriptionTier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoRenewValue = autoRenew;
    if (autoRenewValue != null) {
      map['autoRenew'] = autoRenewValue;
    }
    final endDateValue = endDate;
    if (endDateValue != null) {
      map['endDate'] = Input.mapOptionalInputValue<LicenseConfigEndDate,
          Map<String, dynamic>>(endDateValue, (value) => value.toMap());
    }
    final freeTrialValue = freeTrial;
    if (freeTrialValue != null) {
      map['freeTrial'] = freeTrialValue;
    }
    map['licenseConfigId'] = licenseConfigId;
    map['licenseCount'] = licenseCount;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['startDate'] =
        Input.mapInputValue<LicenseConfigStartDate, Map<String, dynamic>>(
            startDate, (value) => value.toMap());
    map['subscriptionTerm'] = subscriptionTerm;
    map['subscriptionTier'] = subscriptionTier;
    return map;
  }

  factory LicenseConfigArgs.fromMap(Map<String, dynamic> map) {
    return LicenseConfigArgs(
      autoRenew: Input.asOptionalInput<bool>(map['autoRenew']),
      endDate: Input.asOptionalInput<LicenseConfigEndDate>(map['endDate']),
      freeTrial: Input.asOptionalInput<bool>(map['freeTrial']),
      licenseConfigId: Input.asInput<String>(map['licenseConfigId']),
      licenseCount: Input.asInput<int>(map['licenseCount']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      startDate: Input.asInput<LicenseConfigStartDate>(map['startDate']),
      subscriptionTerm: Input.asInput<String>(map['subscriptionTerm']),
      subscriptionTier: Input.asInput<String>(map['subscriptionTier']),
    );
  }
}
