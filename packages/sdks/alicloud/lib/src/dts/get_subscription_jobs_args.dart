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
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

