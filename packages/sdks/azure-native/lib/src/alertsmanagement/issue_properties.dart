// ignore_for_file: unused_element, unnecessary_cast


/// The issue properties
class IssueProperties {
  /// The issue impact time (in UTC)
  final String impactTime;
  /// The issue severity
  final String severity;
  /// The issue status
  final String status;
  /// The issue title
  final String title;

  /// Creates a new [IssueProperties].
  /// [impactTime] The issue impact time (in UTC)
  /// [severity] The issue severity
  /// [status] The issue status
  /// [title] The issue title
  IssueProperties({
    required this.impactTime,
    required this.severity,
    required this.status,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'impactTime': impactTime,
      'severity': severity,
      'status': status,
      'title': title,
    };
  }

  factory IssueProperties.fromMap(Map<String, dynamic> map) {
    return IssueProperties(
      impactTime: map['impactTime'] as String,
      severity: map['severity'] as String,
      status: map['status'] as String,
      title: map['title'] as String,
    );
  }
}

