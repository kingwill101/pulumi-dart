// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_ipconfiguration_response.dart';

/// Kubernetes node info
class NodeInfoResponse {
  /// IP Configuration of the Kubernetes node.
  final List<KubernetesIPConfigurationResponse>? ipConfiguration;
  /// Node name.
  final String name;
  /// Node type - Master/Worker
  final String type;

  /// Creates a new [NodeInfoResponse].
  /// [ipConfiguration] IP Configuration of the Kubernetes node.
  /// [name] Node name.
  /// [type] Node type - Master/Worker
  NodeInfoResponse({
    this.ipConfiguration,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipConfiguration': ?ipConfiguration == null ? null : pulumi.Input.encodeList<KubernetesIPConfigurationResponse, Map<String, dynamic>>(ipConfiguration!, (value) => value.toMap()),
      'name': name,
      'type': type,
    };
  }

  factory NodeInfoResponse.fromMap(Map<String, dynamic> map) {
    return NodeInfoResponse(
      ipConfiguration: map['ipConfiguration'] == null ? null : pulumi.Input.decodeList<KubernetesIPConfigurationResponse>(map['ipConfiguration'], (value) => KubernetesIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

