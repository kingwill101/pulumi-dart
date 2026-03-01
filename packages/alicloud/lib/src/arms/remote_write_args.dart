// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_remote_write_remote_write_args_doc}
/// The set of arguments for RemoteWrite.
/// {@endtemplate}
/// {@macro pulumi_arms_remote_write_remote_write_args_doc}
class RemoteWriteArgs {
  /// The ID of the Prometheus instance.
  final pulumi.Input<String> clusterId;
  /// The details of the Remote Write configuration item. Specify the value in the YAML format.
  final pulumi.Input<String> remoteWriteYaml;

  /// Creates a new [RemoteWriteArgs].
  /// [clusterId] The ID of the Prometheus instance.
  /// [remoteWriteYaml] The details of the Remote Write configuration item. Specify the value in the YAML format.
  RemoteWriteArgs({
    required String clusterId,
    required String remoteWriteYaml,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      remoteWriteYaml = pulumi.Input.asInput<String>(remoteWriteYaml);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'remoteWriteYaml': remoteWriteYaml,
    };
  }

  factory RemoteWriteArgs.fromMap(Map<String, dynamic> map) {
    return RemoteWriteArgs(
      clusterId: map['clusterId'] as String,
      remoteWriteYaml: map['remoteWriteYaml'] as String,
    );
  }
}

