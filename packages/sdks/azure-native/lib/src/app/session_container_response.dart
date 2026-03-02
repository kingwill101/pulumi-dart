// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_var_response.dart';
import 'session_container_resources_response.dart';
import 'session_probe_response.dart';

/// Container definitions for the sessions of the session pool.
class SessionContainerResponse {
  /// Container start command arguments.
  final pulumi.Input<List<String>>? args;
  /// Container start command.
  final pulumi.Input<List<String>>? command;
  /// Container environment variables.
  final pulumi.Input<List<EnvironmentVarResponse>>? env;
  /// Container image tag.
  final pulumi.Input<String>? image;
  /// Custom container name.
  final pulumi.Input<String>? name;
  /// List of probes for the container.
  final pulumi.Input<List<SessionProbeResponse>>? probes;
  /// Container resource requirements.
  final pulumi.Input<SessionContainerResourcesResponse>? resources;

  /// Creates a new [SessionContainerResponse].
  /// [args] Container start command arguments.
  /// [command] Container start command.
  /// [env] Container environment variables.
  /// [image] Container image tag.
  /// [name] Custom container name.
  /// [probes] List of probes for the container.
  /// [resources] Container resource requirements.
  SessionContainerResponse({
    this.args,
    this.command,
    this.env,
    this.image,
    this.name,
    this.probes,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'command': ?command,
      'env': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVarResponse>, List<Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeList<EnvironmentVarResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'name': ?name,
      'probes': ?pulumi.Input.mapOptionalInputValue<List<SessionProbeResponse>, List<Map<String, dynamic>>>(probes, (value) => pulumi.Input.encodeList<SessionProbeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?pulumi.Input.mapOptionalInputValue<SessionContainerResourcesResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
    };
  }

  factory SessionContainerResponse.fromMap(Map<String, dynamic> map) {
    return SessionContainerResponse(
      args: map['args'] == null ? null : ((map['args'] as List).cast<String>()).input(),
      command: map['command'] == null ? null : ((map['command'] as List).cast<String>()).input(),
      env: map['env'] == null ? null : (pulumi.Input.decodeList<EnvironmentVarResponse>(map['env'], (value) => EnvironmentVarResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: map['image'] == null ? null : (map['image'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      probes: map['probes'] == null ? null : (pulumi.Input.decodeList<SessionProbeResponse>(map['probes'], (value) => SessionProbeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resources: map['resources'] == null ? null : (SessionContainerResourcesResponse.fromMap((map['resources'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

