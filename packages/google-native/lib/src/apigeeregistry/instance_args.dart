// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config.dart';

/// {@template pulumi_apigeeregistry_v1_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_instance_args_doc}
class InstanceArgs {
  /// Config of the Instance.
  final pulumi.Input<Config> config;

  /// Required. Identifier to assign to the Instance. Must be unique within scope of the parent resource.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? location;

  /// Format: `projects/*/locations/*/instance`. Currently only `locations/global` is supported.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [InstanceArgs].
  /// [config] Config of the Instance.
  /// [instanceId] Required. Identifier to assign to the Instance. Must be unique within scope of the parent resource.
  /// [location] Optional.
  /// [name] Format: `projects/*/locations/*/instance`. Currently only `locations/global` is supported.
  /// [project] Optional.
  InstanceArgs({
    required Config config,
    required String instanceId,
    String? location,
    String? name,
    String? project,
  }) : config = pulumi.Input.asInput<Config>(config),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<Config, Map<String, dynamic>>(
        config,
        (value) => value.toMap(),
      ),
      'instanceId': instanceId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      config: Config.fromMap((map['config'] as Map).cast<String, dynamic>()),
      instanceId: map['instanceId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
