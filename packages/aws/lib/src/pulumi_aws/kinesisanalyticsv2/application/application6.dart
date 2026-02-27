import 'package:pulumi/pulumi.dart';
import '../application_application_configuration/application_application_configuration.dart';
import '../application_cloudwatch_logging_options/application_cloudwatch_logging_options.dart';
import 'application_args6.dart';

/// Manages a Kinesis Analytics v2 Application.
/// This resource can be used to manage both Kinesis Data Analytics for SQL applications and Kinesis Data Analytics for Apache Flink applications.
///
/// > **Note:** Kinesis Data Analytics for SQL applications created using this resource cannot currently be viewed in the AWS Console. To manage Kinesis Data Analytics for SQL applications that can also be viewed in the AWS Console, use the `aws.kinesis.AnalyticsApplication` resource.
///
/// ## Example Usage
///
/// ### Apache Flink Application
///
///
///
/// ### SQL Application
///
///
///
/// ### VPC Configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.kinesisanalyticsv2.Application` using the application ARN. For example:
///
/// ```sh
/// $ pulumi import aws:kinesisanalyticsv2/application:Application example arn:aws:kinesisanalytics:us-west-2:123456789012:application/example-sql-application
/// ```
class Application6 extends CustomResource {
  /// The application's configuration
  late final Output<ApplicationApplicationConfiguration>
      applicationConfiguration;

  /// The application's mode. Valid values are `STREAMING`, `INTERACTIVE`.
  late final Output<String> applicationMode;

  /// The ARN of the application.
  late final Output<String> arn;

  /// A CloudWatch log stream to monitor application configuration errors.
  late final Output<ApplicationCloudwatchLoggingOptions?>
      cloudwatchLoggingOptions;

  /// The current timestamp when the application was created.
  late final Output<String> createTimestamp;

  /// A summary description of the application.
  late final Output<String?> description;

  /// Whether to force stop an unresponsive Flink-based application.
  late final Output<bool?> forceStop;

  /// The current timestamp when the application was last updated.
  late final Output<String> lastUpdateTimestamp;

  /// The name of the application.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The runtime environment for the application. Valid values: `SQL-1_0`, `FLINK-1_6`, `FLINK-1_8`, `FLINK-1_11`, `FLINK-1_13`, `FLINK-1_15`, `FLINK-1_18`, `FLINK-1_19`, `FLINK-1_20`.
  late final Output<String> runtimeEnvironment;

  /// The ARN of the IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose delivery streams, Amazon S3 objects, and other external resources.
  late final Output<String> serviceExecutionRole;

  /// Whether to start or stop the application.
  late final Output<bool?> startApplication;

  /// The status of the application.
  late final Output<String> status;

  /// A map of tags to assign to the application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The current application version. Kinesis Data Analytics updates the `version_id` each time the application is updated.
  late final Output<int> versionId;

  Application6(
    String name, {
    ApplicationArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kinesisanalyticsv2/application:Application',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationConfiguration =
        registerOutput<ApplicationApplicationConfiguration>(
            'applicationConfiguration');
    this.applicationMode = registerOutput<String>('applicationMode');
    this.arn = registerOutput<String>('arn');
    this.cloudwatchLoggingOptions =
        registerOutput<ApplicationCloudwatchLoggingOptions?>(
            'cloudwatchLoggingOptions');
    this.createTimestamp = registerOutput<String>('createTimestamp');
    this.description = registerOutput<String?>('description');
    this.forceStop = registerOutput<bool?>('forceStop');
    this.lastUpdateTimestamp = registerOutput<String>('lastUpdateTimestamp');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.runtimeEnvironment = registerOutput<String>('runtimeEnvironment');
    this.serviceExecutionRole = registerOutput<String>('serviceExecutionRole');
    this.startApplication = registerOutput<bool?>('startApplication');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.versionId = registerOutput<int>('versionId');
  }
}
