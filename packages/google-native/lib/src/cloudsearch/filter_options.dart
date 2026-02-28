// ignore_for_file: unused_element, unnecessary_cast

import 'filter.dart';

/// Filter options to be applied on query.
class FilterOptions {
  /// Generic filter to restrict the search, such as `lang:en`, `site:xyz`.
  final Filter? filter;

  /// If object_type is set, only objects of that type are returned. This should correspond to the name of the object that was registered within the definition of schema. The maximum length is 256 characters.
  final String? objectType;

  /// Creates a new [FilterOptions].
  /// [filter] Generic filter to restrict the search, such as `lang:en`, `site:xyz`.
  /// [objectType] If object_type is set, only objects of that type are returned. This should correspond to the name of the object that was registered within the definition of schema. The maximum length is 256 characters.
  FilterOptions({
    this.filter,
    this.objectType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue.toMap();
    }
    final objectTypeValue = objectType;
    if (objectTypeValue != null) {
      map['objectType'] = objectTypeValue;
    }
    return map;
  }

  factory FilterOptions.fromMap(Map<String, dynamic> map) {
    return FilterOptions(
      filter: map['filter'] == null
          ? null
          : Filter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      objectType:
          map['objectType'] == null ? null : map['objectType'] as String,
    );
  }
}
