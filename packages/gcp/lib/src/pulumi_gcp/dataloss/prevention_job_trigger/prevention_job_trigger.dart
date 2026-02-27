import 'package:pulumi/pulumi.dart';
import '../prevention_job_trigger_inspect_job/prevention_job_trigger_inspect_job.dart';
import '../prevention_job_trigger_trigger/prevention_job_trigger_trigger.dart';
import 'prevention_job_trigger_args.dart';

/// A job trigger configuration.
///
///
/// To get more information about JobTrigger, see:
///
/// * [API documentation](https://cloud.google.com/dlp/docs/reference/rest/v2/projects.jobTriggers)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dlp/docs/creating-job-triggers)
///
/// ## Example Usage
///
/// ### Dlp Job Trigger Basic
///
///
///
/// ### Dlp Job Trigger Bigquery Row Limit
///
///
///
/// ### Dlp Job Trigger Bigquery Row Limit Percentage
///
///
///
/// ### Dlp Job Trigger Job Notification Emails
///
///
///
/// ### Dlp Job Trigger Deidentify
///
///
///
/// ### Dlp Job Trigger Hybrid
///
///
///
/// ### Dlp Job Trigger Inspect
///
///
///
/// ### Dlp Job Trigger Publish To Stackdriver
///
///
///
/// ### Dlp Job Trigger With Id
///
///
///
/// ### Dlp Job Trigger Multiple Actions
///
///
///
/// ### Dlp Job Trigger Cloud Storage Optional Timespan Autopopulation
///
///
///
/// ### Dlp Job Trigger Timespan Config Big Query
///
///
///
///
/// ## Import
///
/// JobTrigger can be imported using any of these accepted formats:
///
/// * `{{parent}}/jobTriggers/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, JobTrigger can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionJobTrigger:PreventionJobTrigger default {{parent}}/jobTriggers/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionJobTrigger:PreventionJobTrigger default {{parent}}/{{name}}
/// ```
class PreventionJobTrigger extends CustomResource {
  /// The creation timestamp of an inspectTemplate. Set by the server.
  late final Output<String> createTime;

  /// A description of the job trigger.
  late final Output<String?> description;

  /// User set display name of the job trigger.
  late final Output<String?> displayName;

  /// Controls what and how to inspect for findings.
  /// Structure is documented below.
  late final Output<PreventionJobTriggerInspectJob?> inspectJob;

  /// The timestamp of the last time this trigger executed.
  late final Output<String> lastRunTime;

  /// The resource name of the job trigger. Set by the server.
  late final Output<String> name;

  /// The parent of the trigger, either in the format `projects/{{project}}`
  /// or `projects/{{project}}/locations/{{location}}`
  late final Output<String> parent;

  /// Whether the trigger is currently active.
  /// Default value is `HEALTHY`.
  /// Possible values are: `PAUSED`, `HEALTHY`, `CANCELLED`.
  late final Output<String?> status;

  /// The trigger id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+.
  /// The maximum length is 100 characters. Can be empty to allow the system to generate one.
  late final Output<String> triggerId;

  /// What event needs to occur for a new job to be started.
  /// Structure is documented below.
  late final Output<List<PreventionJobTriggerTrigger>> triggers;

  /// The last update timestamp of an inspectTemplate. Set by the server.
  late final Output<String> updateTime;

  PreventionJobTrigger(
    String name, {
    PreventionJobTriggerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataloss/preventionJobTrigger:PreventionJobTrigger',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.inspectJob =
        registerOutput<PreventionJobTriggerInspectJob?>('inspectJob');
    this.lastRunTime = registerOutput<String>('lastRunTime');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.status = registerOutput<String?>('status');
    this.triggerId = registerOutput<String>('triggerId');
    this.triggers =
        registerOutput<List<PreventionJobTriggerTrigger>>('triggers');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
