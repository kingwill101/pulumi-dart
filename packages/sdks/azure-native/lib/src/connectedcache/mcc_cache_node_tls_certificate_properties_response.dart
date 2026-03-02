// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mcc_cache_node_tls_certificate_response.dart';

/// Mcc cache node resource auto update properties.
class MccCacheNodeTlsCertificatePropertiesResponse {
  /// Mcc cache node resource Id.
  final pulumi.Input<String> cacheNodeId;
  /// Mcc customer resource Id.
  final pulumi.Input<String> customerId;
  /// Cache node resource tls certificate history details.
  final pulumi.Input<List<MccCacheNodeTlsCertificateResponse>>? tlsCertificateHistory;

  /// Creates a new [MccCacheNodeTlsCertificatePropertiesResponse].
  /// [cacheNodeId] Mcc cache node resource Id.
  /// [customerId] Mcc customer resource Id.
  /// [tlsCertificateHistory] Cache node resource tls certificate history details.
  MccCacheNodeTlsCertificatePropertiesResponse({
    required this.cacheNodeId,
    required this.customerId,
    this.tlsCertificateHistory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheNodeId': cacheNodeId,
      'customerId': customerId,
      'tlsCertificateHistory': ?pulumi.Input.mapOptionalInputValue<List<MccCacheNodeTlsCertificateResponse>, List<Map<String, dynamic>>>(tlsCertificateHistory, (value) => pulumi.Input.encodeList<MccCacheNodeTlsCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MccCacheNodeTlsCertificatePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MccCacheNodeTlsCertificatePropertiesResponse(
      cacheNodeId: (map['cacheNodeId'] as String).input(),
      customerId: (map['customerId'] as String).input(),
      tlsCertificateHistory: map['tlsCertificateHistory'] == null ? null : (pulumi.Input.decodeList<MccCacheNodeTlsCertificateResponse>(map['tlsCertificateHistory'], (value) => MccCacheNodeTlsCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

