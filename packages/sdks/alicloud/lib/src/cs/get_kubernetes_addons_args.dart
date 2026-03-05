// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_kubernetes_addons_get_kubernetes_addons_args_doc}
/// Arguments for getKubernetesAddons.
/// {@endtemplate}
/// {@macro pulumi_cs_get_kubernetes_addons_get_kubernetes_addons_args_doc}
class GetKubernetesAddonsArgs {
  /// The id of kubernetes cluster.
  final pulumi.Input<String> clusterId;
  /// A list of addon IDs. The id of addon consists of the cluster id and the addon name, with the structure &lt;cluster_ud&gt;:&lt;addon_name&gt;.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by addon name.
  final pulumi.Input<String>? nameRegex;

  /// Creates a new [GetKubernetesAddonsArgs].
  /// [clusterId] The id of kubernetes cluster.
  /// [ids] A list of addon IDs. The id of addon consists of the cluster id and the addon name, with the structure &lt;cluster_ud&gt;:&lt;addon_name&gt;.
  /// [nameRegex] A regex string to filter results by addon name.
  GetKubernetesAddonsArgs({
    required this.clusterId,
    this.ids,
    this.nameRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
    };
  }

  factory GetKubernetesAddonsArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesAddonsArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

