import 'package:pulumi/pulumi.dart' as pulumi;
import '../job_copy/job_copy.dart';
import '../job_extract/job_extract.dart';
import '../job_load/job_load.dart';
import '../job_query/job_query.dart';
import '../job_status/job_status.dart';
import 'job_args.dart';

/// Jobs are actions that BigQuery runs on your behalf to load data, export data, query data, or copy data.
/// Once a BigQuery job is created, it cannot be changed or deleted.
///
///
/// To get more information about Job, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs)
/// * How-to Guides
/// * [BigQuery Jobs Intro](https://cloud.google.com/bigquery/docs/jobs-overview)
///
/// ## Example Usage
///
/// ### Bigquery Job Query
///
///
///
/// ### Bigquery Job Query Table Reference
///
///
///
/// ### Bigquery Job Load
///
///
///
/// ### Bigquery Job Load Geojson
///
///
///
/// ### Bigquery Job Load Parquet
///
///
///
/// ### Bigquery Job Copy
///
///
///
/// ### Bigquery Job Extract
///
///
///
///
/// ## Import
///
/// Job can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/jobs/{{job_id}}/location/{{location}}`
///
/// * `projects/{{project}}/jobs/{{job_id}}`
///
/// * `{{project}}/{{job_id}}/{{location}}`
///
/// * `{{job_id}}/{{location}}`
///
/// * `{{project}}/{{job_id}}`
///
/// * `{{job_id}}`
///
/// When using the `pulumi import` command, Job can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/job:Job default projects/{{project}}/jobs/{{job_id}}/location/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/job:Job default projects/{{project}}/jobs/{{job_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/job:Job default {{project}}/{{job_id}}/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/job:Job default {{job_id}}/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/job:Job default {{project}}/{{job_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/job:Job default {{job_id}}
/// ```
class Job extends pulumi.CustomResource {
  /// Copies a table.
  /// Structure is documented below.
  late final pulumi.Output<JobCopy?> copy;

  /// (Output)
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Configures an extract job.
  /// Structure is documented below.
  late final pulumi.Output<JobExtract?> extract;

  /// The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
  late final pulumi.Output<String> jobId;

  /// Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.
  late final pulumi.Output<String?> jobTimeoutMs;

  /// (Output)
  /// The type of the job.
  late final pulumi.Output<String> jobType;

  /// The labels associated with this job. You can use these to organize and group your jobs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Configures a load job.
  /// Structure is documented below.
  late final pulumi.Output<JobLoad?> load;

  /// The geographic location of the job. The default value is US.
  late final pulumi.Output<String?> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// (Output)
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Configures a query job.
  /// Structure is documented below.
  late final pulumi.Output<JobQuery?> query;

  /// The reservation that job would use. User can specify a reservation to execute the job. If this field is not set, reservation is determined based on the rules defined by the reservation assignments.
  /// The expected format is `projects/{project}/locations/{location}/reservations/{reservation}`.
  late final pulumi.Output<String?> reservation;

  /// The status of this job. Examine this value when polling an asynchronous job to see if the job is complete.
  /// Structure is documented below.
  late final pulumi.Output<List<JobStatus>> statuses;

  /// Email address of the user who ran the job.
  late final pulumi.Output<String> userEmail;

  Job(
    String name, {
    JobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/job:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.copy = registerOutput<JobCopy?>('copy');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.extract = registerOutput<JobExtract?>('extract');
    this.jobId = registerOutput<String>('jobId');
    this.jobTimeoutMs = registerOutput<String?>('jobTimeoutMs');
    this.jobType = registerOutput<String>('jobType');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.load = registerOutput<JobLoad?>('load');
    this.location = registerOutput<String?>('location');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.query = registerOutput<JobQuery?>('query');
    this.reservation = registerOutput<String?>('reservation');
    this.statuses = registerOutput<List<JobStatus>>('statuses');
    this.userEmail = registerOutput<String>('userEmail');
  }
}
