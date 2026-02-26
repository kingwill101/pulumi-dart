// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getS.
class GetSArgs {
  /// An optional query string used to filter the Organizations to return in the response. Filter rules are case-insensitive. Further information can be found in the [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/organizations/search#request-body).
  final Input<String>? filter;

  GetSArgs({
    this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    return map;
  }

  factory GetSArgs.fromMap(Map<String, dynamic> map) {
    return GetSArgs(
      filter: Input.asOptionalInput<String>(map['filter']),
    );
  }
}
