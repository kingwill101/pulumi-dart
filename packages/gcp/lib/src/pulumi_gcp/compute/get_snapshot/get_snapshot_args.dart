// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSnapshot.
class GetSnapshotArgs {
  /// A filter to retrieve the compute snapshot.
  /// See [API filter parameter documentation](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots/list#body.QUERY_PARAMETERS.filter) for reference.
  /// If multiple compute snapshot match, either adjust the filter or specify <span pulumi-lang-nodejs="`mostRecent`" pulumi-lang-dotnet="`MostRecent`" pulumi-lang-go="`mostRecent`" pulumi-lang-python="`most_recent`" pulumi-lang-yaml="`mostRecent`" pulumi-lang-java="`mostRecent`">`most_recent`</span>. One of <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> must be provided.
  /// If you want to use a regular expression, use the <span pulumi-lang-nodejs="`eq`" pulumi-lang-dotnet="`Eq`" pulumi-lang-go="`eq`" pulumi-lang-python="`eq`" pulumi-lang-yaml="`eq`" pulumi-lang-java="`eq`">`eq`</span> (equal) or <span pulumi-lang-nodejs="`ne`" pulumi-lang-dotnet="`Ne`" pulumi-lang-go="`ne`" pulumi-lang-python="`ne`" pulumi-lang-yaml="`ne`" pulumi-lang-java="`ne`">`ne`</span> (not equal) operator against a single un-parenthesized expression with or without quotes or against multiple parenthesized expressions. Example `sourceDisk eq '.*(.*/data-disk$).*'`. More details for golang Snapshots list call filters [here](https://pkg.go.dev/google.golang.org/api/compute/v1#SnapshotsListCall.Filter).
  final Input<String>? filter;

  /// If <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> is provided, ensures the most recent snapshot is returned when multiple compute snapshot match.
  ///
  /// - - -
  final Input<bool>? mostRecent;

  /// The name of the compute snapshot. One of <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> must be provided.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
      filter: Input.asOptionalInput<String>(map['filter']),
      mostRecent: Input.asOptionalInput<bool>(map['mostRecent']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
