// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_config_end_date.dart';
import 'license_config_start_date.dart';

/// {@template pulumi_discoveryengine_license_config_license_config_args_doc}
/// The set of arguments for LicenseConfig.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_license_config_license_config_args_doc}
class LicenseConfigArgs {
  /// Whether the license config should be auto renewed when it reaches the end date.
  final pulumi.Input<bool>? autoRenew;
  /// The planned end date.
  /// Structure is documented below.
  final pulumi.Input<LicenseConfigEndDate>? endDate;
  /// Whether the license config is for free trial.
  final pulumi.Input<bool>? freeTrial;
  /// The unique id of the license config.
  final pulumi.Input<String> licenseConfigId;
  /// Number of licenses purchased.
  final pulumi.Input<int> licenseCount;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The start date.
  /// Structure is documented below.
  final pulumi.Input<LicenseConfigStartDate> startDate;
  /// Subscription term.
  /// Possible values are: `SUBSCRIPTION_TERM_UNSPECIFIED`, `SUBSCRIPTION_TERM_ONE_MONTH`, `SUBSCRIPTION_TERM_ONE_YEAR`, `SUBSCRIPTION_TERM_THREE_YEARS`, `SUBSCRIPTION_TERM_THREE_MONTHS`, `SUBSCRIPTION_TERM_FOURTEEN_DAYS`, `SUBSCRIPTION_TERM_CUSTOM`.
  final pulumi.Input<String> subscriptionTerm;
  /// Subscription tier information for the license config.
  /// Possible values are: `SUBSCRIPTION_TIER_UNSPECIFIED`, `SUBSCRIPTION_TIER_SEARCH`, `SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT`, `SUBSCRIPTION_TIER_NOTEBOOK_LM`, `SUBSCRIPTION_TIER_FRONTLINE_WORKER`, `SUBSCRIPTION_TIER_AGENTSPACE_STARTER`, `SUBSCRIPTION_TIER_AGENTSPACE_BUSINESS`, `SUBSCRIPTION_TIER_ENTERPRISE`, `SUBSCRIPTION_TIER_EDU`, `SUBSCRIPTION_TIER_EDU_PRO`.
  final pulumi.Input<String> subscriptionTier;

  /// Creates a new [LicenseConfigArgs].
  /// [autoRenew] Whether the license config should be auto renewed when it reaches the end date.
  /// [endDate] The planned end date.
  /// [freeTrial] Whether the license config is for free trial.
  /// [licenseConfigId] The unique id of the license config.
  /// [licenseCount] Number of licenses purchased.
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [startDate] The start date.
  /// [subscriptionTerm] Subscription term.
  /// [subscriptionTier] Subscription tier information for the license config.
  LicenseConfigArgs({
    bool? autoRenew,
    LicenseConfigEndDate? endDate,
    bool? freeTrial,
    required String licenseConfigId,
    required int licenseCount,
    required String location,
    String? project,
    required LicenseConfigStartDate startDate,
    required String subscriptionTerm,
    required String subscriptionTier,
  }) :
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      endDate = pulumi.Input.asOptionalInput<LicenseConfigEndDate>(endDate),
      freeTrial = pulumi.Input.asOptionalInput<bool>(freeTrial),
      licenseConfigId = pulumi.Input.asInput<String>(licenseConfigId),
      licenseCount = pulumi.Input.asInput<int>(licenseCount),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      startDate = pulumi.Input.asInput<LicenseConfigStartDate>(startDate),
      subscriptionTerm = pulumi.Input.asInput<String>(subscriptionTerm),
      subscriptionTier = pulumi.Input.asInput<String>(subscriptionTier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'endDate': ?pulumi.Input.mapOptionalInputValue<LicenseConfigEndDate, Map<String, dynamic>>(endDate, (value) => value.toMap()),
      'freeTrial': ?freeTrial,
      'licenseConfigId': licenseConfigId,
      'licenseCount': licenseCount,
      'location': location,
      'project': ?project,
      'startDate': pulumi.Input.mapInputValue<LicenseConfigStartDate, Map<String, dynamic>>(startDate, (value) => value.toMap()),
      'subscriptionTerm': subscriptionTerm,
      'subscriptionTier': subscriptionTier,
    };
  }

  factory LicenseConfigArgs.fromMap(Map<String, dynamic> map) {
    return LicenseConfigArgs(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      endDate: map['endDate'] == null ? null : LicenseConfigEndDate.fromMap((map['endDate'] as Map).cast<String, dynamic>()),
      freeTrial: map['freeTrial'] == null ? null : map['freeTrial'] as bool,
      licenseConfigId: map['licenseConfigId'] as String,
      licenseCount: map['licenseCount'] as int,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      startDate: LicenseConfigStartDate.fromMap((map['startDate'] as Map).cast<String, dynamic>()),
      subscriptionTerm: map['subscriptionTerm'] as String,
      subscriptionTier: map['subscriptionTier'] as String,
    );
  }
}

