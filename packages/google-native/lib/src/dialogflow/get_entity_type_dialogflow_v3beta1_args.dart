// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3beta1_get_entity_type_dialogflow_v3beta1_args_doc}
/// Arguments for getEntityType.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_get_entity_type_dialogflow_v3beta1_args_doc}
class GetEntityTypeDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntityTypeDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [entityTypeId] Required.
  /// [languageCode] Optional.
  /// [location] Required.
  /// [project] Optional.
  GetEntityTypeDialogflowV3beta1Args({
    required String agentId,
    required String entityTypeId,
    String? languageCode,
    required String location,
    String? project,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      entityTypeId = pulumi.Input.asInput<String>(entityTypeId),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'entityTypeId': entityTypeId,
      'languageCode': ?languageCode,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEntityTypeDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetEntityTypeDialogflowV3beta1Args(
      agentId: map['agentId'] as String,
      entityTypeId: map['entityTypeId'] as String,
      languageCode: map['languageCode'] == null ? null : map['languageCode'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

