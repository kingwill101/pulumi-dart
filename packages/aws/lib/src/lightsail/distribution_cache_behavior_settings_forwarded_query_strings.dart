// ignore_for_file: unused_element, unnecessary_cast

class DistributionCacheBehaviorSettingsForwardedQueryStrings {
  /// Whether the distribution forwards and caches based on query strings.
  final bool? option;

  /// Specific query strings that the distribution forwards to the origin.
  final List<String>? queryStringsAllowedLists;

  /// Creates a new [DistributionCacheBehaviorSettingsForwardedQueryStrings].
  /// [option] Whether the distribution forwards and caches based on query strings.
  /// [queryStringsAllowedLists] Specific query strings that the distribution forwards to the origin.
  DistributionCacheBehaviorSettingsForwardedQueryStrings({
    this.option,
    this.queryStringsAllowedLists,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionValue = option;
    if (optionValue != null) {
      map['option'] = optionValue;
    }
    final queryStringsAllowedListsValue = queryStringsAllowedLists;
    if (queryStringsAllowedListsValue != null) {
      map['queryStringsAllowedLists'] = queryStringsAllowedListsValue;
    }
    return map;
  }

  factory DistributionCacheBehaviorSettingsForwardedQueryStrings.fromMap(
      Map<String, dynamic> map) {
    return DistributionCacheBehaviorSettingsForwardedQueryStrings(
      option: map['option'] == null ? null : map['option'] as bool,
      queryStringsAllowedLists: map['queryStringsAllowedLists'] == null
          ? null
          : (map['queryStringsAllowedLists'] as List).cast<String>(),
    );
  }
}
