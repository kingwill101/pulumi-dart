// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_v2beta1_entity_type_entity_response.dart';

/// Result data returned by getSessionEntityType.
class GetSessionEntityTypeResult2 {
  /// The collection of entities associated with this session entity type.
  final List<GoogleCloudDialogflowV2beta1EntityTypeEntityResponse> entities;

  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  final String entityOverrideMode;

  /// The unique identifier of this session entity type. Supported formats: - `projects//agent/sessions//entityTypes/` - `projects//locations//agent/sessions//entityTypes/` - `projects//agent/environments//users//sessions//entityTypes/` - `projects//locations//agent/environments/ /users//sessions//entityTypes/` If `Location ID` is not specified we assume default 'us' location. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.
  final String name;

  GetSessionEntityTypeResult2({
    required this.entities,
    required this.entityOverrideMode,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entities'] = Input.encodeList<
        GoogleCloudDialogflowV2beta1EntityTypeEntityResponse,
        Map<String, dynamic>>(entities, (value) => value.toMap());
    map['entityOverrideMode'] = entityOverrideMode;
    map['name'] = name;
    return map;
  }

  factory GetSessionEntityTypeResult2.fromMap(Map<String, dynamic> map) {
    return GetSessionEntityTypeResult2(
      entities: Input.decodeList<
              GoogleCloudDialogflowV2beta1EntityTypeEntityResponse>(
          map['entities'],
          (value) =>
              GoogleCloudDialogflowV2beta1EntityTypeEntityResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      entityOverrideMode: map['entityOverrideMode'] as String,
      name: map['name'] as String,
    );
  }
}
