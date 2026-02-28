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
    return <String, dynamic>{
      'filter': ?filter == null ? null : filter!.toMap(),
      'objectType': ?objectType,
    };
  }

  factory FilterOptions.fromMap(Map<String, dynamic> map) {
    return FilterOptions(
      filter: map['filter'] == null ? null : Filter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      objectType: map['objectType'] == null ? null : map['objectType'] as String,
    );
  }
}

