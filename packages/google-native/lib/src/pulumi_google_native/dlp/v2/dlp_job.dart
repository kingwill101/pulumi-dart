import 'package:pulumi/pulumi.dart';
import 'dlp_job_args.dart';
import 'google_privacy_dlp_v2_action_details_response.dart';
import 'google_privacy_dlp_v2_analyze_data_source_risk_details_response.dart';
import 'google_privacy_dlp_v2_error_response.dart';
import 'google_privacy_dlp_v2_inspect_data_source_details_response.dart';

/// Creates a new job to inspect storage or calculate risk metrics. See https://cloud.google.com/dlp/docs/inspecting-storage and https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more. When no InfoTypes or CustomInfoTypes are specified in inspect jobs, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated.
/// Auto-naming is currently not supported for this resource.
class DlpJob extends CustomResource {
  /// Events that should occur after the job has completed.
  late final Output<List<GooglePrivacyDlpV2ActionDetailsResponse>>
      actionDetails;

  /// Time when the job was created.
  late final Output<String> createTime;

  /// Time when the job finished.
  late final Output<String> endTime;

  /// A stream of errors encountered running the job.
  late final Output<List<GooglePrivacyDlpV2ErrorResponse>> errors;

  /// Results from inspecting a data source.
  late final Output<GooglePrivacyDlpV2InspectDataSourceDetailsResponse>
      inspectDetails;

  /// If created by a job trigger, the resource name of the trigger that instantiated the job.
  late final Output<String> jobTriggerName;

  /// Time when the job was last modified by the system.
  late final Output<String> lastModified;
  late final Output<String> location;

  /// The server-assigned name.
  late final Output<String> name;
  late final Output<String> project;

  /// Results from analyzing risk of a data source.
  late final Output<GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse>
      riskDetails;

  /// Time when the job started.
  late final Output<String> startTime;

  /// State of a job.
  late final Output<String> state;

  /// The type of job.
  late final Output<String> type;

  DlpJob(
    String name, {
    DlpJobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dlp/v2:DlpJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actionDetails =
        Output.createUnknown<List<GooglePrivacyDlpV2ActionDetailsResponse>>();
    this.createTime = Output.createUnknown<String>();
    this.endTime = Output.createUnknown<String>();
    this.errors = Output.createUnknown<List<GooglePrivacyDlpV2ErrorResponse>>();
    this.inspectDetails = Output.createUnknown<
        GooglePrivacyDlpV2InspectDataSourceDetailsResponse>();
    this.jobTriggerName = Output.createUnknown<String>();
    this.lastModified = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.riskDetails = Output.createUnknown<
        GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse>();
    this.startTime = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
  }
}
