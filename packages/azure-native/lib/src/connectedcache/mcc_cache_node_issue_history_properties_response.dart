// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mcc_issue_response.dart';

/// Mcc cache node resource issue history properties.
class MccCacheNodeIssueHistoryPropertiesResponse {
  /// Mcc cache node resource Id.
  final String cacheNodeId;
  /// Mcc customer resource Id.
  final String customerId;
  /// Cache node resource issue details history.
  final List<MccIssueResponse>? mccIssueHistory;

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
      'mccIssueHistory': ?mccIssueHistory == null ? null : pulumi.Input.encodeList<MccIssueResponse, Map<String, dynamic>>(mccIssueHistory!, (value) => value.toMap()),
    };
  }

  factory MccCacheNodeIssueHistoryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MccCacheNodeIssueHistoryPropertiesResponse(
      cacheNodeId: map['cacheNodeId'] as String,
      customerId: map['customerId'] as String,
      mccIssueHistory: map['mccIssueHistory'] == null ? null : pulumi.Input.decodeList<MccIssueResponse>(map['mccIssueHistory'], (value) => MccIssueResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

