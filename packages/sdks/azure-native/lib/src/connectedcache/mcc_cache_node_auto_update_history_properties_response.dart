// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mcc_cache_node_auto_update_info_response.dart';

/// Mcc cache node resource auto update history properties.
class MccCacheNodeAutoUpdateHistoryPropertiesResponse {
  /// Cache node resource auto update history information.
  final pulumi.Input<List<MccCacheNodeAutoUpdateInfoResponse>>? autoUpdateHistory;
  /// Mcc cache node resource Id.
  final pulumi.Input<String> cacheNodeId;
  /// Mcc customer resource Id.
  final pulumi.Input<String> customerId;

  /// Creates a new [MccCacheNodeAutoUpdateHistoryPropertiesResponse].
  /// [autoUpdateHistory] Cache node resource auto update history information.
  /// [cacheNodeId] Mcc cache node resource Id.
  /// [customerId] Mcc customer resource Id.
  const MccCacheNodeAutoUpdateHistoryPropertiesResponse({
    this.autoUpdateHistory,
    required this.cacheNodeId,
    required this.customerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpdateHistory': ?pulumi.Input.mapOptionalInputValue<List<MccCacheNodeAutoUpdateInfoResponse>, List<Map<String, dynamic>>>(autoUpdateHistory, (value) => pulumi.Input.encodeList<MccCacheNodeAutoUpdateInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cacheNodeId': cacheNodeId,
      'customerId': customerId,
    };
  }

  factory MccCacheNodeAutoUpdateHistoryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MccCacheNodeAutoUpdateHistoryPropertiesResponse(
      autoUpdateHistory: (() { final guardedValue = map['autoUpdateHistory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MccCacheNodeAutoUpdateInfoResponse>(guardedValue, (value) => MccCacheNodeAutoUpdateInfoResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cacheNodeId: pulumi.Input.fromValue(map['cacheNodeId'] as String),
      customerId: pulumi.Input.fromValue(map['customerId'] as String),
    );
  }
}
