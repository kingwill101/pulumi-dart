// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_kubernetes_addons_get_kubernetes_addons_args_doc}
/// Arguments for getKubernetesAddons.
/// {@endtemplate}
/// {@macro pulumi_cs_get_kubernetes_addons_get_kubernetes_addons_args_doc}
class GetKubernetesAddonsArgs {
  /// The id of kubernetes cluster.
  final pulumi.Input<String> clusterId;
  /// A list of addon IDs. The id of addon consists of the cluster id and the addon name, with the structure <cluster_ud>:<addon_name>.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by addon name.
  final pulumi.Input<String>? nameRegex;

  /// Creates a new [GetKubernetesAddonsArgs].
  /// [clusterId] The id of kubernetes cluster.
  /// [ids] A list of addon IDs. The id of addon consists of the cluster id and the addon name, with the structure <cluster_ud>:<addon_name>.
  /// [nameRegex] A regex string to filter results by addon name.
  GetKubernetesAddonsArgs({
    required pulumi.Output<String> clusterId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
    };
  }

  factory GetKubernetesAddonsArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesAddonsArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
    );
  }
}

