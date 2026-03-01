// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_entity_type_args_doc}
/// Arguments for getEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_entity_type_args_doc}
class GetEntityTypeArgs {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntityTypeArgs].
  /// [entityTypeId] Required.
  /// [languageCode] Optional.
  /// [location] Required.
  /// [project] Optional.
  GetEntityTypeArgs({
    required String entityTypeId,
    String? languageCode,
    required String location,
    String? project,
  }) : entityTypeId = pulumi.Input.asInput<String>(entityTypeId),
       languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityTypeId': entityTypeId,
      'languageCode': ?languageCode,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityTypeArgs(
      entityTypeId: map['entityTypeId'] as String,
      languageCode: map['languageCode'] == null
          ? null
          : map['languageCode'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
