// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2_entity_type_entity_response.dart';

/// Result data returned by getSessionEntityType.
class GetSessionEntityTypeResult {
  /// The collection of entities associated with this session entity type.
  final List<GoogleCloudDialogflowV2EntityTypeEntityResponse> entities;

  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  final String entityOverrideMode;

  /// The unique identifier of this session entity type. Format: `projects//agent/sessions//entityTypes/`, or `projects//agent/environments//users//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.
  final String name;

  GetSessionEntityTypeResult({
    required this.entities,
    required this.entityOverrideMode,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entities'] = Input.encodeList<
        GoogleCloudDialogflowV2EntityTypeEntityResponse,
        Map<String, dynamic>>(entities, (value) => value.toMap());
    map['entityOverrideMode'] = entityOverrideMode;
    map['name'] = name;
    return map;
  }

  factory GetSessionEntityTypeResult.fromMap(Map<String, dynamic> map) {
    return GetSessionEntityTypeResult(
      entities:
          Input.decodeList<GoogleCloudDialogflowV2EntityTypeEntityResponse>(
              map['entities'],
              (value) =>
                  GoogleCloudDialogflowV2EntityTypeEntityResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      entityOverrideMode: map['entityOverrideMode'] as String,
      name: map['name'] as String,
    );
  }
}
