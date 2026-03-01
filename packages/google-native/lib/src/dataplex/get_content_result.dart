// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_content_notebook_response.dart';
import 'google_cloud_dataplex_v1_content_sql_script_response.dart';

/// Result data returned by getContent.
class GetContentResult {
  /// Content creation time.
  final String createTime;

  /// Content data in string format.
  final String dataText;

  /// Optional. Description of the content.
  final String description;

  /// Optional. User defined labels for the content.
  final Map<String, String> labels;

  /// The relative resource name of the content, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}
  final String name;

  /// Notebook related configurations.
  final GoogleCloudDataplexV1ContentNotebookResponse notebook;

  /// The path for the Content file, represented as directory structure. Unique within a lake. Limited to alphanumerics, hyphens, underscores, dots and slashes.
  final String path;

  /// Sql Script related configurations.
  final GoogleCloudDataplexV1ContentSqlScriptResponse sqlScript;

  /// System generated globally unique ID for the content. This ID will be different if the content is deleted and re-created with the same name.
  final String uid;

  /// The time when the content was last updated.
  final String updateTime;

  /// Creates a new [GetContentResult].
  /// [createTime] Content creation time.
  /// [dataText] Content data in string format.
  /// [description] Optional. Description of the content.
  /// [labels] Optional. User defined labels for the content.
  /// [name] The relative resource name of the content, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}
  /// [notebook] Notebook related configurations.
  /// [path] The path for the Content file, represented as directory structure. Unique within a lake. Limited to alphanumerics, hyphens, underscores, dots and slashes.
  /// [sqlScript] Sql Script related configurations.
  /// [uid] System generated globally unique ID for the content. This ID will be different if the content is deleted and re-created with the same name.
  /// [updateTime] The time when the content was last updated.
  GetContentResult({
    required this.createTime,
    required this.dataText,
    required this.description,
    required this.labels,
    required this.name,
    required this.notebook,
    required this.path,
    required this.sqlScript,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dataText': dataText,
      'description': description,
      'labels': labels,
      'name': name,
      'notebook': notebook.toMap(),
      'path': path,
      'sqlScript': sqlScript.toMap(),
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetContentResult.fromMap(Map<String, dynamic> map) {
    return GetContentResult(
      createTime: map['createTime'] as String,
      dataText: map['dataText'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      notebook: GoogleCloudDataplexV1ContentNotebookResponse.fromMap(
        (map['notebook'] as Map).cast<String, dynamic>(),
      ),
      path: map['path'] as String,
      sqlScript: GoogleCloudDataplexV1ContentSqlScriptResponse.fromMap(
        (map['sqlScript'] as Map).cast<String, dynamic>(),
      ),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
