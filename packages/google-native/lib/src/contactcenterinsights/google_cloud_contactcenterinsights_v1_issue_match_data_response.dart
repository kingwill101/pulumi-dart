// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_issue_assignment_response.dart';

/// The data for an issue match annotation.
class GoogleCloudContactcenterinsightsV1IssueMatchDataResponse {
  /// Information about the issue's assignment.
  final GoogleCloudContactcenterinsightsV1IssueAssignmentResponse
  issueAssignment;

  /// Creates a new [GoogleCloudContactcenterinsightsV1IssueMatchDataResponse].
  /// [issueAssignment] Information about the issue's assignment.
  GoogleCloudContactcenterinsightsV1IssueMatchDataResponse({
    required this.issueAssignment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'issueAssignment': issueAssignment.toMap()};
  }

  factory GoogleCloudContactcenterinsightsV1IssueMatchDataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContactcenterinsightsV1IssueMatchDataResponse(
      issueAssignment:
          GoogleCloudContactcenterinsightsV1IssueAssignmentResponse.fromMap(
            (map['issueAssignment'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
