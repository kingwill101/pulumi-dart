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
    this.enableDetails,
    this.ids,
    this.outputFile,
    this.status,
  });

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
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
