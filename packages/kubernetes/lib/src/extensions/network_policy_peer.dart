// ignore_for_file: unused_element, unnecessary_cast

import '../meta/label_selector.dart';
import 'ipblock.dart';

/// DEPRECATED 1.9 - This group version of NetworkPolicyPeer is deprecated by networking/v1/NetworkPolicyPeer.
class NetworkPolicyPeer {
  /// IPBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
  final IPBlock? ipBlock;
  /// Selects Namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
  ///
  /// If PodSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects all Pods in the Namespaces selected by NamespaceSelector.
  final LabelSelector? namespaceSelector;
  /// This is a label selector which selects Pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
  ///
  /// If NamespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the Pods matching PodSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the Pods matching PodSelector in the policy's own Namespace.
  final LabelSelector? podSelector;

  /// Creates a new [NetworkPolicyPeer].
  /// [ipBlock] IPBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
  /// [namespaceSelector] Selects Namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
  /// [podSelector] This is a label selector which selects Pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
  NetworkPolicyPeer({
    this.ipBlock,
    this.namespaceSelector,
    this.podSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipBlock': ?ipBlock == null ? null : ipBlock!.toMap(),
      'namespaceSelector': ?namespaceSelector == null ? null : namespaceSelector!.toMap(),
      'podSelector': ?podSelector == null ? null : podSelector!.toMap(),
    };
  }

  factory NetworkPolicyPeer.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyPeer(
      ipBlock: map['ipBlock'] == null ? null : IPBlock.fromMap((map['ipBlock'] as Map).cast<String, dynamic>()),
      namespaceSelector: map['namespaceSelector'] == null ? null : LabelSelector.fromMap((map['namespaceSelector'] as Map).cast<String, dynamic>()),
      podSelector: map['podSelector'] == null ? null : LabelSelector.fromMap((map['podSelector'] as Map).cast<String, dynamic>()),
    );
  }
}

