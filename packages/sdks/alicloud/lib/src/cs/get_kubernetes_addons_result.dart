// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_addons_addon.dart';

/// Result data returned by getKubernetesAddons.
class GetKubernetesAddonsResult {
  /// A list of addons.
  final List<GetKubernetesAddonsAddon> addons;
  /// The id of kubernetes cluster.
  final String clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of addon names.
  final List<String> names;

  /// Creates a new [GetKubernetesAddonsResult].
  /// [addons] A list of addons.
  /// [clusterId] The id of kubernetes cluster.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of addon names.
  GetKubernetesAddonsResult({
    required this.addons,
    required this.clusterId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addons': pulumi.Input.encodeList<GetKubernetesAddonsAddon, Map<String, dynamic>>(addons, (value) => value.toMap()),
      'clusterId': clusterId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
    };
  }

  factory GetKubernetesAddonsResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesAddonsResult(
      addons: pulumi.Input.decodeList<GetKubernetesAddonsAddon>(map['addons']!, (value) => GetKubernetesAddonsAddon.fromMap((value as Map).cast<String, dynamic>())),
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
    );
  }
}

