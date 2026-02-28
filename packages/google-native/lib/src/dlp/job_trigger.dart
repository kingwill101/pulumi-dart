import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_error_response.dart';
import 'google_privacy_dlp_v2_inspect_job_config_response.dart';
import 'google_privacy_dlp_v2_trigger_response.dart';
import 'job_trigger_args.dart';

/// Creates a job trigger to run DLP actions such as scanning storage for sensitive information on a set schedule. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
class JobTrigger extends pulumi.CustomResource {
  /// The creation timestamp of a triggeredJob.
  late final pulumi.Output<String> createTime;

  /// User provided description (max 256 chars)
  late final pulumi.Output<String> description;

  /// Display name (max 100 chars)
  late final pulumi.Output<String> displayName;

  /// A stream of errors encountered when the trigger was activated. Repeated errors may result in the JobTrigger automatically being paused. Will return the last 100 errors. Whenever the JobTrigger is modified this list will be cleared.
  late final pulumi.Output<List<GooglePrivacyDlpV2ErrorResponse>> errors;

  /// For inspect jobs, a snapshot of the configuration.
  late final pulumi.Output<GooglePrivacyDlpV2InspectJobConfigResponse>
      inspectJob;

  /// The timestamp of the last time this trigger executed.
  late final pulumi.Output<String> lastRunTime;
  late final pulumi.Output<String> location;

  /// Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is created, for example `projects/dlp-test-project/jobTriggers/53234423`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// A status for this trigger.
  late final pulumi.Output<String> status;

  /// A list of triggers which will be OR'ed together. Only one in the list needs to trigger for a job to be started. The list may contain only a single Schedule trigger and must have at least one object.
  late final pulumi.Output<List<GooglePrivacyDlpV2TriggerResponse>> triggers;

  /// The last update timestamp of a triggeredJob.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [JobTrigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobTrigger]. {@macro pulumi_dlp_v2_job_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobTrigger(
    String name, {
    JobTriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dlp/v2:JobTrigger',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.errors =
        registerOutput<List<GooglePrivacyDlpV2ErrorResponse>>('errors');
    this.inspectJob =
        registerOutput<GooglePrivacyDlpV2InspectJobConfigResponse>(
            'inspectJob');
    this.lastRunTime = registerOutput<String>('lastRunTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.status = registerOutput<String>('status');
    this.triggers =
        registerOutput<List<GooglePrivacyDlpV2TriggerResponse>>('triggers');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
