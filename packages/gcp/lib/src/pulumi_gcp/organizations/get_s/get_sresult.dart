// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_sorganization/get_sorganization.dart';

/// Result data returned by getS.
class GetSResult {
  final String? filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of all retrieved organizations. Structure is defined below.
  final List<GetSOrganization> organizations;

  GetSResult({
    this.filter,
    required this.id,
    required this.organizations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['id'] = id;
    map['organizations'] =
        Input.encodeList<GetSOrganization, Map<String, dynamic>>(
            organizations, (value) => value.toMap());
    return map;
  }

  factory GetSResult.fromMap(Map<String, dynamic> map) {
    return GetSResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      organizations: Input.decodeList<GetSOrganization>(
          map['organizations'],
          (value) =>
              GetSOrganization.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
