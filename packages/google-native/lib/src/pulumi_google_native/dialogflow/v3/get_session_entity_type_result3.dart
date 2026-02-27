// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3_entity_type_entity_response.dart';

/// Result data returned by getSessionEntityType.
class GetSessionEntityTypeResult3 {
  /// The collection of entities to override or supplement the custom entity type.
  final List<GoogleCloudDialogflowCxV3EntityTypeEntityResponse> entities;

  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  final String entityOverrideMode;

  /// The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.
  final String name;

  GetSessionEntityTypeResult3({
    required this.entities,
    required this.entityOverrideMode,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entities'] = Input.encodeList<
        GoogleCloudDialogflowCxV3EntityTypeEntityResponse,
        Map<String, dynamic>>(entities, (value) => value.toMap());
    map['entityOverrideMode'] = entityOverrideMode;
    map['name'] = name;
    return map;
  }

  factory GetSessionEntityTypeResult3.fromMap(Map<String, dynamic> map) {
    return GetSessionEntityTypeResult3(
      entities:
          Input.decodeList<GoogleCloudDialogflowCxV3EntityTypeEntityResponse>(
              map['entities'],
              (value) =>
                  GoogleCloudDialogflowCxV3EntityTypeEntityResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      entityOverrideMode: map['entityOverrideMode'] as String,
      name: map['name'] as String,
    );
  }
}
