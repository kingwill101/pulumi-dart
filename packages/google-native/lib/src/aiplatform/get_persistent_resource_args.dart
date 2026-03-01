// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_persistent_resource_args_doc}
/// Arguments for getPersistentResource.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_persistent_resource_args_doc}
class GetPersistentResourceArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> persistentResourceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPersistentResourceArgs].
  /// [location] Required.
  /// [persistentResourceId] Required.
  /// [project] Optional.
  GetPersistentResourceArgs({
    required String location,
    required String persistentResourceId,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       persistentResourceId = pulumi.Input.asInput<String>(
         persistentResourceId,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'persistentResourceId': persistentResourceId,
      'project': ?project,
    };
  }

  factory GetPersistentResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetPersistentResourceArgs(
      location: map['location'] as String,
      persistentResourceId: map['persistentResourceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
