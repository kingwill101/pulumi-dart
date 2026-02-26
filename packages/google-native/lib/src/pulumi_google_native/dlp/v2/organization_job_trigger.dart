import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_error_response.dart';
import 'google_privacy_dlp_v2_inspect_job_config_response.dart';
import 'google_privacy_dlp_v2_trigger_response.dart';
import 'organization_job_trigger_args.dart';

/// Creates a job trigger to run DLP actions such as scanning storage for sensitive information on a set schedule. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
/// Auto-naming is currently not supported for this resource.
class OrganizationJobTrigger extends CustomResource {
  /// The creation timestamp of a triggeredJob.
  late final Output<String> createTime;

  /// User provided description (max 256 chars)
  late final Output<String> description;

  /// Display name (max 100 chars)
  late final Output<String> displayName;

  /// A stream of errors encountered when the trigger was activated. Repeated errors may result in the JobTrigger automatically being paused. Will return the last 100 errors. Whenever the JobTrigger is modified this list will be cleared.
  late final Output<List<GooglePrivacyDlpV2ErrorResponse>> errors;

  /// For inspect jobs, a snapshot of the configuration.
  late final Output<GooglePrivacyDlpV2InspectJobConfigResponse> inspectJob;

  /// The timestamp of the last time this trigger executed.
  late final Output<String> lastRunTime;
  late final Output<String> location;

  /// Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is created, for example `projects/dlp-test-project/jobTriggers/53234423`.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// A status for this trigger.
  late final Output<String> status;

  /// A list of triggers which will be OR'ed together. Only one in the list needs to trigger for a job to be started. The list may contain only a single Schedule trigger and must have at least one object.
  late final Output<List<GooglePrivacyDlpV2TriggerResponse>> triggers;

  /// The last update timestamp of a triggeredJob.
  late final Output<String> updateTime;

  OrganizationJobTrigger(
    String name, {
    OrganizationJobTriggerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dlp/v2:OrganizationJobTrigger',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.errors = Output.createUnknown<List<GooglePrivacyDlpV2ErrorResponse>>();
    this.inspectJob =
        Output.createUnknown<GooglePrivacyDlpV2InspectJobConfigResponse>();
    this.lastRunTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.triggers =
        Output.createUnknown<List<GooglePrivacyDlpV2TriggerResponse>>();
    this.updateTime = Output.createUnknown<String>();
  }
}
