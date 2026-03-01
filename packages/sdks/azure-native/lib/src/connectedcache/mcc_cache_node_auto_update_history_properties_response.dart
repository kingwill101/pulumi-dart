// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mcc_cache_node_auto_update_info_response.dart';

/// Mcc cache node resource auto update history properties.
class MccCacheNodeAutoUpdateHistoryPropertiesResponse {
  /// Cache node resource auto update history information.
  final List<MccCacheNodeAutoUpdateInfoResponse>? autoUpdateHistory;
  /// Mcc cache node resource Id.
  final String cacheNodeId;
  /// Mcc customer resource Id.
  final String customerId;

  /// Creates a new [MccCacheNodeAutoUpdateHistoryPropertiesResponse].
  /// [autoUpdateHistory] Cache node resource auto update history information.
  /// [cacheNodeId] Mcc cache node resource Id.
  /// [customerId] Mcc customer resource Id.
  MccCacheNodeAutoUpdateHistoryPropertiesResponse({
    this.autoUpdateHistory,
    required this.cacheNodeId,
    required this.customerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpdateHistory': ?autoUpdateHistory == null ? null : pulumi.Input.encodeList<MccCacheNodeAutoUpdateInfoResponse, Map<String, dynamic>>(autoUpdateHistory!, (value) => value.toMap()),
      'cacheNodeId': cacheNodeId,
      'customerId': customerId,
    };
  }

  factory MccCacheNodeAutoUpdateHistoryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MccCacheNodeAutoUpdateHistoryPropertiesResponse(
      autoUpdateHistory: map['autoUpdateHistory'] == null ? null : pulumi.Input.decodeList<MccCacheNodeAutoUpdateInfoResponse>(map['autoUpdateHistory'], (value) => MccCacheNodeAutoUpdateInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      cacheNodeId: map['cacheNodeId'] as String,
      customerId: map['customerId'] as String,
    );
  }
}

