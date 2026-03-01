// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_v1alpha_get_engine_args_doc}
/// Arguments for getEngine.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1alpha_get_engine_args_doc}
class GetEngineArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> engineId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEngineArgs].
  /// [collectionId] Required.
  /// [engineId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEngineArgs({
    required String collectionId,
    required String engineId,
    required String location,
    String? project,
  }) : collectionId = pulumi.Input.asInput<String>(collectionId),
       engineId = pulumi.Input.asInput<String>(engineId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'engineId': engineId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEngineArgs.fromMap(Map<String, dynamic> map) {
    return GetEngineArgs(
      collectionId: map['collectionId'] as String,
      engineId: map['engineId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
