import 'package:pulumi/pulumi.dart';
import '../data_access_scope_allowed_data_access_label/data_access_scope_allowed_data_access_label.dart';
import '../data_access_scope_denied_data_access_label/data_access_scope_denied_data_access_label.dart';
import 'data_access_scope_args.dart';

/// A DataAccessScope is a boolean expression of data access labels used to restrict access to data for users.
///
///
/// To get more information about DataAccessScope, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.dataAccessScopes)
/// * How-to Guides
/// * [Introduction to data RBAC](https://cloud.google.com/chronicle/docs/onboard/onboard-datarbac)
///
/// ## Example Usage
///
/// ### Chronicle Dataaccessscope With Logtype
///
///
///
/// ### Chronicle Dataaccessscope With Dataaccesslabel
///
///
///
/// ### Chronicle Dataaccessscope With Asset Namespace
///
///
///
/// ### Chronicle Dataaccessscope With Ingestion Label
///
///
///
/// ### Chronicle Dataaccessscope With Denied Labels
///
///
///
///
/// ## Import
///
/// DataAccessScope can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/dataAccessScopes/{{data_access_scope_id}}`
///
/// * `{{project}}/{{location}}/{{instance}}/{{data_access_scope_id}}`
///
/// * `{{location}}/{{instance}}/{{data_access_scope_id}}`
///
/// When using the `pulumi import` command, DataAccessScope can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/dataAccessScope:DataAccessScope default projects/{{project}}/locations/{{location}}/instances/{{instance}}/dataAccessScopes/{{data_access_scope_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/dataAccessScope:DataAccessScope default {{project}}/{{location}}/{{instance}}/{{data_access_scope_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/dataAccessScope:DataAccessScope default {{location}}/{{instance}}/{{data_access_scope_id}}
/// ```
class DataAccessScope extends CustomResource {
  /// Optional. Whether or not the scope allows all labels, allow_all and
  /// allowed_data_access_labels are mutually exclusive and one of them must be
  /// present. denied_data_access_labels can still be used along with allow_all.
  /// When combined with denied_data_access_labels, access will be granted to all
  /// data that doesn't have labels mentioned in denied_data_access_labels. E.g.:
  /// A customer with scope with denied labels A and B and allow_all will be able
  /// to see all data except data labeled with A and data labeled with B and data
  /// with labels A and B.
  late final Output<bool?> allowAll;

  /// The allowed labels for the scope. There has to be at
  /// least one label allowed for the scope to be valid.
  /// The logical operator for evaluation of the allowed labels is OR.
  /// Either allow_all or allowed_data_access_labels needs to be provided.
  /// E.g.: A customer with scope with allowed labels A and B will be able
  /// to see data with labeled with A or B or (A and B).
  /// Structure is documented below.
  late final Output<List<DataAccessScopeAllowedDataAccessLabel>?>
      allowedDataAccessLabels;

  /// Output only. The user who created the data access scope.
  late final Output<String> author;

  /// Output only. The time at which the data access scope was created.
  late final Output<String> createTime;

  /// Required. The user provided scope id which will become the last part of the name
  /// of the scope resource.
  /// Needs to be compliant with https://google.aip.dev/122
  late final Output<String> dataAccessScopeId;

  /// Optional. The denied labels for the scope.
  /// The logical operator for evaluation of the denied labels is AND.
  /// E.g.: A customer with scope with denied labels A and B won't be able
  /// to see data labeled with A and data labeled with B
  /// and data with labels A and B.
  /// Structure is documented below.
  late final Output<List<DataAccessScopeDeniedDataAccessLabel>?>
      deniedDataAccessLabels;

  /// Optional. A description of the data access scope for a human reader.
  late final Output<String?> description;

  /// Output only. The name to be used for display to customers of the data access scope.
  late final Output<String> displayName;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final Output<String> instance;

  /// Output only. The user who last updated the data access scope.
  late final Output<String> lastEditor;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final Output<String> location;

  /// The unique full name of the data access scope. This unique identifier is generated using values provided for the URL parameters.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{data_access_scope_id}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Output only. The time at which the data access scope was last updated.
  late final Output<String> updateTime;

  DataAccessScope(
    String name, {
    DataAccessScopeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/dataAccessScope:DataAccessScope',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowAll = registerOutput<bool?>('allowAll');
    this.allowedDataAccessLabels =
        registerOutput<List<DataAccessScopeAllowedDataAccessLabel>?>(
            'allowedDataAccessLabels');
    this.author = registerOutput<String>('author');
    this.createTime = registerOutput<String>('createTime');
    this.dataAccessScopeId = registerOutput<String>('dataAccessScopeId');
    this.deniedDataAccessLabels =
        registerOutput<List<DataAccessScopeDeniedDataAccessLabel>?>(
            'deniedDataAccessLabels');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.instance = registerOutput<String>('instance');
    this.lastEditor = registerOutput<String>('lastEditor');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
