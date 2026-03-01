// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mcc_cache_node_tls_certificate_response.dart';

/// Mcc cache node resource auto update properties.
class MccCacheNodeTlsCertificatePropertiesResponse {
  /// Mcc cache node resource Id.
  final String cacheNodeId;
  /// Mcc customer resource Id.
  final String customerId;
  /// Cache node resource tls certificate history details.
  final List<MccCacheNodeTlsCertificateResponse>? tlsCertificateHistory;

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
      'tlsCertificateHistory': ?tlsCertificateHistory == null ? null : pulumi.Input.encodeList<MccCacheNodeTlsCertificateResponse, Map<String, dynamic>>(tlsCertificateHistory!, (value) => value.toMap()),
    };
  }

  factory MccCacheNodeTlsCertificatePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MccCacheNodeTlsCertificatePropertiesResponse(
      cacheNodeId: map['cacheNodeId'] as String,
      customerId: map['customerId'] as String,
      tlsCertificateHistory: map['tlsCertificateHistory'] == null ? null : pulumi.Input.decodeList<MccCacheNodeTlsCertificateResponse>(map['tlsCertificateHistory'], (value) => MccCacheNodeTlsCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

