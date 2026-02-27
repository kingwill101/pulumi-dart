import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_repository_index_args.dart';

/// The resource for managing Code Repository Index for Gemini Code Assist.
///
///
/// To get more information about CodeRepositoryIndex, see:
///
/// * [API documentation](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.codeRepositoryIndexes)
/// * How-to Guides
/// * [Gemini Code Assist overview](https://cloud.google.com/gemini/docs/codeassist/overview)
///
/// ## Example Usage
///
/// ### Gemini Code Repository Index Basic
///
///
///
///
/// ## Import
///
/// CodeRepositoryIndex can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index_id}}`
///
/// * `{{project}}/{{location}}/{{code_repository_index_id}}`
///
/// * `{{location}}/{{code_repository_index_id}}`
///
/// When using the `pulumi import` command, CodeRepositoryIndex can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/codeRepositoryIndex:CodeRepositoryIndex default projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/codeRepositoryIndex:CodeRepositoryIndex default {{project}}/{{location}}/{{code_repository_index_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/codeRepositoryIndex:CodeRepositoryIndex default {{location}}/{{code_repository_index_id}}
/// ```
class CodeRepositoryIndex extends pulumi.CustomResource {
  /// Required. Id of the Code Repository Index.
  late final pulumi.Output<String> codeRepositoryIndexId;

  /// Output only. Create time stamp.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// If set to true, will allow deletion of the CodeRepositoryIndex even if there are existing RepositoryGroups for the resource. These RepositoryGroups will also be deleted.
  late final pulumi.Output<bool?> forceDestroy;

  /// Optional. Immutable. Customer-managed encryption key name, in the format
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  late final pulumi.Output<String?> kmsKey;

  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the Code Repository Index, for example `us-central1`.
  late final pulumi.Output<String> location;

  /// Immutable. Identifier. Name of Code Repository Index.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. Code Repository Index instance State.
  /// Possible values are: `STATE_UNSPECIFIED`, `CREATING`, `ACTIVE`, `DELETING`, `SUSPENDED`.
  late final pulumi.Output<String> state;

  /// Output only. Update time stamp.
  late final pulumi.Output<String> updateTime;

  CodeRepositoryIndex(
    String name, {
    CodeRepositoryIndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/codeRepositoryIndex:CodeRepositoryIndex',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.codeRepositoryIndexId =
        registerOutput<String>('codeRepositoryIndexId');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
