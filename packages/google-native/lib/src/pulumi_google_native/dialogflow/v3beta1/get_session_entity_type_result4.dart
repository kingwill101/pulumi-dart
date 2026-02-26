// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_entity_response.dart';

/// Result data returned by getSessionEntityType.
class GetSessionEntityTypeResult4 {
  /// The collection of entities to override or supplement the custom entity type.
  final List<GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse> entities;

  /// Indicates whether the additional data should override or supplement the custom entity type definition.
  final String entityOverrideMode;

  /// The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.
  final String name;

  GetSessionEntityTypeResult4({
    required this.entities,
    required this.entityOverrideMode,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entities'] = Input.encodeList<
        GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse,
        Map<String, dynamic>>(entities, (value) => value.toMap());
    map['entityOverrideMode'] = entityOverrideMode;
    map['name'] = name;
    return map;
  }

  factory GetSessionEntityTypeResult4.fromMap(Map<String, dynamic> map) {
    return GetSessionEntityTypeResult4(
      entities: Input.decodeList<
              GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse>(
          map['entities'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      entityOverrideMode: map['entityOverrideMode'] as String,
      name: map['name'] as String,
    );
  }
}
