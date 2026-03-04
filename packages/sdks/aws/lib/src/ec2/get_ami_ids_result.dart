// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ami_ids_filter.dart';

/// Result data returned by getAmiIds.
class GetAmiIdsResult {
  final List<String>? executableUsers;
  final List<GetAmiIdsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// is set to the list of AMI IDs, sorted by creation time according to `sort_ascending`.
  final List<String> ids;
  final bool? includeDeprecated;
  final String? nameRegex;
  final List<String> owners;
  final String region;
  final bool? sortAscending;

  /// Creates a new [GetAmiIdsResult].
  /// [executableUsers] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] is set to the list of AMI IDs, sorted by creation time according to `sort_ascending`.
  /// [includeDeprecated] Optional.
  /// [nameRegex] Optional.
  /// [owners] Required.
  /// [region] Required.
  /// [sortAscending] Optional.
  GetAmiIdsResult({
    this.executableUsers,
    this.filters,
    required this.id,
    required this.ids,
    this.includeDeprecated,
    this.nameRegex,
    required this.owners,
    required this.region,
    this.sortAscending,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executableUsers': ?executableUsers,
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<GetAmiIdsFilter, Map<String, dynamic>>(
          guardedValue,
          (value) => value.toMap(),
        );
      })(),
      'id': id,
      'ids': ids,
      'includeDeprecated': ?includeDeprecated,
      'nameRegex': ?nameRegex,
      'owners': owners,
      'region': region,
      'sortAscending': ?sortAscending,
    };
  }

  factory GetAmiIdsResult.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsResult(
      executableUsers: (() {
        final guardedValue = map['executableUsers'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetAmiIdsFilter>(
          guardedValue,
          (value) =>
              GetAmiIdsFilter.fromMap((value as Map).cast<String, dynamic>()),
        );
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeDeprecated: (() {
        final guardedValue = map['includeDeprecated'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      owners: (map['owners'] as List).cast<String>(),
      region: map['region'] as String,
      sortAscending: (() {
        final guardedValue = map['sortAscending'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
    );
  }
}
