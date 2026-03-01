// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1_get_api_args_doc}
/// Arguments for getApi.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1_get_api_args_doc}
class GetApiArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetApiArgs].
  /// [apiId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetApiArgs({required String apiId, required String location, String? project})
    : apiId = pulumi.Input.asInput<String>(apiId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetApiArgs.fromMap(Map<String, dynamic> map) {
    return GetApiArgs(
      apiId: map['apiId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
