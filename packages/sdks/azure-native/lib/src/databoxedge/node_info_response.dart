// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_ipconfiguration_response.dart';

/// Kubernetes node info
class NodeInfoResponse {
  /// IP Configuration of the Kubernetes node.
  final pulumi.Input<List<KubernetesIPConfigurationResponse>>? ipConfiguration;

  /// Node name.
  final pulumi.Input<String> name;

  /// Node type - Master/Worker
  final pulumi.Input<String> type;

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
      'ipConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            List<KubernetesIPConfigurationResponse>,
            List<Map<String, dynamic>>
          >(
            ipConfiguration,
            (value) =>
                pulumi.Input.encodeList<
                  KubernetesIPConfigurationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'type': type,
    };
  }

  factory NodeInfoResponse.fromMap(Map<String, dynamic> map) {
    return NodeInfoResponse(
      ipConfiguration: (() {
        final guardedValue = map['ipConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<KubernetesIPConfigurationResponse>(
            guardedValue,
            (value) => KubernetesIPConfigurationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
