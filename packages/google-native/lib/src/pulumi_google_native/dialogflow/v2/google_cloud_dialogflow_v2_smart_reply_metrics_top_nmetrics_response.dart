// ignore_for_file: unused_element, unnecessary_cast

/// Evaluation metrics when retrieving `n` smart replies with the model.
class GoogleCloudDialogflowV2SmartReplyMetricsTopNMetricsResponse {
  /// Number of retrieved smart replies. For example, when `n` is 3, this evaluation contains metrics for when Dialogflow retrieves 3 smart replies with the model.
  final int n;

  /// Defined as `number of queries whose top n smart replies have at least one similar (token match similarity above the defined threshold) reply as the real reply` divided by `number of queries with at least one smart reply`. Value ranges from 0.0 to 1.0 inclusive.
  final double recall;

  GoogleCloudDialogflowV2SmartReplyMetricsTopNMetricsResponse({
    required this.n,
    required this.recall,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['n'] = n;
    map['recall'] = recall;
    return map;
  }

  factory GoogleCloudDialogflowV2SmartReplyMetricsTopNMetricsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2SmartReplyMetricsTopNMetricsResponse(
      n: map['n'] as int,
      recall: map['recall'] as double,
    );
  }
}
