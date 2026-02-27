import 'package:pulumi/pulumi.dart' as pulumi;
import '../metric_bucket_options/metric_bucket_options.dart';
import '../metric_metric_descriptor/metric_metric_descriptor.dart';
import 'metric_args.dart';

/// Logs-based metric can also be used to extract values from logs and create a a distribution
/// of the values. The distribution records the statistics of the extracted values along with
/// an optional histogram of the values as specified by the bucket options.
///
///
/// To get more information about Metric, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects.metrics/create)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/logging/docs/apis)
///
/// ## Example Usage
///
/// ### Logging Metric Basic
///
///
///
/// ### Logging Metric Counter Basic
///
///
///
/// ### Logging Metric Counter Labels
///
///
///
/// ### Logging Metric Logging Bucket
///
///
///
/// ### Logging Metric Disabled
///
///
///
///
/// ## Import
///
/// Metric can be imported using any of these accepted formats:
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Metric can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/metric:Metric default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:logging/metric:Metric default {{name}}
/// ```
class Metric extends pulumi.CustomResource {
  /// The resource name of the Log Bucket that owns the Log Metric. Only Log Buckets in projects
  /// are supported. The bucket has to be in the same project as the metric.
  late final pulumi.Output<String?> bucketName;

  /// The bucketOptions are required when the logs-based metric is using a DISTRIBUTION value type and it
  /// describes the bucket boundaries used to create a histogram of the extracted values.
  /// Structure is documented below.
  late final pulumi.Output<MetricBucketOptions?> bucketOptions;

  /// A description of this metric, which is used in documentation. The maximum length of the
  /// description is 8000 characters.
  late final pulumi.Output<String?> description;

  /// If set to True, then this metric is disabled and it does not generate any points.
  late final pulumi.Output<bool?> disabled;

  /// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-filters) which
  /// is used to match log entries.
  late final pulumi.Output<String> filter;

  /// A map from a label key string to an extractor expression which is used to extract data from a log
  /// entry field and assign as the label value. Each label key specified in the LabelDescriptor must
  /// have an associated extractor expression in this map. The syntax of the extractor expression is
  /// the same as for the valueExtractor field.
  late final pulumi.Output<Map<String, String>?> labelExtractors;

  /// The optional metric descriptor associated with the logs-based metric.
  /// If unspecified, it uses a default metric descriptor with a DELTA metric kind,
  /// INT64 value type, with no labels and a unit of "1". Such a metric counts the
  /// number of log entries matching the filter expression.
  /// Structure is documented below.
  late final pulumi.Output<MetricMetricDescriptor> metricDescriptor;

  /// The client-assigned metric identifier. Examples - "error_count", "nginx/requests".
  /// Metric identifiers are limited to 100 characters and can include only the following
  /// characters A-Z, a-z, 0-9, and the special characters _-.,+!*',()%/. The forward-slash
  /// character (/) denotes a hierarchy of name pieces, and it cannot be the first character
  /// of the name.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// A valueExtractor is required when using a distribution logs-based metric to extract the values to
  /// record from a log entry. Two functions are supported for value extraction - EXTRACT(field) or
  /// REGEXP_EXTRACT(field, regex). The argument are 1. field - The name of the log entry field from which
  /// the value is to be extracted. 2. regex - A regular expression using the Google RE2 syntax
  /// (https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified
  /// log entry field. The value of the field is converted to a string before applying the regex. It is an
  /// error to specify a regex that does not include exactly one capture group.
  late final pulumi.Output<String?> valueExtractor;

  Metric(
    String name, {
    MetricArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/metric:Metric',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucketName = registerOutput<String?>('bucketName');
    this.bucketOptions = registerOutput<MetricBucketOptions?>('bucketOptions');
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.filter = registerOutput<String>('filter');
    this.labelExtractors =
        registerOutput<Map<String, String>?>('labelExtractors');
    this.metricDescriptor =
        registerOutput<MetricMetricDescriptor>('metricDescriptor');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.valueExtractor = registerOutput<String?>('valueExtractor');
  }
}
