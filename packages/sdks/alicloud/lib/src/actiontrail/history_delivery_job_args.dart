// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_actiontrail_history_delivery_job_history_delivery_job_args_doc}
/// The set of arguments for HistoryDeliveryJob.
/// {@endtemplate}
/// {@macro pulumi_actiontrail_history_delivery_job_history_delivery_job_args_doc}
class HistoryDeliveryJobArgs {
  /// The Track Name.
  final pulumi.Input<String> trailName;

  /// Creates a new [HistoryDeliveryJobArgs].
  /// [trailName] The Track Name.
  HistoryDeliveryJobArgs({
    required pulumi.Output<String> trailName,
  }) :
      trailName = pulumi.Input.asInput<String>(trailName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trailName': trailName,
    };
  }

  factory HistoryDeliveryJobArgs.fromMap(Map<String, dynamic> map) {
    return HistoryDeliveryJobArgs(
      trailName: pulumi.Output.create<String>(map['trailName'] as String),
    );
  }
}

