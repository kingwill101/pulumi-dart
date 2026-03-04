// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mcc_issue_response.dart';

/// Mcc cache node resource issue history properties.
class MccCacheNodeIssueHistoryPropertiesResponse {
  /// Mcc cache node resource Id.
  final pulumi.Input<String> cacheNodeId;

  /// Mcc customer resource Id.
  final pulumi.Input<String> customerId;

  /// Cache node resource issue details history.
  final pulumi.Input<List<MccIssueResponse>>? mccIssueHistory;

  /// Creates a new [MccCacheNodeIssueHistoryPropertiesResponse].
  /// [cacheNodeId] Mcc cache node resource Id.
  /// [customerId] Mcc customer resource Id.
  /// [mccIssueHistory] Cache node resource issue details history.
  MccCacheNodeIssueHistoryPropertiesResponse({
    required this.cacheNodeId,
    required this.customerId,
    this.mccIssueHistory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheNodeId': cacheNodeId,
      'customerId': customerId,
      'mccIssueHistory':
          ?pulumi.Input.mapOptionalInputValue<
            List<MccIssueResponse>,
            List<Map<String, dynamic>>
          >(
            mccIssueHistory,
            (value) =>
                pulumi.Input.encodeList<MccIssueResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory MccCacheNodeIssueHistoryPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return MccCacheNodeIssueHistoryPropertiesResponse(
      cacheNodeId: pulumi.Input.fromValue(map['cacheNodeId'] as String),
      customerId: pulumi.Input.fromValue(map['customerId'] as String),
      mccIssueHistory: (() {
        final guardedValue = map['mccIssueHistory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MccIssueResponse>(
            guardedValue,
            (value) => MccIssueResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
