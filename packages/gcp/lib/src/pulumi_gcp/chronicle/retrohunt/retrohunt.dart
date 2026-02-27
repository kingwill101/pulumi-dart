import 'package:pulumi/pulumi.dart';
import '../retrohunt_execution_interval/retrohunt_execution_interval.dart';
import '../retrohunt_process_interval/retrohunt_process_interval.dart';
import 'retrohunt_args.dart';

/// Retrohunt is an execution of a Rule over a time range in the past.
///
///
/// To get more information about Retrohunt, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.rules.retrohunts)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Retrohunt Basic
///
///
///
///
/// ## Import
///
/// Retrohunt can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/rules/{{rule}}/retrohunts/{{retrohunt}}`
///
/// * `{{project}}/{{location}}/{{instance}}/{{rule}}/{{retrohunt}}`
///
/// * `{{location}}/{{instance}}/{{rule}}/{{retrohunt}}`
///
/// When using the `pulumi import` command, Retrohunt can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/retrohunt:Retrohunt default projects/{{project}}/locations/{{location}}/instances/{{instance}}/rules/{{rule}}/retrohunts/{{retrohunt}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/retrohunt:Retrohunt default {{project}}/{{location}}/{{instance}}/{{rule}}/{{retrohunt}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/retrohunt:Retrohunt default {{location}}/{{instance}}/{{rule}}/{{retrohunt}}
/// ```
class Retrohunt extends CustomResource {
  /// The retrohunt ID of the Retrohunt. A retrohunt is an execution of a Rule over a time range in the past.
  late final Output<String> retrohuntId;

  /// Represents a time interval, encoded as a Timestamp start (inclusive) and a
  /// Timestamp end (exclusive).
  /// The start must be less than or equal to the end.
  /// When the start equals the end, the interval is empty (matches no time).
  /// When both start and end are unspecified, the interval matches any time.
  /// Structure is documented below.
  late final Output<List<RetrohuntExecutionInterval>> executionIntervals;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final Output<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final Output<String> location;

  /// The resource name of the retrohunt.
  /// Retrohunt is the child of a rule revision. {rule} in the format below is
  /// structured as {rule_id@revision_id}.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}/retrohunts/{retrohunt}
  late final Output<String> name;

  /// Represents a time interval, encoded as a Timestamp start (inclusive) and a
  /// Timestamp end (exclusive).
  /// The start must be less than or equal to the end.
  /// When the start equals the end, the interval is empty (matches no time).
  /// When both start and end are unspecified, the interval matches any time.
  /// Structure is documented below.
  late final Output<RetrohuntProcessInterval> processInterval;

  /// Output only. Percent progress of the retrohunt towards completion, from 0.00 to 100.00.
  late final Output<double> progressPercentage;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The Rule ID of the rule.
  late final Output<String> rule;

  /// Output only. The state of the retrohunt.
  /// Possible values:
  /// RUNNING
  /// DONE
  /// CANCELLED
  /// FAILED
  late final Output<String> state;

  Retrohunt(
    String name, {
    RetrohuntArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/retrohunt:Retrohunt',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.retrohuntId = registerOutput<String>('RetrohuntId');
    this.executionIntervals =
        registerOutput<List<RetrohuntExecutionInterval>>('executionIntervals');
    this.instance = registerOutput<String>('instance');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.processInterval =
        registerOutput<RetrohuntProcessInterval>('processInterval');
    this.progressPercentage = registerOutput<double>('progressPercentage');
    this.project = registerOutput<String>('project');
    this.rule = registerOutput<String>('rule');
    this.state = registerOutput<String>('state');
  }
}
