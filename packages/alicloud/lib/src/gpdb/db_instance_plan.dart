import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_plan_args.dart';
import 'db_instance_plan_plan_config.dart';

/// Provides a AnalyticDB for PostgreSQL (GPDB) DB Instance Plan resource.
///
/// For information about AnalyticDB for PostgreSQL (GPDB) DB Instance Plan and how to use it, see [What is DB Instance Plan](https://www.alibabacloud.com/help/en/analyticdb-for-postgresql/developer-reference/api-gpdb-2016-05-03-createdbinstanceplan).
///
/// > **NOTE:** Available since v1.189.0.
///
/// ## Import
///
/// GPDB DB Instance Plan can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/dbInstancePlan:DbInstancePlan example <db_instance_id>:<plan_id>
/// ```
class DbInstancePlan extends pulumi.CustomResource {
  /// The ID of the GPDB instance.
  late final pulumi.Output<String> dbInstanceId;
  /// The name of the Plan.
  late final pulumi.Output<String> dbInstancePlanName;
  /// The execution information of the plan. See `plan_config` below.
  late final pulumi.Output<List<DbInstancePlanPlanConfig>> planConfigs;
  /// The description of the Plan.
  late final pulumi.Output<String?> planDesc;
  /// The end time of the Plan.
  late final pulumi.Output<String?> planEndDate;
  /// The ID of the plan.
  late final pulumi.Output<String> planId;
  /// The execution mode of the plan. Valid values: `Postpone`, `Regular`.
  late final pulumi.Output<String> planScheduleType;
  /// The start time of the Plan.
  late final pulumi.Output<String> planStartDate;
  /// The type of the Plan. Valid values: `PauseResume`, `Resize`.
  late final pulumi.Output<String> planType;
  /// The Status of the Plan. Valid values: `active`, `cancel`.
  late final pulumi.Output<String> status;

  /// Creates a new [DbInstancePlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DbInstancePlan]. {@macro pulumi_gpdb_db_instance_plan_db_instance_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DbInstancePlan(
    String name, {
    DbInstancePlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/dbInstancePlan:DbInstancePlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.dbInstancePlanName = registerOutput<String>('dbInstancePlanName');
    this.planConfigs = registerOutput<List<DbInstancePlanPlanConfig>>('planConfigs');
    this.planDesc = registerOutput<String?>('planDesc');
    this.planEndDate = registerOutput<String?>('planEndDate');
    this.planId = registerOutput<String>('planId');
    this.planScheduleType = registerOutput<String>('planScheduleType');
    this.planStartDate = registerOutput<String>('planStartDate');
    this.planType = registerOutput<String>('planType');
    this.status = registerOutput<String>('status');
  }
}
