import 'package:pulumi/pulumi.dart';
import '../analytics_application_cloudwatch_logging_options/analytics_application_cloudwatch_logging_options.dart';
import '../analytics_application_inputs/analytics_application_inputs.dart';
import '../analytics_application_output/analytics_application_output.dart';
import '../analytics_application_reference_data_sources/analytics_application_reference_data_sources.dart';
import 'analytics_application_args.dart';

/// Provides a Kinesis Analytics Application resource. Kinesis Analytics is a managed service that
/// allows processing and analyzing streaming data using standard SQL.
///
/// For more details, see the [Amazon Kinesis Analytics Documentation](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/what-is.html).
///
/// !> **WARNING:** _This resource is deprecated and will be removed in a future version._ [Effective January 27, 2026](https://aws.amazon.com/blogs/big-data/migrate-from-amazon-kinesis-data-analytics-for-sql-to-amazon-managed-service-for-apache-flink-and-amazon-managed-service-for-apache-flink-studio/), AWS will [no longer support](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/discontinuation.html) Amazon Kinesis Data Analytics for SQL. Use the `aws.kinesisanalyticsv2.Application` resource instead to manage Amazon Kinesis Data Analytics for Apache Flink applications. AWS provides guidance for migrating from [Amazon Kinesis Data Analytics for SQL Applications to Amazon Managed Service for Apache Flink Studio](https://aws.amazon.com/blogs/big-data/migrate-from-amazon-kinesis-data-analytics-for-sql-applications-to-amazon-managed-service-for-apache-flink-studio/) including [examples](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/migrating-to-kda-studio-overview.html).
///
/// > **Note:** To manage Amazon Kinesis Data Analytics for Apache Flink applications, use the `aws.kinesisanalyticsv2.Application` resource.
///
/// ## Example Usage
///
/// ### Kinesis Stream Input
///
///
///
/// ### Starting An Application
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Kinesis Analytics Application using ARN. For example:
///
/// ```sh
/// $ pulumi import aws:kinesis/analyticsApplication:AnalyticsApplication example arn:aws:kinesisanalytics:us-west-2:1234567890:application/example
/// ```
class AnalyticsApplication extends CustomResource {
  /// The ARN of the Kinesis Analytics Appliation.
  late final Output<String> arn;

  /// The CloudWatch log stream options to monitor application errors.
  /// See CloudWatch Logging Options below for more details.
  late final Output<AnalyticsApplicationCloudwatchLoggingOptions?>
      cloudwatchLoggingOptions;

  /// SQL Code to transform input data, and generate output.
  late final Output<String?> code;

  /// The Timestamp when the application version was created.
  late final Output<String> createTimestamp;

  /// Description of the application.
  late final Output<String?> description;

  /// Input configuration of the application. See Inputs below for more details.
  late final Output<AnalyticsApplicationInputs?> inputs;

  /// The Timestamp when the application was last updated.
  late final Output<String> lastUpdateTimestamp;

  /// Name of the Kinesis Analytics Application.
  late final Output<String> name;

  /// Output destination configuration of the application. See Outputs below for more details.
  late final Output<List<AnalyticsApplicationOutput>?> outputs;

  /// An S3 Reference Data Source for the application.
  /// See Reference Data Sources below for more details.
  late final Output<AnalyticsApplicationReferenceDataSources?>
      referenceDataSources;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether to start or stop the Kinesis Analytics Application. To start an application, an input with a defined `starting_position` must be configured.
  /// To modify an application's starting position, first stop the application by setting `start_application = false`, then update `starting_position` and set `start_application = true`.
  late final Output<bool?> startApplication;

  /// The Status of the application.
  late final Output<String> status;

  /// Key-value map of tags for the Kinesis Analytics Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The Version of the application.
  late final Output<int> version;

  AnalyticsApplication(
    String name, {
    AnalyticsApplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kinesis/analyticsApplication:AnalyticsApplication',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cloudwatchLoggingOptions =
        registerOutput<AnalyticsApplicationCloudwatchLoggingOptions?>(
            'cloudwatchLoggingOptions');
    this.code = registerOutput<String?>('code');
    this.createTimestamp = registerOutput<String>('createTimestamp');
    this.description = registerOutput<String?>('description');
    this.inputs = registerOutput<AnalyticsApplicationInputs?>('inputs');
    this.lastUpdateTimestamp = registerOutput<String>('lastUpdateTimestamp');
    this.name = registerOutput<String>('name');
    this.outputs = registerOutput<List<AnalyticsApplicationOutput>?>('outputs');
    this.referenceDataSources =
        registerOutput<AnalyticsApplicationReferenceDataSources?>(
            'referenceDataSources');
    this.region = registerOutput<String>('region');
    this.startApplication = registerOutput<bool?>('startApplication');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<int>('version');
  }
}
