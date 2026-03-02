// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alertsmanagement_list_issue_resources_args_doc}
/// Arguments for listIssueResources.
/// {@endtemplate}
/// {@macro pulumi_alertsmanagement_list_issue_resources_args_doc}
class ListIssueResourcesArgs {
  /// The filter to apply on the operation. For example, to filter by relevance, use "$filter=relevance eq 'Relevant'"
  final pulumi.Input<String>? filter;
  /// The name of the IssueResource
  final pulumi.Input<String> issueName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [ListIssueResourcesArgs].
  /// [filter] The filter to apply on the operation. For example, to filter by relevance, use "$filter=relevance eq 'Relevant'"
  /// [issueName] The name of the IssueResource
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  ListIssueResourcesArgs({
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

  factory ListIssueResourcesArgs.fromMap(Map<String, dynamic> map) {
    return ListIssueResourcesArgs(
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      issueName: (map['issueName'] as String).input(),
      resourceUri: (map['resourceUri'] as String).input(),
    );
  }
}

