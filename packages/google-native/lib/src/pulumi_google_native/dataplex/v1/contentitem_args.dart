// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dataplex_v1_content_notebook.dart';
import 'google_cloud_dataplex_v1_content_sql_script.dart';

/// The set of arguments for Contentitem.
class ContentitemArgs {
  /// Content data in string format.
  final Input<String> dataText;

  /// Optional. Description of the content.
  final Input<String>? description;

  /// Optional. User defined labels for the content.
  final Input<Map<String, String>>? labels;
  final Input<String> lakeId;
  final Input<String>? location;

  /// Notebook related configurations.
  final Input<GoogleCloudDataplexV1ContentNotebook>? notebook;

  /// The path for the Content file, represented as directory structure. Unique within a lake. Limited to alphanumerics, hyphens, underscores, dots and slashes.
  final Input<String> path;
  final Input<String>? project;

  /// Sql Script related configurations.
  final Input<GoogleCloudDataplexV1ContentSqlScript>? sqlScript;

  ContentitemArgs({
    required this.dataText,
    this.description,
    this.labels,
    required this.lakeId,
    this.location,
    this.notebook,
    required this.path,
    this.project,
    this.sqlScript,
  });

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
      map['notebook'] = Input.mapOptionalInputValue<
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
      map['sqlScript'] = Input.mapOptionalInputValue<
          GoogleCloudDataplexV1ContentSqlScript,
          Map<String, dynamic>>(sqlScriptValue, (value) => value.toMap());
    }
    return map;
  }

  factory ContentitemArgs.fromMap(Map<String, dynamic> map) {
    return ContentitemArgs(
      dataText: Input.asInput<String>(map['dataText']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      lakeId: Input.asInput<String>(map['lakeId']),
      location: Input.asOptionalInput<String>(map['location']),
      notebook: Input.asOptionalInput<GoogleCloudDataplexV1ContentNotebook>(
          map['notebook']),
      path: Input.asInput<String>(map['path']),
      project: Input.asOptionalInput<String>(map['project']),
      sqlScript: Input.asOptionalInput<GoogleCloudDataplexV1ContentSqlScript>(
          map['sqlScript']),
    );
  }
}
