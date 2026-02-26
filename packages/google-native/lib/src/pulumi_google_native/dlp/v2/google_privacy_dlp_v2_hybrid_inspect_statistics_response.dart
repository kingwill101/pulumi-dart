// ignore_for_file: unused_element, unnecessary_cast

/// Statistics related to processing hybrid inspect requests.
class GooglePrivacyDlpV2HybridInspectStatisticsResponse {
  /// The number of hybrid inspection requests aborted because the job ran out of quota or was ended before they could be processed.
  final String abortedCount;

  /// The number of hybrid requests currently being processed. Only populated when called via method `getDlpJob`. A burst of traffic may cause hybrid inspect requests to be enqueued. Processing will take place as quickly as possible, but resource limitations may impact how long a request is enqueued for.
  final String pendingCount;

  /// The number of hybrid inspection requests processed within this job.
  final String processedCount;

  GooglePrivacyDlpV2HybridInspectStatisticsResponse({
    required this.abortedCount,
    required this.pendingCount,
    required this.processedCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['abortedCount'] = abortedCount;
    map['pendingCount'] = pendingCount;
    map['processedCount'] = processedCount;
    return map;
  }

  factory GooglePrivacyDlpV2HybridInspectStatisticsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2HybridInspectStatisticsResponse(
      abortedCount: map['abortedCount'] as String,
      pendingCount: map['pendingCount'] as String,
      processedCount: map['processedCount'] as String,
    );
  }
}
