// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_spec_args_doc}
/// Arguments for getSpec.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_spec_args_doc}
class GetSpecArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> specId;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetSpecArgs].
  /// [apiId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [specId] Required.
  /// [versionId] Required.
  GetSpecArgs({
    required String apiId,
    required String location,
    String? project,
    required String specId,
    required String versionId,
  }) : apiId = pulumi.Input.asInput<String>(apiId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       specId = pulumi.Input.asInput<String>(specId),
       versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'location': location,
      'project': ?project,
      'specId': specId,
      'versionId': versionId,
    };
  }

  factory GetSpecArgs.fromMap(Map<String, dynamic> map) {
    return GetSpecArgs(
      apiId: map['apiId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      specId: map['specId'] as String,
      versionId: map['versionId'] as String,
    );
  }
}
