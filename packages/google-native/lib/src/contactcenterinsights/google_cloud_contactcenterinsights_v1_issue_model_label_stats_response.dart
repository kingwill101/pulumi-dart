// ignore_for_file: unused_element, unnecessary_cast

/// Aggregated statistics about an issue model.
class GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse {
  /// Number of conversations the issue model has analyzed at this point in time.
  final String analyzedConversationsCount;

  /// Statistics on each issue. Key is the issue's resource name.
  final Map<String, String> issueStats;

  /// Number of analyzed conversations for which no issue was applicable at this point in time.
  final String unclassifiedConversationsCount;

  /// Creates a new [GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse].
  /// [analyzedConversationsCount] Number of conversations the issue model has analyzed at this point in time.
  /// [issueStats] Statistics on each issue. Key is the issue's resource name.
  /// [unclassifiedConversationsCount] Number of analyzed conversations for which no issue was applicable at this point in time.
  GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse({
    required this.analyzedConversationsCount,
    required this.issueStats,
    required this.unclassifiedConversationsCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analyzedConversationsCount'] = analyzedConversationsCount;
    map['issueStats'] = issueStats;
    map['unclassifiedConversationsCount'] = unclassifiedConversationsCount;
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse(
      analyzedConversationsCount: map['analyzedConversationsCount'] as String,
      issueStats: (map['issueStats'] as Map).cast<String, String>(),
      unclassifiedConversationsCount:
          map['unclassifiedConversationsCount'] as String,
    );
  }
}
