import 'package:pulumi/pulumi.dart' as pulumi;
import '../scheduled_query_error_report_configuration/scheduled_query_error_report_configuration.dart';
import '../scheduled_query_last_run_summary/scheduled_query_last_run_summary.dart';
import '../scheduled_query_notification_configuration/scheduled_query_notification_configuration.dart';
import '../scheduled_query_recently_failed_run/scheduled_query_recently_failed_run.dart';
import '../scheduled_query_schedule_configuration/scheduled_query_schedule_configuration.dart';
import '../scheduled_query_target_configuration/scheduled_query_target_configuration.dart';
import '../scheduled_query_timeouts/scheduled_query_timeouts.dart';
import 'scheduled_query_args.dart';

/// Resource for managing an AWS Timestream Query Scheduled Query.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// Before creating a scheduled query, you must have a source database and table with ingested data. Below is a multi-step example, providing an opportunity for data ingestion.
///
/// If your infrastructure is already set up—including the source database and table with data, results database and table, error report S3 bucket, SNS topic, and IAM role—you can create a scheduled query as follows:
///
///
///
/// ### Multi-step Example
///
/// To ingest data before creating a scheduled query, this example provides multiple steps:
///
/// 1. Create the prerequisite infrastructure
/// 2. Ingest data
/// 3. Create the scheduled query
///
/// ### Step 1. Create the prerequisite infrastructure
///
///
///
/// #### Step 2. Ingest data
///
/// This is done with Amazon Timestream Write [WriteRecords](https://docs.aws.amazon.com/timestream/latest/developerguide/API_WriteRecords.html).
///
/// ### Step 3. Create the scheduled query
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Timestream Query Scheduled Query using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:timestreamquery/scheduledQuery:ScheduledQuery example arn:aws:timestream:us-west-2:012345678901:scheduled-query/tf-acc-test-7774188528604787105-e13659544fe66c8d
/// ```
class ScheduledQuery extends pulumi.CustomResource {
  /// ARN of the Scheduled Query.
  late final pulumi.Output<String> arn;

  /// Creation time for the scheduled query.
  late final pulumi.Output<String> creationTime;

  /// Configuration block for error reporting configuration. See below.
  late final pulumi.Output<ScheduledQueryErrorReportConfiguration>
      errorReportConfiguration;

  /// ARN for the IAM role that Timestream will assume when running the scheduled query.
  late final pulumi.Output<String> executionRoleArn;

  /// Amazon KMS key used to encrypt the scheduled query resource, at-rest. If not specified, the scheduled query resource will be encrypted with a Timestream owned Amazon KMS key. To specify a KMS key, use the key ID, key ARN, alias name, or alias ARN. When using an alias name, prefix the name with "alias/". If `error_report_configuration` uses `SSE_KMS` as the encryption type, the same `kms_key_id` is used to encrypt the error report at rest.
  late final pulumi.Output<String?> kmsKeyId;

  /// Runtime summary for the last scheduled query run.
  late final pulumi.Output<List<ScheduledQueryLastRunSummary>?>
      lastRunSummaries;

  /// Name of the scheduled query.
  late final pulumi.Output<String> name;

  /// Next time the scheduled query is scheduled to run.
  late final pulumi.Output<String> nextInvocationTime;

  /// Configuration block for notification configuration for a scheduled query. A notification is sent by Timestream when a scheduled query is created, its state is updated, or when it is deleted. See below.
  late final pulumi.Output<ScheduledQueryNotificationConfiguration>
      notificationConfiguration;

  /// Last time the scheduled query was run.
  late final pulumi.Output<String> previousInvocationTime;

  /// Query string to run. Parameter names can be specified in the query string using the `@` character followed by an identifier. The named parameter `@scheduled_runtime` is reserved and can be used in the query to get the time at which the query is scheduled to run. The timestamp calculated according to the `schedule_configuration` parameter, will be the value of `@scheduled_runtime` paramater for each query run. For example, consider an instance of a scheduled query executing on 2021-12-01 00:00:00. For this instance, the `@scheduled_runtime` parameter is initialized to the timestamp 2021-12-01 00:00:00 when invoking the query.
  late final pulumi.Output<String> queryString;

  /// Runtime summary for the last five failed scheduled query runs.
  late final pulumi.Output<List<ScheduledQueryRecentlyFailedRun>?>
      recentlyFailedRuns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block for schedule configuration for the query. See below.
  late final pulumi.Output<ScheduledQueryScheduleConfiguration>
      scheduleConfiguration;

  /// State of the scheduled query, either `ENABLED` or `DISABLED`.
  late final pulumi.Output<String> state;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Configuration block for writing the result of a query. See below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ScheduledQueryTargetConfiguration>
      targetConfiguration;
  late final pulumi.Output<ScheduledQueryTimeouts?> timeouts;

  ScheduledQuery(
    String name, {
    ScheduledQueryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:timestreamquery/scheduledQuery:ScheduledQuery',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationTime = registerOutput<String>('creationTime');
    this.errorReportConfiguration =
        registerOutput<ScheduledQueryErrorReportConfiguration>(
            'errorReportConfiguration');
    this.executionRoleArn = registerOutput<String>('executionRoleArn');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.lastRunSummaries =
        registerOutput<List<ScheduledQueryLastRunSummary>?>('lastRunSummaries');
    this.name = registerOutput<String>('name');
    this.nextInvocationTime = registerOutput<String>('nextInvocationTime');
    this.notificationConfiguration =
        registerOutput<ScheduledQueryNotificationConfiguration>(
            'notificationConfiguration');
    this.previousInvocationTime =
        registerOutput<String>('previousInvocationTime');
    this.queryString = registerOutput<String>('queryString');
    this.recentlyFailedRuns =
        registerOutput<List<ScheduledQueryRecentlyFailedRun>?>(
            'recentlyFailedRuns');
    this.region = registerOutput<String>('region');
    this.scheduleConfiguration =
        registerOutput<ScheduledQueryScheduleConfiguration>(
            'scheduleConfiguration');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetConfiguration =
        registerOutput<ScheduledQueryTargetConfiguration>(
            'targetConfiguration');
    this.timeouts = registerOutput<ScheduledQueryTimeouts?>('timeouts');
  }
}
