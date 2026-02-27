// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'intermediate_ca.dart';
import 'trust_anchor.dart';

/// Defines a trust store.
class TrustStore {
  /// Set of intermediate CA certificates used for the path building phase of chain validation. The field is currently not supported if TrustConfig is used for the workload certificate feature.
  final List<IntermediateCA>? intermediateCas;

  /// List of Trust Anchors to be used while performing validation against a given TrustStore.
  final List<TrustAnchor>? trustAnchors;

  TrustStore({
    this.intermediateCas,
    this.trustAnchors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final intermediateCasValue = intermediateCas;
    if (intermediateCasValue != null) {
      map['intermediateCas'] =
          Input.encodeList<IntermediateCA, Map<String, dynamic>>(
              intermediateCasValue, (value) => value.toMap());
    }
    final trustAnchorsValue = trustAnchors;
    if (trustAnchorsValue != null) {
      map['trustAnchors'] = Input.encodeList<TrustAnchor, Map<String, dynamic>>(
          trustAnchorsValue, (value) => value.toMap());
    }
    return map;
  }

  factory TrustStore.fromMap(Map<String, dynamic> map) {
    return TrustStore(
      intermediateCas: map['intermediateCas'] == null
          ? null
          : Input.decodeList<IntermediateCA>(
              map['intermediateCas'],
              (value) => IntermediateCA.fromMap(
                  (value as Map).cast<String, dynamic>())),
      trustAnchors: map['trustAnchors'] == null
          ? null
          : Input.decodeList<TrustAnchor>(
              map['trustAnchors'],
              (value) =>
                  TrustAnchor.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
