// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_contactcenterinsights_v1_issue_assignment_response.dart';

/// Issue Modeling result on a conversation.
class GoogleCloudContactcenterinsightsV1IssueModelResultResponse {
  /// Issue model that generates the result. Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  final String issueModel;

  /// All the matched issues.
  final List<GoogleCloudContactcenterinsightsV1IssueAssignmentResponse> issues;

  GoogleCloudContactcenterinsightsV1IssueModelResultResponse({
    required this.issueModel,
    required this.issues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['issueModel'] = issueModel;
    map['issues'] = Input.encodeList<
        GoogleCloudContactcenterinsightsV1IssueAssignmentResponse,
        Map<String, dynamic>>(issues, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1IssueModelResultResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1IssueModelResultResponse(
      issueModel: map['issueModel'] as String,
      issues: Input.decodeList<
              GoogleCloudContactcenterinsightsV1IssueAssignmentResponse>(
          map['issues'],
          (value) =>
              GoogleCloudContactcenterinsightsV1IssueAssignmentResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
