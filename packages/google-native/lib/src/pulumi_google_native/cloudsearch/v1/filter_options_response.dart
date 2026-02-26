// ignore_for_file: unused_element, unnecessary_cast

import 'filter_response.dart';

/// Filter options to be applied on query.
class FilterOptionsResponse {
  /// Generic filter to restrict the search, such as `lang:en`, `site:xyz`.
  final FilterResponse filter;

  /// If object_type is set, only objects of that type are returned. This should correspond to the name of the object that was registered within the definition of schema. The maximum length is 256 characters.
  final String objectType;

  FilterOptionsResponse({
    required this.filter,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter.toMap();
    map['objectType'] = objectType;
    return map;
  }

  factory FilterOptionsResponse.fromMap(Map<String, dynamic> map) {
    return FilterOptionsResponse(
      filter: FilterResponse.fromMap(
          (map['filter'] as Map).cast<String, dynamic>()),
      objectType: map['objectType'] as String,
    );
  }
}
