// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'investigation_metadata_response.dart';

/// The issue properties
class IssuePropertiesResponse {
  /// The issue impact time (in UTC)
  final String impactTime;
  /// The list of investigations in the issue
  final List<InvestigationMetadataResponse> investigations;
  /// The number of investigations in the issue
  final int investigationsCount;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// The issue severity
  final String severity;
  /// The issue status
  final String status;
  /// The issue title
  final String title;

  /// Creates a new [IssuePropertiesResponse].
  /// [impactTime] The issue impact time (in UTC)
  /// [investigations] The list of investigations in the issue
  /// [investigationsCount] The number of investigations in the issue
  /// [provisioningState] The provisioning state of the resource.
  /// [severity] The issue severity
  /// [status] The issue status
  /// [title] The issue title
  IssuePropertiesResponse({
    required this.impactTime,
    required this.investigations,
    required this.investigationsCount,
    required this.provisioningState,
    required this.severity,
    required this.status,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'impactTime': impactTime,
      'investigations': pulumi.Input.encodeList<InvestigationMetadataResponse, Map<String, dynamic>>(investigations, (value) => value.toMap()),
      'investigationsCount': investigationsCount,
      'provisioningState': provisioningState,
      'severity': severity,
      'status': status,
      'title': title,
    };
  }

  factory IssuePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IssuePropertiesResponse(
      impactTime: map['impactTime'] as String,
      investigations: pulumi.Input.decodeList<InvestigationMetadataResponse>(map['investigations'], (value) => InvestigationMetadataResponse.fromMap((value as Map).cast<String, dynamic>())),
      investigationsCount: map['investigationsCount'] as int,
      provisioningState: map['provisioningState'] as String,
      severity: map['severity'] as String,
      status: map['status'] as String,
      title: map['title'] as String,
    );
  }
}

