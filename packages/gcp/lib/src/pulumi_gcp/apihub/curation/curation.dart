import 'package:pulumi/pulumi.dart' as pulumi;
import '../curation_endpoint/curation_endpoint.dart';
import '../curation_plugin_instance_action/curation_plugin_instance_action.dart';
import 'curation_args.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Apihub Curation Basic
///
///
///
///
/// ## Import
///
/// Curation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/curations/{{curation_id}}`
///
/// * `{{project}}/{{location}}/{{curation_id}}`
///
/// * `{{location}}/{{curation_id}}`
///
/// When using the `pulumi import` command, Curation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apihub/curation:Curation default projects/{{project}}/locations/{{location}}/curations/{{curation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/curation:Curation default {{project}}/{{location}}/{{curation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/curation:Curation default {{location}}/{{curation_id}}
/// ```
class Curation extends pulumi.CustomResource {
  /// The time at which the curation was created.
  late final pulumi.Output<String> createTime;

  /// The ID to use for the curation resource, which will become the final
  /// component of the curations's resource name. This field is optional.
  /// * If provided, the same will be used. The service will throw an error if
  /// the specified ID is already used by another curation resource in the API
  /// hub.
  /// * If not provided, a system generated ID will be used.
  /// This value should be 4-500 characters, and valid characters
  /// are /a-z[0-9]-_/.
  late final pulumi.Output<String> curationId;

  /// The description of the curation.
  late final pulumi.Output<String?> description;

  /// The display name of the curation.
  late final pulumi.Output<String> displayName;

  /// The endpoint to be triggered for curation.
  /// The endpoint will be invoked with a request payload containing
  /// ApiMetadata.
  /// Response should contain curated data in the form of
  /// ApiMetadata.
  /// Structure is documented below.
  late final pulumi.Output<CurationEndpoint> endpoint;

  /// The error code of the last execution of the curation. The error code is
  /// populated only when the last execution state is failed.
  /// Possible values:
  /// ERROR_CODE_UNSPECIFIED
  /// INTERNAL_ERROR
  /// UNAUTHORIZED
  late final pulumi.Output<String> lastExecutionErrorCode;

  /// Error message describing the failure, if any, during the last execution of
  /// the curation.
  late final pulumi.Output<String> lastExecutionErrorMessage;

  /// The last execution state of the curation.
  /// Possible values:
  /// LAST_EXECUTION_STATE_UNSPECIFIED
  /// SUCCEEDED
  /// FAILED
  late final pulumi.Output<String> lastExecutionState;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. The name of the curation.
  /// Format:
  /// `projects/{project}/locations/{location}/curations/{curation}`
  late final pulumi.Output<String> name;

  /// The plugin instances and associated actions that are using the curation.
  /// Note: A particular curation could be used by multiple plugin instances or
  /// multiple actions in a plugin instance.
  /// Structure is documented below.
  late final pulumi.Output<List<CurationPluginInstanceAction>>
      pluginInstanceActions;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The time at which the curation was last updated.
  late final pulumi.Output<String> updateTime;

  Curation(
    String name, {
    CurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/curation:Curation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.curationId = registerOutput<String>('curationId');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.endpoint = registerOutput<CurationEndpoint>('endpoint');
    this.lastExecutionErrorCode =
        registerOutput<String>('lastExecutionErrorCode');
    this.lastExecutionErrorMessage =
        registerOutput<String>('lastExecutionErrorMessage');
    this.lastExecutionState = registerOutput<String>('lastExecutionState');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.pluginInstanceActions =
        registerOutput<List<CurationPluginInstanceAction>>(
            'pluginInstanceActions');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
