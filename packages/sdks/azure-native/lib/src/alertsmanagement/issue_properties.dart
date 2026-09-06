// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The issue properties
class IssueProperties {
  /// The issue impact time (in UTC)
  final pulumi.Input<String> impactTime;
  /// The issue severity
  final pulumi.Input<String> severity;
  /// The issue status
  final pulumi.Input<dynamic> status;
  /// The issue title
  final pulumi.Input<String> title;

  /// Creates a new [IssueProperties].
  /// [impactTime] The issue impact time (in UTC)
  /// [severity] The issue severity
  /// [status] The issue status
  /// [title] The issue title
  const IssueProperties({
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
      impactTime: pulumi.Input.fromValue(map['impactTime'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      status: pulumi.Input.fromValue(map['status']),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
