// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_issue_assignment_response.dart';

/// The data for an issue match annotation.
class GoogleCloudContactcenterinsightsV1IssueMatchDataResponse {
  /// Information about the issue's assignment.
  final GoogleCloudContactcenterinsightsV1IssueAssignmentResponse
      issueAssignment;

  GoogleCloudContactcenterinsightsV1IssueMatchDataResponse({
    required this.issueAssignment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['issueAssignment'] = issueAssignment.toMap();
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1IssueMatchDataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1IssueMatchDataResponse(
      issueAssignment:
          GoogleCloudContactcenterinsightsV1IssueAssignmentResponse.fromMap(
              (map['issueAssignment'] as Map).cast<String, dynamic>()),
    );
  }
}
