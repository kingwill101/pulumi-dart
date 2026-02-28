// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_entity_type_args_doc}
/// Arguments for getEntityType.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_entity_type_args_doc}
class GetEntityTypeArgs {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntityTypeArgs].
  /// [entityTypeId] Required.
  /// [featurestoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEntityTypeArgs({
    required String entityTypeId,
    required String featurestoreId,
    required String location,
    String? project,
  }) :
      entityTypeId = pulumi.Input.asInput<String>(entityTypeId),
      featurestoreId = pulumi.Input.asInput<String>(featurestoreId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityTypeId': entityTypeId,
      'featurestoreId': featurestoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityTypeArgs(
      entityTypeId: map['entityTypeId'] as String,
      featurestoreId: map['featurestoreId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

