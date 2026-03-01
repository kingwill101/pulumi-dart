// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasefilesystem_auto_snap_shot_policy_auto_snap_shot_policy_args_doc}
/// The set of arguments for AutoSnapShotPolicy.
/// {@endtemplate}
/// {@macro pulumi_databasefilesystem_auto_snap_shot_policy_auto_snap_shot_policy_args_doc}
class AutoSnapShotPolicyArgs {
  /// Automatic snapshot policy name
  final pulumi.Input<String> policyName;
  /// A collection of automatic snapshots performed on several days of the week. Value range: 1~7, for example, `1` means Monday.
  final pulumi.Input<List<String>> repeatWeekdays;
  /// Automatic snapshot retention days.
  final pulumi.Input<int> retentionDays;
  /// The set of times at which the snapshot is taken on the day the automatic snapshot is executed. Value range: `00` to `23`, representing 24 time points from 00:00 to 23:00, for example, `01` indicates 01:00.
  final pulumi.Input<List<String>> timePoints;

  /// Creates a new [AutoSnapShotPolicyArgs].
  /// [policyName] Automatic snapshot policy name
  /// [repeatWeekdays] A collection of automatic snapshots performed on several days of the week. Value range: 1~7, for example, `1` means Monday.
  /// [retentionDays] Automatic snapshot retention days.
  /// [timePoints] The set of times at which the snapshot is taken on the day the automatic snapshot is executed. Value range: `00` to `23`, representing 24 time points from 00:00 to 23:00, for example, `01` indicates 01:00.
  AutoSnapShotPolicyArgs({
    required pulumi.Output<String> policyName,
    required pulumi.Output<List<String>> repeatWeekdays,
    required pulumi.Output<int> retentionDays,
    required pulumi.Output<List<String>> timePoints,
  }) :
      policyName = pulumi.Input.asInput<String>(policyName),
      repeatWeekdays = pulumi.Input.asInput<List<String>>(repeatWeekdays),
      retentionDays = pulumi.Input.asInput<int>(retentionDays),
      timePoints = pulumi.Input.asInput<List<String>>(timePoints);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': policyName,
      'repeatWeekdays': repeatWeekdays,
      'retentionDays': retentionDays,
      'timePoints': timePoints,
    };
  }

  factory AutoSnapShotPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AutoSnapShotPolicyArgs(
      policyName: pulumi.Output.create<String>(map['policyName'] as String),
      repeatWeekdays: pulumi.Output.create<List<String>>((map['repeatWeekdays'] as List).cast<String>()),
      retentionDays: pulumi.Output.create<int>(map['retentionDays'] as int),
      timePoints: pulumi.Output.create<List<String>>((map['timePoints'] as List).cast<String>()),
    );
  }
}

