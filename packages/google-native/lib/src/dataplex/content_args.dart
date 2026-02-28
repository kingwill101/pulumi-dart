// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_content_notebook.dart';
import 'google_cloud_dataplex_v1_content_sql_script.dart';

/// {@template pulumi_dataplex_v1_content_args_doc}
/// The set of arguments for Content.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_content_args_doc}
class ContentArgs {
  /// Content data in string format.
  final pulumi.Input<String> dataText;

  /// Optional. Description of the content.
  final pulumi.Input<String>? description;

  /// Optional. User defined labels for the content.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String>? location;

  /// Notebook related configurations.
  final pulumi.Input<GoogleCloudDataplexV1ContentNotebook>? notebook;

  /// The path for the Content file, represented as directory structure. Unique within a lake. Limited to alphanumerics, hyphens, underscores, dots and slashes.
  final pulumi.Input<String> path;
  final pulumi.Input<String>? project;

  /// Sql Script related configurations.
  final pulumi.Input<GoogleCloudDataplexV1ContentSqlScript>? sqlScript;

  /// Creates a new [ContentArgs].
  /// [dataText] Content data in string format.
  /// [description] Optional. Description of the content.
  /// [labels] Optional. User defined labels for the content.
  /// [lakeId] Required.
  /// [location] Optional.
  /// [notebook] Notebook related configurations.
  /// [path] The path for the Content file, represented as directory structure. Unique within a lake. Limited to alphanumerics, hyphens, underscores, dots and slashes.
  /// [project] Optional.
  /// [sqlScript] Sql Script related configurations.
  ContentArgs({
    required String dataText,
    String? description,
    Map<String, String>? labels,
    required String lakeId,
    String? location,
    GoogleCloudDataplexV1ContentNotebook? notebook,
    required String path,
    String? project,
    GoogleCloudDataplexV1ContentSqlScript? sqlScript,
  })  : dataText = pulumi.Input.asInput<String>(dataText),
        description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        lakeId = pulumi.Input.asInput<String>(lakeId),
        location = pulumi.Input.asOptionalInput<String>(location),
        notebook =
            pulumi.Input.asOptionalInput<GoogleCloudDataplexV1ContentNotebook>(
                notebook),
        path = pulumi.Input.asInput<String>(path),
        project = pulumi.Input.asOptionalInput<String>(project),
        sqlScript =
            pulumi.Input.asOptionalInput<GoogleCloudDataplexV1ContentSqlScript>(
                sqlScript);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataText'] = dataText;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['lakeId'] = lakeId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final notebookValue = notebook;
    if (notebookValue != null) {
      map['notebook'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDataplexV1ContentNotebook,
          Map<String, dynamic>>(notebookValue, (value) => value.toMap());
    }
    map['path'] = path;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sqlScriptValue = sqlScript;
    if (sqlScriptValue != null) {
      map['sqlScript'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDataplexV1ContentSqlScript,
          Map<String, dynamic>>(sqlScriptValue, (value) => value.toMap());
    }
    return map;
  }

  factory ContentArgs.fromMap(Map<String, dynamic> map) {
    return ContentArgs(
      dataText: map['dataText'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      lakeId: map['lakeId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      notebook: map['notebook'] == null
          ? null
          : GoogleCloudDataplexV1ContentNotebook.fromMap(
              (map['notebook'] as Map).cast<String, dynamic>()),
      path: map['path'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sqlScript: map['sqlScript'] == null
          ? null
          : GoogleCloudDataplexV1ContentSqlScript.fromMap(
              (map['sqlScript'] as Map).cast<String, dynamic>()),
    );
  }
}
