// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alertsmanagement_list_issue_alerts_args_doc}
/// Arguments for listIssueAlerts.
/// {@endtemplate}
/// {@macro pulumi_alertsmanagement_list_issue_alerts_args_doc}
class ListIssueAlertsArgs {
  /// The filter to apply on the operation. For example, to filter by relevance, use "$filter=relevance eq 'Relevant'"
  final pulumi.Input<String>? filter;
  /// The name of the IssueResource
  final pulumi.Input<String> issueName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [ListIssueAlertsArgs].
  /// [filter] The filter to apply on the operation. For example, to filter by relevance, use "$filter=relevance eq 'Relevant'"
  /// [issueName] The name of the IssueResource
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  const ListIssueAlertsArgs({
    this.filter,
    required this.issueName,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'issueName': issueName,
      'resourceUri': resourceUri,
    };
  }

  factory ListIssueAlertsArgs.fromMap(Map<String, dynamic> map) {
    return ListIssueAlertsArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issueName: pulumi.Input.fromValue(map['issueName'] as String),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}

