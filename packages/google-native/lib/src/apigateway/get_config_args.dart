// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_v1_get_config_args_doc}
/// Arguments for getConfig.
/// {@endtemplate}
/// {@macro pulumi_apigateway_v1_get_config_args_doc}
class GetConfigArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> configId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetConfigArgs].
  /// [apiId] Required.
  /// [configId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetConfigArgs({
    required String apiId,
    required String configId,
    required String location,
    String? project,
    String? view,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      configId = pulumi.Input.asInput<String>(configId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'configId': configId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigArgs(
      apiId: map['apiId'] as String,
      configId: map['configId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}

