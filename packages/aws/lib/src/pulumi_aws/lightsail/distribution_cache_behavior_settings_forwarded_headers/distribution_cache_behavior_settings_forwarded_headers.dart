// ignore_for_file: unused_element, unnecessary_cast

class DistributionCacheBehaviorSettingsForwardedHeaders {
  /// Specific headers to forward to your distribution's origin.
  final List<String>? headersAllowLists;

  /// Headers that you want your distribution to forward to your origin and base caching on. Valid values: `default`, `allow-list`, `all`.
  final String? option;

  DistributionCacheBehaviorSettingsForwardedHeaders({
    this.headersAllowLists,
    this.option,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headersAllowListsValue = headersAllowLists;
    if (headersAllowListsValue != null) {
      map['headersAllowLists'] = headersAllowListsValue;
    }
    final optionValue = option;
    if (optionValue != null) {
      map['option'] = optionValue;
    }
    return map;
  }

  factory DistributionCacheBehaviorSettingsForwardedHeaders.fromMap(
      Map<String, dynamic> map) {
    return DistributionCacheBehaviorSettingsForwardedHeaders(
      headersAllowLists: map['headersAllowLists'] == null
          ? null
          : (map['headersAllowLists'] as List).cast<String>(),
      option: map['option'] == null ? null : map['option'] as String,
    );
  }
}
