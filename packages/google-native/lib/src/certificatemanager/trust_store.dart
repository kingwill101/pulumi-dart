// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intermediate_ca.dart';
import 'trust_anchor.dart';

/// Defines a trust store.
class TrustStore {
  /// Set of intermediate CA certificates used for the path building phase of chain validation. The field is currently not supported if TrustConfig is used for the workload certificate feature.
  final List<IntermediateCA>? intermediateCas;
  /// List of Trust Anchors to be used while performing validation against a given TrustStore.
  final List<TrustAnchor>? trustAnchors;

  /// Creates a new [TrustStore].
  /// [intermediateCas] Set of intermediate CA certificates used for the path building phase of chain validation. The field is currently not supported if TrustConfig is used for the workload certificate feature.
  /// [trustAnchors] List of Trust Anchors to be used while performing validation against a given TrustStore.
  TrustStore({
    this.intermediateCas,
    this.trustAnchors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intermediateCas': ?intermediateCas == null ? null : pulumi.Input.encodeList<IntermediateCA, Map<String, dynamic>>(intermediateCas!, (value) => value.toMap()),
      'trustAnchors': ?trustAnchors == null ? null : pulumi.Input.encodeList<TrustAnchor, Map<String, dynamic>>(trustAnchors!, (value) => value.toMap()),
    };
  }

  factory TrustStore.fromMap(Map<String, dynamic> map) {
    return TrustStore(
      intermediateCas: map['intermediateCas'] == null ? null : pulumi.Input.decodeList<IntermediateCA>(map['intermediateCas'], (value) => IntermediateCA.fromMap((value as Map).cast<String, dynamic>())),
      trustAnchors: map['trustAnchors'] == null ? null : pulumi.Input.decodeList<TrustAnchor>(map['trustAnchors'], (value) => TrustAnchor.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

