import 'package:pulumi/pulumi.dart';
import '../metric_descriptor_label/metric_descriptor_label.dart';
import '../metric_descriptor_metadata/metric_descriptor_metadata.dart';
import 'metric_descriptor_args.dart';

/// Defines a metric type and its schema. Once a metric descriptor is created, deleting or altering it stops data collection and makes the metric type's existing data unusable.
///
///
/// To get more information about MetricDescriptor, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/monitoring/custom-metrics/)
///
/// ## Example Usage
///
/// ### Monitoring Metric Descriptor Basic
///
///
///
/// ### Monitoring Metric Descriptor Alert
///
///
///
///
/// ## Import
///
/// MetricDescriptor can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, MetricDescriptor can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/metricDescriptor:MetricDescriptor default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/metricDescriptor:MetricDescriptor default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/metricDescriptor:MetricDescriptor default {{name}}
/// ```
class MetricDescriptor extends CustomResource {
  /// A detailed description of the metric, which can be used in documentation.
  late final Output<String?> description;

  /// A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example "Request count".
  late final Output<String?> displayName;

  /// The set of labels that can be used to describe a specific instance of this metric type. In order to delete a label, the entire resource must be deleted, then created with the desired labels.
  /// Structure is documented below.
  late final Output<List<MetricDescriptorLabel>?> labels;

  /// The launch stage of the metric definition.
  /// Possible values are: `LAUNCH_STAGE_UNSPECIFIED`, `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  late final Output<String?> launchStage;

  /// Metadata which can be used to guide usage of the metric.
  /// Structure is documented below.
  late final Output<MetricDescriptorMetadata?> metadata;

  /// Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metricKind and valueType might not be supported.
  /// Possible values are: `METRIC_KIND_UNSPECIFIED`, `GAUGE`, `DELTA`, `CUMULATIVE`.
  late final Output<String> metricKind;

  /// If present, then a time series, which is identified partially by a metric type and a MonitoredResourceDescriptor, that is associated with this metric type can only be associated with one of the monitored resource types listed here. This field allows time series to be associated with the intersection of this metric type and the monitored resource types in this list.
  late final Output<List<String>> monitoredResourceTypes;

  /// The resource name of the metric descriptor.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The metric type, including its DNS name prefix. The type is not URL-encoded. All service defined metrics must be prefixed with the service name, in the format of {service name}/{relative metric name}, such as cloudsql.googleapis.com/database/cpu/utilization. The relative metric name must have only upper and lower-case letters, digits, '/' and underscores '_' are allowed. Additionally, the maximum number of characters allowed for the relative_metric_name is 100. All user-defined metric types have the DNS name custom.googleapis.com, external.googleapis.com, or logging.googleapis.com/user/.
  late final Output<String> type;

  /// The units in which the metric value is reported. It is only applicable if the
  /// valueType is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of
  /// the stored metric values.
  /// Different systems may scale the values to be more easily displayed (so a value of
  /// 0.02KBy might be displayed as 20By, and a value of 3523KBy might be displayed as
  /// 3.5MBy). However, if the unit is KBy, then the value of the metric is always in
  /// thousands of bytes, no matter how it may be displayed.
  /// If you want a custom metric to record the exact number of CPU-seconds used by a job,
  /// you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently
  /// 1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as
  /// 12005.
  /// Alternatively, if you want a custom metric to record data in a more granular way, you
  /// can create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value
  /// 12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).
  /// The supported units are a subset of The Unified Code for Units of Measure standard.
  /// More info can be found in the API documentation
  /// (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors).
  late final Output<String?> unit;

  /// Whether the measurement is an integer, a floating-point number, etc. Some combinations of metricKind and valueType might not be supported.
  /// Possible values are: `BOOL`, `INT64`, `DOUBLE`, `STRING`, `DISTRIBUTION`.
  late final Output<String> valueType;

  MetricDescriptor(
    String name, {
    MetricDescriptorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/metricDescriptor:MetricDescriptor',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.labels = registerOutput<List<MetricDescriptorLabel>?>('labels');
    this.launchStage = registerOutput<String?>('launchStage');
    this.metadata = registerOutput<MetricDescriptorMetadata?>('metadata');
    this.metricKind = registerOutput<String>('metricKind');
    this.monitoredResourceTypes =
        registerOutput<List<String>>('monitoredResourceTypes');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.type = registerOutput<String>('type');
    this.unit = registerOutput<String?>('unit');
    this.valueType = registerOutput<String>('valueType');
  }
}
