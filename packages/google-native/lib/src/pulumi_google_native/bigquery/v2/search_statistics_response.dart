// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_unused_reason_response.dart';

class SearchStatisticsResponse {
  /// When index_usage_mode is UNUSED or PARTIALLY_USED, this field explains why index was not used in all or part of the search query. If index_usage_mode is FULLLY_USED, this field is not populated.
  final List<IndexUnusedReasonResponse> indexUnusedReasons;

  /// Specifies index usage mode for the query.
  final String indexUsageMode;

  SearchStatisticsResponse({
    required this.indexUnusedReasons,
    required this.indexUsageMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexUnusedReasons'] = pulumi.Input.encodeList<
        IndexUnusedReasonResponse,
        Map<String, dynamic>>(indexUnusedReasons, (value) => value.toMap());
    map['indexUsageMode'] = indexUsageMode;
    return map;
  }

  factory SearchStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return SearchStatisticsResponse(
      indexUnusedReasons: pulumi.Input.decodeList<IndexUnusedReasonResponse>(
          map['indexUnusedReasons'],
          (value) => IndexUnusedReasonResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      indexUsageMode: map['indexUsageMode'] as String,
    );
  }
}
