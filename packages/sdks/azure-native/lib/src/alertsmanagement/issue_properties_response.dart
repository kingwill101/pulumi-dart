// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'investigation_metadata_response.dart';

/// The issue properties
class IssuePropertiesResponse {
  /// The issue impact time (in UTC)
  final pulumi.Input<String> impactTime;
  /// The list of investigations in the issue
  final pulumi.Input<List<InvestigationMetadataResponse>> investigations;
  /// The number of investigations in the issue
  final pulumi.Input<int> investigationsCount;
  /// The provisioning state of the resource.
  final pulumi.Input<String> provisioningState;
  /// The issue severity
  final pulumi.Input<String> severity;
  /// The issue status
  final pulumi.Input<String> status;
  /// The issue title
  final pulumi.Input<String> title;

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
      'investigations': pulumi.Input.mapInputValue<List<InvestigationMetadataResponse>, List<Map<String, dynamic>>>(investigations, (value) => pulumi.Input.encodeList<InvestigationMetadataResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'investigationsCount': investigationsCount,
      'provisioningState': provisioningState,
      'severity': severity,
      'status': status,
      'title': title,
    };
  }

  factory IssuePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IssuePropertiesResponse(
      impactTime: pulumi.Input.fromValue(map['impactTime'] as String),
      investigations: pulumi.Input.fromValue(pulumi.Input.decodeList<InvestigationMetadataResponse>(map['investigations']!, (value) => InvestigationMetadataResponse.fromMap((value as Map).cast<String, dynamic>()))),
      investigationsCount: pulumi.Input.fromValue(map['investigationsCount'] as int),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

