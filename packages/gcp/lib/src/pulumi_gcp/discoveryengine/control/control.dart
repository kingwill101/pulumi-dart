import 'package:pulumi/pulumi.dart' as pulumi;
import '../control_boost_action/control_boost_action.dart';
import '../control_condition/control_condition.dart';
import '../control_filter_action/control_filter_action.dart';
import '../control_promote_action/control_promote_action.dart';
import '../control_redirect_action/control_redirect_action.dart';
import '../control_synonyms_action/control_synonyms_action.dart';
import 'control_args.dart';

/// Controls are rules that influence search results.
///
///
/// To get more information about Control, see:
///
/// * [API documentation](https://cloud.google.com/gemini/enterprise/docs/reference/rest/v1/projects.locations.collections.engines.controls)
/// * How-to Guides
/// * [Configure serving controls](https://cloud.google.com/gemini/enterprise/docs/configure-serving-controls)
///
/// ## Example Usage
///
/// ### Discoveryengine Control Basic
///
///
///
///
/// ## Import
///
/// Control can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/controls/{{control_id}}`
///
/// * `{{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{control_id}}`
///
/// * `{{location}}/{{collection_id}}/{{engine_id}}/{{control_id}}`
///
/// When using the `pulumi import` command, Control can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/control:Control default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/controls/{{control_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/control:Control default {{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{control_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/control:Control default {{location}}/{{collection_id}}/{{engine_id}}/{{control_id}}
/// ```
class Control extends pulumi.CustomResource {
  /// Changes the returned order of results.
  /// Structure is documented below.
  late final pulumi.Output<ControlBoostAction?> boostAction;

  /// The collection ID. Currently only accepts "default_collection".
  late final pulumi.Output<String?> collectionId;

  /// The conditions under which the control is active.
  /// Structure is documented below.
  late final pulumi.Output<List<ControlCondition>?> conditions;

  /// The unique id of the control.
  late final pulumi.Output<String> controlId;

  /// The display name of the control. This field must be a UTF-8 encoded
  /// string with a length limit of 128 characters.
  late final pulumi.Output<String> displayName;

  /// The engine to add the control to.
  late final pulumi.Output<String> engineId;

  /// Removes entries from returned results.
  /// Structure is documented below.
  late final pulumi.Output<ControlFilterAction?> filterAction;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;

  /// The unique full resource name of the control. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/controls/{control_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Promotes a specified link for a query.
  /// Structure is documented below.
  late final pulumi.Output<ControlPromoteAction?> promoteAction;

  /// Redirects to a specified URI.
  /// Structure is documented below.
  late final pulumi.Output<ControlRedirectAction?> redirectAction;

  /// The solution type that the control belongs to.
  /// Possible values are: `SOLUTION_TYPE_RECOMMENDATION`, `SOLUTION_TYPE_SEARCH`, `SOLUTION_TYPE_CHAT`, `SOLUTION_TYPE_GENERATIVE_CHAT`.
  late final pulumi.Output<String> solutionType;

  /// Associates queries with each other.
  /// Structure is documented below.
  late final pulumi.Output<ControlSynonymsAction?> synonymsAction;

  /// The use cases that the control is used for.
  /// Each value may be one of: `SEARCH_USE_CASE_SEARCH`, `SEARCH_USE_CASE_BROWSE`.
  late final pulumi.Output<List<String>?> useCases;

  Control(
    String name, {
    ControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/control:Control',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.boostAction = registerOutput<ControlBoostAction?>('boostAction');
    this.collectionId = registerOutput<String?>('collectionId');
    this.conditions = registerOutput<List<ControlCondition>?>('conditions');
    this.controlId = registerOutput<String>('controlId');
    this.displayName = registerOutput<String>('displayName');
    this.engineId = registerOutput<String>('engineId');
    this.filterAction = registerOutput<ControlFilterAction?>('filterAction');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.promoteAction = registerOutput<ControlPromoteAction?>('promoteAction');
    this.redirectAction =
        registerOutput<ControlRedirectAction?>('redirectAction');
    this.solutionType = registerOutput<String>('solutionType');
    this.synonymsAction =
        registerOutput<ControlSynonymsAction?>('synonymsAction');
    this.useCases = registerOutput<List<String>?>('useCases');
  }
}
