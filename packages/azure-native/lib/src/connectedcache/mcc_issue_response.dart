// ignore_for_file: unused_element, unnecessary_cast


/// Mcc cache node resource issue properties.
class MccIssueResponse {
  /// Mcc cache node issue detail string.
  final String detailString;
  /// Mcc cache node issue related help link.
  final String helpLink;
  /// Mcc cache node issue end date.
  final String issueEndDate;
  /// Mcc cache node issue start date.
  final String issueStartDate;
  /// Mcc cache node issue type.
  final String mccIssueType;
  /// Mcc cache node issues toastString.
  final String toastString;

  /// Creates a new [MccIssueResponse].
  /// [detailString] Mcc cache node issue detail string.
  /// [helpLink] Mcc cache node issue related help link.
  /// [issueEndDate] Mcc cache node issue end date.
  /// [issueStartDate] Mcc cache node issue start date.
  /// [mccIssueType] Mcc cache node issue type.
  /// [toastString] Mcc cache node issues toastString.
  MccIssueResponse({
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
      detailString: map['detailString'] as String,
      helpLink: map['helpLink'] as String,
      issueEndDate: map['issueEndDate'] as String,
      issueStartDate: map['issueStartDate'] as String,
      mccIssueType: map['mccIssueType'] as String,
      toastString: map['toastString'] as String,
    );
  }
}

