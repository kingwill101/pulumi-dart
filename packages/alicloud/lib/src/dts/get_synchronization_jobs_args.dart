// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dts_get_synchronization_jobs_get_synchronization_jobs_args_doc}
/// Arguments for getSynchronizationJobs.
/// {@endtemplate}
/// {@macro pulumi_dts_get_synchronization_jobs_get_synchronization_jobs_args_doc}
class GetSynchronizationJobsArgs {
  final pulumi.Input<bool>? enableDetails;
  /// A list of Synchronization Job IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by synchronization job name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values: `Synchronizing`, `Suspending`. `Downgrade`, `Failed`, `Finished`, `InitializeFailed`, `Locked`, `Modifying`, `NotConfigured`, `NotStarted`, `PreCheckPass`, `PrecheckFailed`, `Prechecking`, `Retrying`, `Upgrade`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetSynchronizationJobsArgs].
  /// [enableDetails] Optional.
  /// [ids] A list of Synchronization Job IDs.
  /// [nameRegex] A regex string to filter results by synchronization job name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values: `Synchronizing`, `Suspending`. `Downgrade`, `Failed`, `Finished`, `InitializeFailed`, `Locked`, `Modifying`, `NotConfigured`, `NotStarted`, `PreCheckPass`, `PrecheckFailed`, `Prechecking`, `Retrying`, `Upgrade`.
  GetSynchronizationJobsArgs({
    bool? enableDetails,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? status,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetSynchronizationJobsArgs.fromMap(Map<String, dynamic> map) {
    return GetSynchronizationJobsArgs(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

