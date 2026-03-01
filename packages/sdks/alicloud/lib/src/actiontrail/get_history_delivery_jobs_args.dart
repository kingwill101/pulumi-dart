// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_actiontrail_get_history_delivery_jobs_get_history_delivery_jobs_args_doc}
/// Arguments for getHistoryDeliveryJobs.
/// {@endtemplate}
/// {@macro pulumi_actiontrail_get_history_delivery_jobs_get_history_delivery_jobs_args_doc}
class GetHistoryDeliveryJobsArgs {
  final pulumi.Input<bool>? enableDetails;
  /// A list of History Delivery Job IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the task. Valid values: `0`, `1`, `2`, `3`. `0`: The task is initializing. `1`: The task is delivering historical events. `2`: The delivery of historical events is complete. `3`: The task fails.
  final pulumi.Input<int>? status;

  /// Creates a new [GetHistoryDeliveryJobsArgs].
  /// [enableDetails] Optional.
  /// [ids] A list of History Delivery Job IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the task. Valid values: `0`, `1`, `2`, `3`. `0`: The task is initializing. `1`: The task is delivering historical events. `2`: The delivery of historical events is complete. `3`: The task fails.
  GetHistoryDeliveryJobsArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? status,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<int>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetHistoryDeliveryJobsArgs.fromMap(Map<String, dynamic> map) {
    return GetHistoryDeliveryJobsArgs(
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<int>(map['status'] as int),
    );
  }
}

