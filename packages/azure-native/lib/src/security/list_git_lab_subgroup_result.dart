// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_lab_group_response.dart';

/// Result data returned by listGitLabSubgroup.
class ListGitLabSubgroupResult {
  /// Gets or sets next link to scroll over the results.
  final String? nextLink;
  /// Gets or sets list of resources.
  final List<GitLabGroupResponse>? value;

  /// Creates a new [ListGitLabSubgroupResult].
  /// [nextLink] Gets or sets next link to scroll over the results.
  /// [value] Gets or sets list of resources.
  ListGitLabSubgroupResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<GitLabGroupResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListGitLabSubgroupResult.fromMap(Map<String, dynamic> map) {
    return ListGitLabSubgroupResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<GitLabGroupResponse>(map['value'], (value) => GitLabGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

