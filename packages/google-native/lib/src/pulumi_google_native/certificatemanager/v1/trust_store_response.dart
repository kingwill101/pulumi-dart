// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intermediate_caresponse.dart';
import 'trust_anchor_response.dart';

/// Defines a trust store.
class TrustStoreResponse {
  /// Set of intermediate CA certificates used for the path building phase of chain validation. The field is currently not supported if TrustConfig is used for the workload certificate feature.
  final List<IntermediateCAResponse> intermediateCas;

  /// List of Trust Anchors to be used while performing validation against a given TrustStore.
  final List<TrustAnchorResponse> trustAnchors;

  TrustStoreResponse({
    required this.intermediateCas,
    required this.trustAnchors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['intermediateCas'] =
        pulumi.Input.encodeList<IntermediateCAResponse, Map<String, dynamic>>(
            intermediateCas, (value) => value.toMap());
    map['trustAnchors'] =
        pulumi.Input.encodeList<TrustAnchorResponse, Map<String, dynamic>>(
            trustAnchors, (value) => value.toMap());
    return map;
  }

  factory TrustStoreResponse.fromMap(Map<String, dynamic> map) {
    return TrustStoreResponse(
      intermediateCas: pulumi.Input.decodeList<IntermediateCAResponse>(
          map['intermediateCas'],
          (value) => IntermediateCAResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      trustAnchors: pulumi.Input.decodeList<TrustAnchorResponse>(
          map['trustAnchors'],
          (value) => TrustAnchorResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
