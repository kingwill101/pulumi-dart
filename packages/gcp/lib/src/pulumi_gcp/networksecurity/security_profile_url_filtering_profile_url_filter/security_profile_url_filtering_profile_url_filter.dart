// ignore_for_file: unused_element, unnecessary_cast

class SecurityProfileUrlFilteringProfileUrlFilter {
  /// The action to take when the filter is applied.
  /// Possible values are: `ALLOW`, `DENY`.
  final String filteringAction;

  /// The priority of the filter within the URL filtering profile.
  /// Must be an integer from 0 and 2147483647, inclusive. Lower integers indicate higher priorities.
  /// The priority of a filter must be unique within a URL filtering profile.
  final int priority;

  /// A list of domain matcher strings that a domain name gets compared with to determine if the filter is applicable.
  /// A domain name must match with at least one of the strings in the list for a filter to be applicable.
  final List<String>? urls;

  SecurityProfileUrlFilteringProfileUrlFilter({
    required this.filteringAction,
    required this.priority,
    this.urls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filteringAction'] = filteringAction;
    map['priority'] = priority;
    final urlsValue = urls;
    if (urlsValue != null) {
      map['urls'] = urlsValue;
    }
    return map;
  }

  factory SecurityProfileUrlFilteringProfileUrlFilter.fromMap(
      Map<String, dynamic> map) {
    return SecurityProfileUrlFilteringProfileUrlFilter(
      filteringAction: map['filteringAction'] as String,
      priority: map['priority'] as int,
      urls: map['urls'] == null ? null : (map['urls'] as List).cast<String>(),
    );
  }
}
