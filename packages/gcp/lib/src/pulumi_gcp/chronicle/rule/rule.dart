import 'package:pulumi/pulumi.dart';
import '../rule_compilation_diagnostic/rule_compilation_diagnostic.dart';
import '../rule_severity/rule_severity.dart';
import 'rule_args.dart';

/// The Rule resource represents a user-created rule.
///
///
/// To get more information about Rule, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.rules)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Rule Basic
///
///
///
/// ### Chronicle Rule With Force Deletion
///
///
///
/// ### Chronicle Rule With Data Access Scope
///
///
///
///
/// ## Import
///
/// Rule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/rules/{{rule_id}}`
///
/// * `{{project}}/{{location}}/{{instance}}/{{rule_id}}`
///
/// * `{{location}}/{{instance}}/{{rule_id}}`
///
/// When using the `pulumi import` command, Rule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/rule:Rule default projects/{{project}}/locations/{{location}}/instances/{{instance}}/rules/{{rule_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/rule:Rule default {{project}}/{{location}}/{{instance}}/{{rule_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/rule:Rule default {{location}}/{{instance}}/{{rule_id}}
/// ```
class Rule extends CustomResource {
  /// Output only. The run frequencies that are allowed for the rule.
  /// Populated in BASIC view and FULL view.
  late final Output<List<String>> allowedRunFrequencies;

  /// Output only. The author of the rule. Extracted from the meta section of text.
  /// Populated in BASIC view and FULL view.
  late final Output<String> author;

  /// Output only. A list of a rule's corresponding compilation diagnostic messages
  /// such as compilation errors and compilation warnings.
  /// Populated in FULL view.
  /// Structure is documented below.
  late final Output<List<RuleCompilationDiagnostic>> compilationDiagnostics;

  /// Output only. The current compilation state of the rule.
  /// Populated in FULL view.
  /// Possible values:
  /// COMPILATION_STATE_UNSPECIFIED
  /// SUCCEEDED
  /// FAILED
  late final Output<String> compilationState;

  /// Output only. The timestamp of when the rule was created.
  /// Populated in FULL view.
  late final Output<String> createTime;

  /// Output only. Resource names of the data tables used in this rule.
  late final Output<List<String>> dataTables;

  /// Policy to determine if the rule should be deleted forcefully.
  /// If deletion_policy = "FORCE", any retrohunts and any detections associated with the rule
  /// will also be deleted. If deletion_policy = "DEFAULT", the call will only succeed if the
  /// rule has no associated retrohunts, including completed retrohunts, and no
  /// associated detections. Regardless of this field's value, the rule
  /// deployment associated with this rule will also be deleted.
  /// Possible values: DEFAULT, FORCE
  late final Output<String?> deletionPolicy;

  /// The display name of the severity level. Extracted from the meta section of
  /// the rule text.
  late final Output<String> displayName;

  /// The etag for this rule.
  /// If this is provided on update, the request will succeed if and only if it
  /// matches the server-computed value, and will fail with an ABORTED error
  /// otherwise.
  /// Populated in BASIC view and FULL view.
  late final Output<String> etag;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final Output<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final Output<String> location;

  /// Output only. Additional metadata specified in the meta section of text.
  /// Populated in FULL view.
  late final Output<Map<String, String>> metadata;

  /// Full resource name for the rule. This unique identifier is generated using values provided for the URL parameters.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
  late final Output<String> name;

  /// Output only. Indicate the rule can run in near real time live rule.
  /// If this is true, the rule uses the near real time live rule when the run
  /// frequency is set to LIVE.
  late final Output<bool> nearRealTimeLiveRuleEligible;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Output only. Resource names of the reference lists used in this rule.
  /// Populated in FULL view.
  late final Output<List<String>> referenceLists;

  /// Output only. The timestamp of when the rule revision was created.
  /// Populated in FULL, REVISION_METADATA_ONLY views.
  late final Output<String> revisionCreateTime;

  /// Output only. The revision ID of the rule.
  /// A new revision is created whenever the rule text is changed in any way.
  /// Format: v_{10 digits}_{9 digits}
  /// Populated in REVISION_METADATA_ONLY view and FULL view.
  late final Output<String> revisionId;

  /// Rule Id is the ID of the Rule.
  late final Output<String> ruleId;

  /// Resource name of the DataAccessScope bound to this rule.
  /// Populated in BASIC view and FULL view.
  /// If reference lists are used in the rule, validations will be performed
  /// against this scope to ensure that the reference lists are compatible with
  /// both the user's and the rule's scopes.
  /// The scope should be in the format:
  /// "projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{scope}".
  late final Output<String?> scope;

  /// (Output)
  /// Output only. The severity of a rule's compilation diagnostic.
  /// Possible values:
  /// SEVERITY_UNSPECIFIED
  /// WARNING
  /// ERROR
  late final Output<List<RuleSeverity>> severities;

  /// The YARA-L content of the rule.
  /// Populated in FULL view.
  late final Output<String?> text;

  /// Possible values:
  /// RULE_TYPE_UNSPECIFIED
  /// SINGLE_EVENT
  /// MULTI_EVENT
  late final Output<String> type;

  Rule(
    String name, {
    RuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/rule:Rule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowedRunFrequencies =
        registerOutput<List<String>>('allowedRunFrequencies');
    this.author = registerOutput<String>('author');
    this.compilationDiagnostics =
        registerOutput<List<RuleCompilationDiagnostic>>(
            'compilationDiagnostics');
    this.compilationState = registerOutput<String>('compilationState');
    this.createTime = registerOutput<String>('createTime');
    this.dataTables = registerOutput<List<String>>('dataTables');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.instance = registerOutput<String>('instance');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    this.nearRealTimeLiveRuleEligible =
        registerOutput<bool>('nearRealTimeLiveRuleEligible');
    this.project = registerOutput<String>('project');
    this.referenceLists = registerOutput<List<String>>('referenceLists');
    this.revisionCreateTime = registerOutput<String>('revisionCreateTime');
    this.revisionId = registerOutput<String>('revisionId');
    this.ruleId = registerOutput<String>('ruleId');
    this.scope = registerOutput<String?>('scope');
    this.severities = registerOutput<List<RuleSeverity>>('severities');
    this.text = registerOutput<String?>('text');
    this.type = registerOutput<String>('type');
  }
}
