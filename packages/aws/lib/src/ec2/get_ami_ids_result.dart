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
    final map = <String, dynamic>{};
    final executableUsersValue = executableUsers;
    if (executableUsersValue != null) {
      map['executableUsers'] = executableUsersValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetAmiIdsFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    final includeDeprecatedValue = includeDeprecated;
    if (includeDeprecatedValue != null) {
      map['includeDeprecated'] = includeDeprecatedValue;
    }
    final nameRegexValue = nameRegex;
    if (nameRegexValue != null) {
      map['nameRegex'] = nameRegexValue;
    }
    map['owners'] = owners;
    map['region'] = region;
    final sortAscendingValue = sortAscending;
    if (sortAscendingValue != null) {
      map['sortAscending'] = sortAscendingValue;
    }
    return map;
  }

  factory GetAmiIdsResult.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsResult(
      executableUsers: map['executableUsers'] == null
          ? null
          : (map['executableUsers'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetAmiIdsFilter>(
              map['filters'],
              (value) => GetAmiIdsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeDeprecated: map['includeDeprecated'] == null
          ? null
          : map['includeDeprecated'] as bool,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      owners: (map['owners'] as List).cast<String>(),
      region: map['region'] as String,
      sortAscending:
          map['sortAscending'] == null ? null : map['sortAscending'] as bool,
    );
  }
}
