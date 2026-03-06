// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_var.dart';
import 'session_container_resources.dart';
import 'session_probe.dart';

/// Container definitions for the sessions of the session pool.
class SessionContainer {
  /// Container start command arguments.
  final pulumi.Input<List<String>>? args;
  /// Container start command.
  final pulumi.Input<List<String>>? command;
  /// Container environment variables.
  final pulumi.Input<List<EnvironmentVar>>? env;
  /// Container image tag.
  final pulumi.Input<String>? image;
  /// Custom container name.
  final pulumi.Input<String>? name;
  /// List of probes for the container.
  final pulumi.Input<List<SessionProbe>>? probes;
  /// Container resource requirements.
  final pulumi.Input<SessionContainerResources>? resources;

  /// Creates a new [SessionContainer].
  /// [args] Container start command arguments.
  /// [command] Container start command.
  /// [env] Container environment variables.
  /// [image] Container image tag.
  /// [name] Custom container name.
  /// [probes] List of probes for the container.
  /// [resources] Container resource requirements.
  const SessionContainer({
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
      'env': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVar>, List<Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeList<EnvironmentVar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?image,
      'name': ?name,
      'probes': ?pulumi.Input.mapOptionalInputValue<List<SessionProbe>, List<Map<String, dynamic>>>(probes, (value) => pulumi.Input.encodeList<SessionProbe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?pulumi.Input.mapOptionalInputValue<SessionContainerResources, Map<String, dynamic>>(resources, (value) => value.toMap()),
    };
  }

  factory SessionContainer.fromMap(Map<String, dynamic> map) {
    return SessionContainer(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentVar>(guardedValue, (value) => EnvironmentVar.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      probes: (() { final guardedValue = map['probes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SessionProbe>(guardedValue, (value) => SessionProbe.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SessionContainerResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

