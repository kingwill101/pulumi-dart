import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_schedule_args.dart';
import 'quota_schedule_schedule_list.dart';
import 'quota_schedule_state.dart';

/// ## Import
///
/// Max Compute Quota Schedule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:maxcompute/quotaSchedule:QuotaSchedule example <nickname>:<timezone>
/// ```
class QuotaSchedule extends pulumi.CustomResource {
  /// The nickname of level-1 compute quota.
  late final pulumi.Output<String> nickname;
  /// schedule list See `schedule_list` below.
  late final pulumi.Output<List<QuotaScheduleScheduleList>?> scheduleLists;
  /// Time zone, reference value: UTC +8
  late final pulumi.Output<String> timezone;

  /// Creates a new [QuotaSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QuotaSchedule]. {@macro pulumi_maxcompute_quota_schedule_quota_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QuotaSchedule(
    String name, {
    QuotaScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:maxcompute/quotaSchedule:QuotaSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.nickname = registerOutput<String>('nickname');
    this.scheduleLists = registerOutput<List<QuotaScheduleScheduleList>?>('scheduleLists');
    this.timezone = registerOutput<String>('timezone');
  }

  /// Gets an existing [QuotaSchedule] resource's state with the given [name] and [id].
  static QuotaSchedule get(
    String name,
    pulumi.Input<String> id, {
    QuotaScheduleState? state,
  }) {
    return QuotaSchedule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  QuotaSchedule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:maxcompute/quotaSchedule:QuotaSchedule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.nickname = registerOutput<String>('nickname');
    this.scheduleLists = registerOutput<List<QuotaScheduleScheduleList>?>('scheduleLists');
    this.timezone = registerOutput<String>('timezone');
  }
}
