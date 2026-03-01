// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_environment_args_doc}
/// Arguments for getEnvironment.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_environment_args_doc}
class GetEnvironmentArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEnvironmentArgs].
  /// [environmentId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEnvironmentArgs({
    required String environmentId,
    required String lakeId,
    required String location,
    String? project,
  }) : environmentId = pulumi.Input.asInput<String>(environmentId),
       lakeId = pulumi.Input.asInput<String>(lakeId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'lakeId': lakeId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentArgs(
      environmentId: map['environmentId'] as String,
      lakeId: map['lakeId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
