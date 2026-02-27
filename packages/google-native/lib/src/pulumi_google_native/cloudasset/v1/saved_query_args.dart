// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'query_content.dart';

/// The set of arguments for SavedQuery.
class SavedQueryArgs {
  /// The query content.
  final Input<QueryContent>? content;

  /// The description of this saved query. This value should be fewer than 255 characters.
  final Input<String>? description;

  /// Labels applied on the resource. This value should not contain more than 10 entries. The key and value of each entry must be non-empty and fewer than 64 characters.
  final Input<Map<String, String>>? labels;

  /// The resource name of the saved query. The format must be: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id
  final Input<String>? name;

  /// Required. The ID to use for the saved query, which must be unique in the specified parent. It will become the final component of the saved query's resource name. This value should be 4-63 characters, and valid characters are `a-z-`. Notice that this field is required in the saved query creation, and the `name` field of the `saved_query` will be ignored.
  final Input<String> savedQueryId;
  final Input<String> v1Id;
  final Input<String> v1Id1;

  SavedQueryArgs({
    this.content,
    this.description,
    this.labels,
    this.name,
    required this.savedQueryId,
    required this.v1Id,
    required this.v1Id1,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentValue = content;
    if (contentValue != null) {
      map['content'] =
          Input.mapOptionalInputValue<QueryContent, Map<String, dynamic>>(
              contentValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['savedQueryId'] = savedQueryId;
    map['v1Id'] = v1Id;
    map['v1Id1'] = v1Id1;
    return map;
  }

  factory SavedQueryArgs.fromMap(Map<String, dynamic> map) {
    return SavedQueryArgs(
      content: Input.asOptionalInput<QueryContent>(map['content']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      savedQueryId: Input.asInput<String>(map['savedQueryId']),
      v1Id: Input.asInput<String>(map['v1Id']),
      v1Id1: Input.asInput<String>(map['v1Id1']),
    );
  }
}
