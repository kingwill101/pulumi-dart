import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_bigquery_v2_args.dart';
import 'job_configuration_response.dart';
import 'job_reference_response.dart';
import 'job_statistics_response.dart';
import 'job_status_response_bigquery_v2.dart';

/// Starts a new asynchronous job. Requires the Can View project role.
/// Auto-naming is currently not supported for this resource.
class JobBigqueryV2 extends pulumi.CustomResource {
  /// [Required] Describes the job configuration.
  late final pulumi.Output<JobConfigurationResponse> configuration;

  /// A hash of this resource.
  late final pulumi.Output<String> etag;

  /// If set, it provides the reason why a Job was created. If not set, it should be treated as the default: REQUESTED. This feature is not yet available. Jobs will always be created.
  late final pulumi.Output<dynamic> jobCreationReason;

  /// [Optional] Reference describing the unique-per-user name of the job.
  late final pulumi.Output<JobReferenceResponse> jobReference;

  /// The type of the resource.
  late final pulumi.Output<String> kind;
  late final pulumi.Output<String> project;

  /// A URL that can be used to access this resource again.
  late final pulumi.Output<String> selfLink;

  /// Information about the job, including starting time and ending time of the job.
  late final pulumi.Output<JobStatisticsResponse> statistics;

  /// The status of this job. Examine this value when polling an asynchronous job to see if the job is complete.
  late final pulumi.Output<JobStatusResponseBigqueryV2> status;

  /// Email address of the user who ran the job.
  late final pulumi.Output<String> userEmail;

  JobBigqueryV2(
    String name, {
    JobBigqueryV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:bigquery/v2:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configuration =
        registerOutput<JobConfigurationResponse>('configuration');
    this.etag = registerOutput<String>('etag');
    this.jobCreationReason = registerOutput<dynamic>('jobCreationReason');
    this.jobReference = registerOutput<JobReferenceResponse>('jobReference');
    this.kind = registerOutput<String>('kind');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.statistics = registerOutput<JobStatisticsResponse>('statistics');
    this.status = registerOutput<JobStatusResponseBigqueryV2>('status');
    this.userEmail = registerOutput<String>('userEmail');
  }
}
