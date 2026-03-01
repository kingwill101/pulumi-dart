// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_specialist_pool_args_doc}
/// Arguments for getSpecialistPool.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_specialist_pool_args_doc}
class GetSpecialistPoolArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> specialistPoolId;

  /// Creates a new [GetSpecialistPoolArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [specialistPoolId] Required.
  GetSpecialistPoolArgs({
    required String location,
    String? project,
    required String specialistPoolId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       specialistPoolId = pulumi.Input.asInput<String>(specialistPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'specialistPoolId': specialistPoolId,
    };
  }

  factory GetSpecialistPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetSpecialistPoolArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      specialistPoolId: map['specialistPoolId'] as String,
    );
  }
}
