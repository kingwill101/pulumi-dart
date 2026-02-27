// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSnapshot.
class GetSnapshotArgs {
  /// A filter to retrieve the compute snapshot.
  /// See [API filter parameter documentation](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots/list#body.QUERY_PARAMETERS.filter) for reference.
  /// If multiple compute snapshot match, either adjust the filter or specify `most_recent`. One of `name` or `filter` must be provided.
  /// If you want to use a regular expression, use the `eq` (equal) or `ne` (not equal) operator against a single un-parenthesized expression with or without quotes or against multiple parenthesized expressions. Example `sourceDisk eq '.*(.*/data-disk$).*'`. More details for golang Snapshots list call filters [here](https://pkg.go.dev/google.golang.org/api/compute/v1#SnapshotsListCall.Filter).
  final pulumi.Input<String>? filter;

  /// If `filter` is provided, ensures the most recent snapshot is returned when multiple compute snapshot match.
  ///
  /// - - -
  final pulumi.Input<bool>? mostRecent;

  /// The name of the compute snapshot. One of `name` or `filter` must be provided.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetSnapshotArgs({
    this.filter,
    this.mostRecent,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
      mostRecent: pulumi.Input.asOptionalInput<bool>(map['mostRecent']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
