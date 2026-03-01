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
  RemoteWriteState({
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? remoteWriteName,
    pulumi.Output<String>? remoteWriteYaml,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      remoteWriteName = pulumi.Input.asOptionalInput<String>(remoteWriteName),
      remoteWriteYaml = pulumi.Input.asOptionalInput<String>(remoteWriteYaml);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'remoteWriteName': ?remoteWriteName,
      'remoteWriteYaml': ?remoteWriteYaml,
    };
  }

  factory RemoteWriteState.fromMap(Map<String, dynamic> map) {
    return RemoteWriteState(
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      remoteWriteName: map['remoteWriteName'] == null ? null : pulumi.Output.create<String>(map['remoteWriteName'] as String),
      remoteWriteYaml: map['remoteWriteYaml'] == null ? null : pulumi.Output.create<String>(map['remoteWriteYaml'] as String),
    );
  }
}

