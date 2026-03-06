// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Mcc cache node resource issue properties.
class MccIssueResponse {
  /// Mcc cache node issue detail string.
  final pulumi.Input<String> detailString;
  /// Mcc cache node issue related help link.
  final pulumi.Input<String> helpLink;
  /// Mcc cache node issue end date.
  final pulumi.Input<String> issueEndDate;
  /// Mcc cache node issue start date.
  final pulumi.Input<String> issueStartDate;
  /// Mcc cache node issue type.
  final pulumi.Input<String> mccIssueType;
  /// Mcc cache node issues toastString.
  final pulumi.Input<String> toastString;

  /// Creates a new [MccIssueResponse].
  /// [detailString] Mcc cache node issue detail string.
  /// [helpLink] Mcc cache node issue related help link.
  /// [issueEndDate] Mcc cache node issue end date.
  /// [issueStartDate] Mcc cache node issue start date.
  /// [mccIssueType] Mcc cache node issue type.
  /// [toastString] Mcc cache node issues toastString.
  const MccIssueResponse({
    required this.detailString,
    required this.helpLink,
    required this.issueEndDate,
    required this.issueStartDate,
    required this.mccIssueType,
    required this.toastString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailString': detailString,
      'helpLink': helpLink,
      'issueEndDate': issueEndDate,
      'issueStartDate': issueStartDate,
      'mccIssueType': mccIssueType,
      'toastString': toastString,
    };
  }

  factory MccIssueResponse.fromMap(Map<String, dynamic> map) {
    return MccIssueResponse(
      detailString: pulumi.Input.fromValue(map['detailString'] as String),
      helpLink: pulumi.Input.fromValue(map['helpLink'] as String),
      issueEndDate: pulumi.Input.fromValue(map['issueEndDate'] as String),
      issueStartDate: pulumi.Input.fromValue(map['issueStartDate'] as String),
      mccIssueType: pulumi.Input.fromValue(map['mccIssueType'] as String),
      toastString: pulumi.Input.fromValue(map['toastString'] as String),
    );
  }
}

