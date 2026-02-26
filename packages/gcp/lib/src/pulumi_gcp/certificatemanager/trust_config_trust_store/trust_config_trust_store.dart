// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../trust_config_trust_store_intermediate_ca/trust_config_trust_store_intermediate_ca.dart';
import '../trust_config_trust_store_trust_anchor/trust_config_trust_store_trust_anchor.dart';

class TrustConfigTrustStore {
  /// Set of intermediate CA certificates used for the path building phase of chain validation.
  /// The field is currently not supported if trust config is used for the workload certificate feature.
  /// Structure is documented below.
  final List<TrustConfigTrustStoreIntermediateCa>? intermediateCas;

  /// List of Trust Anchors to be used while performing validation against a given TrustStore.
  /// Structure is documented below.
  final List<TrustConfigTrustStoreTrustAnchor>? trustAnchors;

  TrustConfigTrustStore({
    this.intermediateCas,
    this.trustAnchors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final intermediateCasValue = intermediateCas;
    if (intermediateCasValue != null) {
      map['intermediateCas'] = Input.encodeList<
          TrustConfigTrustStoreIntermediateCa,
          Map<String, dynamic>>(intermediateCasValue, (value) => value.toMap());
    }
    final trustAnchorsValue = trustAnchors;
    if (trustAnchorsValue != null) {
      map['trustAnchors'] = Input.encodeList<TrustConfigTrustStoreTrustAnchor,
          Map<String, dynamic>>(trustAnchorsValue, (value) => value.toMap());
    }
    return map;
  }

  factory TrustConfigTrustStore.fromMap(Map<String, dynamic> map) {
    return TrustConfigTrustStore(
      intermediateCas: map['intermediateCas'] == null
          ? null
          : Input.decodeList<TrustConfigTrustStoreIntermediateCa>(
              map['intermediateCas'],
              (value) => TrustConfigTrustStoreIntermediateCa.fromMap(
                  (value as Map).cast<String, dynamic>())),
      trustAnchors: map['trustAnchors'] == null
          ? null
          : Input.decodeList<TrustConfigTrustStoreTrustAnchor>(
              map['trustAnchors'],
              (value) => TrustConfigTrustStoreTrustAnchor.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
