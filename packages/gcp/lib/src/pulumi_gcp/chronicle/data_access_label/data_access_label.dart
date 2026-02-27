import 'package:pulumi/pulumi.dart';
import 'data_access_label_args.dart';

/// A DataAccessLabel is a label on events to define user access to data.
///
///
/// To get more information about DataAccessLabel, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.dataAccessLabels)
/// * How-to Guides
/// * [Introduction to data RBAC](https://cloud.google.com/chronicle/docs/onboard/onboard-datarbac)
///
/// ## Example Usage
///
/// ### Chronicle Dataaccesslabel Basic
///
///
///
///
/// ## Import
///
/// DataAccessLabel can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/dataAccessLabels/{{data_access_label_id}}`
///
/// * `{{project}}/{{location}}/{{instance}}/{{data_access_label_id}}`
///
/// * `{{location}}/{{instance}}/{{data_access_label_id}}`
///
/// When using the `pulumi import` command, DataAccessLabel can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/dataAccessLabel:DataAccessLabel default projects/{{project}}/locations/{{location}}/instances/{{instance}}/dataAccessLabels/{{data_access_label_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/dataAccessLabel:DataAccessLabel default {{project}}/{{location}}/{{instance}}/{{data_access_label_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/dataAccessLabel:DataAccessLabel default {{location}}/{{instance}}/{{data_access_label_id}}
/// ```
class DataAccessLabel extends CustomResource {
  /// Output only. The user who created the data access label.
  late final Output<String> author;

  /// Output only. The time at which the data access label was created.
  late final Output<String> createTime;

  /// Required. The ID to use for the data access label, which will become the label's
  /// display name and the final component of the label's resource name. The
  /// maximum number of characters should be 63. Regex pattern is as per AIP:
  /// https://google.aip.dev/122#resource-id-segments
  late final Output<String> dataAccessLabelId;

  /// Optional. A description of the data access label for a human reader.
  late final Output<String?> description;

  /// Output only. The short name displayed for the label as it appears on event data. This is same as data access label id.
  late final Output<String> displayName;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final Output<String> instance;

  /// Output only. The user who last updated the data access label.
  late final Output<String> lastEditor;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final Output<String> location;

  /// The unique resource name of the data access label. This unique identifier is generated using values provided for the URL parameters.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/dataAccessLabels/{data_access_label_id}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// A UDM query over event data.
  late final Output<String> udmQuery;

  /// Output only. The time at which the data access label was last updated.
  late final Output<String> updateTime;

  DataAccessLabel(
    String name, {
    DataAccessLabelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/dataAccessLabel:DataAccessLabel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.author = registerOutput<String>('author');
    this.createTime = registerOutput<String>('createTime');
    this.dataAccessLabelId = registerOutput<String>('dataAccessLabelId');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.instance = registerOutput<String>('instance');
    this.lastEditor = registerOutput<String>('lastEditor');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.udmQuery = registerOutput<String>('udmQuery');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
