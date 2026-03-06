// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RemoteWrite resources.
class RemoteWriteState {
  /// The ID of the Prometheus instance.
  final pulumi.Input<String>? clusterId;
  /// The name of the Remote Write configuration item.
  final pulumi.Input<String>? remoteWriteName;
  /// The details of the Remote Write configuration item. Specify the value in the YAML format.
  final pulumi.Input<String>? remoteWriteYaml;

  /// Creates a new [RemoteWriteState].
  /// [clusterId] The ID of the Prometheus instance.
  /// [remoteWriteName] The name of the Remote Write configuration item.
  /// [remoteWriteYaml] The details of the Remote Write configuration item. Specify the value in the YAML format.
  const RemoteWriteState({
    this.clusterId,
    this.remoteWriteName,
    this.remoteWriteYaml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'remoteWriteName': ?remoteWriteName,
      'remoteWriteYaml': ?remoteWriteYaml,
    };
  }

  factory RemoteWriteState.fromMap(Map<String, dynamic> map) {
    return RemoteWriteState(
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteWriteName: (() { final guardedValue = map['remoteWriteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteWriteYaml: (() { final guardedValue = map['remoteWriteYaml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

