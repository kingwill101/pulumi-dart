import 'package:pulumi/pulumi.dart';
import 'rule_deployment_args.dart';

/// The RuleDeployment resource represents the deployment state of a Rule.
///
///
/// To get more information about RuleDeployment, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/RuleDeployment)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Ruledeployment Basic
///
///
///
/// ### Chronicle Ruledeployment Disabled
///
///
///
/// ### Chronicle Ruledeployment Run Frequency Missing
///
///
///
///
/// ## Import
///
/// RuleDeployment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/rules/{{rule}}/deployment`
///
/// * `{{project}}/{{location}}/{{instance}}/{{rule}}`
///
/// * `{{location}}/{{instance}}/{{rule}}`
///
/// When using the `pulumi import` command, RuleDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/ruleDeployment:RuleDeployment default projects/{{project}}/locations/{{location}}/instances/{{instance}}/rules/{{rule}}/deployment
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/ruleDeployment:RuleDeployment default {{project}}/{{location}}/{{instance}}/{{rule}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/ruleDeployment:RuleDeployment default {{location}}/{{instance}}/{{rule}}
/// ```
class RuleDeployment extends CustomResource {
  /// Whether detections resulting from this deployment should be considered
  /// alerts.
  late final Output<bool?> alerting;

  /// Output only. The timestamp when the rule deployment archive state was last set to true. If the rule deployment's current archive state is not set to true, the field will be empty.
  late final Output<String> archiveTime;

  /// The archive state of the rule deployment.
  /// Cannot be set to true unless enabled is set to false i.e.
  /// archiving requires a two-step process: first, disable the rule by
  /// setting 'enabled' to false, then set 'archive' to true.
  /// If set to true, alerting will automatically be set to false.
  /// If currently set to true, enabled, alerting, and run_frequency cannot be
  /// updated.
  late final Output<bool?> archived;

  /// Output only. The names of the associated/chained consumer rules. Rules are considered
  /// consumers of this rule if their rule text explicitly filters on this rule's ruleid.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
  late final Output<List<String>> consumerRules;

  /// Whether the rule is currently deployed continuously against incoming data.
  late final Output<bool?> enabled;

  /// The execution state of the rule deployment.
  /// Possible values:
  /// DEFAULT
  /// LIMITED
  /// PAUSED
  late final Output<String> executionState;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final Output<String> instance;

  /// Output only. The timestamp when the rule deployment alert state was lastly changed. This is filled regardless of the current alert state.E.g. if the current alert status is false, this timestamp will be the timestamp when the alert status was changed to false.
  late final Output<String> lastAlertStatusChangeTime;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final Output<String> location;

  /// The resource name of the rule deployment.
  /// Note that RuleDeployment is a child of the overall Rule, not any individual
  /// revision, so the resource ID segment for the Rule resource must not
  /// reference a specific revision.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}/deployment
  late final Output<String> name;

  /// Output only. The names of the associated/chained producer rules. Rules are considered
  /// producers for this rule if this rule explicitly filters on their ruleid.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
  late final Output<List<String>> producerRules;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The Rule ID of the rule.
  late final Output<String> rule;

  /// The run frequency of the rule deployment.
  /// Possible values:
  /// LIVE
  /// HOURLY
  /// DAILY
  late final Output<String?> runFrequency;

  RuleDeployment(
    String name, {
    RuleDeploymentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/ruleDeployment:RuleDeployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alerting = registerOutput<bool?>('alerting');
    this.archiveTime = registerOutput<String>('archiveTime');
    this.archived = registerOutput<bool?>('archived');
    this.consumerRules = registerOutput<List<String>>('consumerRules');
    this.enabled = registerOutput<bool?>('enabled');
    this.executionState = registerOutput<String>('executionState');
    this.instance = registerOutput<String>('instance');
    this.lastAlertStatusChangeTime =
        registerOutput<String>('lastAlertStatusChangeTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.producerRules = registerOutput<List<String>>('producerRules');
    this.project = registerOutput<String>('project');
    this.rule = registerOutput<String>('rule');
    this.runFrequency = registerOutput<String?>('runFrequency');
  }
}
