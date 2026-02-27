import 'package:pulumi/pulumi.dart' as pulumi;
import '../reference_list_entry/reference_list_entry.dart';
import '../reference_list_scope_info/reference_list_scope_info.dart';
import 'reference_list_args.dart';

/// Reference lists are user-defined lists of values which users can use in multiple Rules.
///
///
/// To get more information about ReferenceList, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.referenceLists)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Referencelist Basic
///
///
///
///
/// ## Import
///
/// ReferenceList can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/referenceLists/{{reference_list_id}}`
///
/// * `{{project}}/{{location}}/{{instance}}/{{reference_list_id}}`
///
/// * `{{location}}/{{instance}}/{{reference_list_id}}`
///
/// When using the `pulumi import` command, ReferenceList can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/referenceList:ReferenceList default projects/{{project}}/locations/{{location}}/instances/{{instance}}/referenceLists/{{reference_list_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/referenceList:ReferenceList default {{project}}/{{location}}/{{instance}}/{{reference_list_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/referenceList:ReferenceList default {{location}}/{{instance}}/{{reference_list_id}}
/// ```
class ReferenceList extends pulumi.CustomResource {
  /// Required. A user-provided description of the reference list.
  late final pulumi.Output<String> description;

  /// Output only. The unique display name of the reference list.
  late final pulumi.Output<String> displayName;

  /// Required. The entries of the reference list.
  /// When listed, they are returned in the order that was specified at creation
  /// or update. The combined size of the values of the reference list may not
  /// exceed 6MB.
  /// This is returned only when the view is REFERENCE_LIST_VIEW_FULL.
  /// Structure is documented below.
  late final pulumi.Output<List<ReferenceListEntry>> entries;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final pulumi.Output<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final pulumi.Output<String> location;

  /// Output only. The resource name of the reference list.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/referenceLists/{reference_list}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Required. The ID to use for the reference list. This is also the display name for
  /// the reference list. It must satisfy the following requirements:
  /// - Starts with letter.
  /// - Contains only letters, numbers and underscore.
  /// - Has length < 256.
  /// - Must be unique.
  late final pulumi.Output<String> referenceListId;

  /// Output only. The timestamp when the reference list was last updated.
  late final pulumi.Output<String> revisionCreateTime;

  /// Output only. The count of self-authored rules using the reference list.
  late final pulumi.Output<int> ruleAssociationsCount;

  /// Output only. The resource names for the associated self-authored Rules that use this
  /// reference list.
  /// This is returned only when the view is REFERENCE_LIST_VIEW_FULL.
  late final pulumi.Output<List<String>> rules;

  /// ScopeInfo specifies the scope info of the reference list.
  /// Structure is documented below.
  late final pulumi.Output<List<ReferenceListScopeInfo>?> scopeInfos;

  /// Possible values:
  /// REFERENCE_LIST_SYNTAX_TYPE_PLAIN_TEXT_STRING
  /// REFERENCE_LIST_SYNTAX_TYPE_REGEX
  /// REFERENCE_LIST_SYNTAX_TYPE_CIDR
  late final pulumi.Output<String> syntaxType;

  ReferenceList(
    String name, {
    ReferenceListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/referenceList:ReferenceList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.entries = registerOutput<List<ReferenceListEntry>>('entries');
    this.instance = registerOutput<String>('instance');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.referenceListId = registerOutput<String>('referenceListId');
    this.revisionCreateTime = registerOutput<String>('revisionCreateTime');
    this.ruleAssociationsCount = registerOutput<int>('ruleAssociationsCount');
    this.rules = registerOutput<List<String>>('rules');
    this.scopeInfos =
        registerOutput<List<ReferenceListScopeInfo>?>('scopeInfos');
    this.syntaxType = registerOutput<String>('syntaxType');
  }
}
