// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dts_get_subscription_jobs_get_subscription_jobs_args_doc}
/// Arguments for getSubscriptionJobs.
/// {@endtemplate}
/// {@macro pulumi_dts_get_subscription_jobs_get_subscription_jobs_args_doc}
class GetSubscriptionJobsArgs {
  final pulumi.Input<bool>? enableDetails;
  /// A list of Subscription Job IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by subscription job name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the task. Valid values: `Abnormal`, `Downgrade`, `Locked`, `Normal`, `NotStarted`, `NotStarted`, `PreCheckPass`, `PrecheckFailed`, `Prechecking`, `Retrying`, `Starting`, `Upgrade`.
  final pulumi.Input<String>? status;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSubscriptionJobsArgs].
  /// [enableDetails] Optional.
  /// [ids] A list of Subscription Job IDs.
  /// [nameRegex] A regex string to filter results by subscription job name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the task. Valid values: `Abnormal`, `Downgrade`, `Locked`, `Normal`, `NotStarted`, `NotStarted`, `PreCheckPass`, `PrecheckFailed`, `Prechecking`, `Retrying`, `Starting`, `Upgrade`.
  /// [tags] Optional.
  GetSubscriptionJobsArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetSubscriptionJobsArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionJobsArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

