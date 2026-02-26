import 'package:pulumi/pulumi.dart';
import 'content_args.dart';
import 'google_cloud_dataplex_v1_content_notebook_response.dart';
import 'google_cloud_dataplex_v1_content_sql_script_response.dart';

/// Create a content.
/// Auto-naming is currently not supported for this resource.
class Content extends CustomResource {
  /// Content creation time.
  late final Output<String> createTime;

  /// Content data in string format.
  late final Output<String> dataText;

  /// Optional. Description of the content.
  late final Output<String> description;

  /// Optional. User defined labels for the content.
  late final Output<Map<String, String>> labels;
  late final Output<String> lakeId;
  late final Output<String> location;

  /// The relative resource name of the content, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}
  late final Output<String> name;

  /// Notebook related configurations.
  late final Output<GoogleCloudDataplexV1ContentNotebookResponse> notebook;

  /// The path for the Content file, represented as directory structure. Unique within a lake. Limited to alphanumerics, hyphens, underscores, dots and slashes.
  late final Output<String> path;
  late final Output<String> project;

  /// Sql Script related configurations.
  late final Output<GoogleCloudDataplexV1ContentSqlScriptResponse> sqlScript;

  /// System generated globally unique ID for the content. This ID will be different if the content is deleted and re-created with the same name.
  late final Output<String> uid;

  /// The time when the content was last updated.
  late final Output<String> updateTime;

  Content(
    String name, {
    ContentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:Content',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.dataText = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.lakeId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.notebook =
        Output.createUnknown<GoogleCloudDataplexV1ContentNotebookResponse>();
    this.path = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.sqlScript =
        Output.createUnknown<GoogleCloudDataplexV1ContentSqlScriptResponse>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
