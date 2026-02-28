// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionDefaultCacheBehaviorAllowedMethods {
  /// Controls whether CloudFront caches the response to requests using the specified HTTP methods.
  final List<String> cachedMethods;
  final List<String> items;

  /// Creates a new [MultitenantDistributionDefaultCacheBehaviorAllowedMethods].
  /// [cachedMethods] Controls whether CloudFront caches the response to requests using the specified HTTP methods.
  /// [items] Required.
  MultitenantDistributionDefaultCacheBehaviorAllowedMethods({
    required this.cachedMethods,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cachedMethods'] = cachedMethods;
    map['items'] = items;
    return map;
  }

  factory MultitenantDistributionDefaultCacheBehaviorAllowedMethods.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionDefaultCacheBehaviorAllowedMethods(
      cachedMethods: (map['cachedMethods'] as List).cast<String>(),
      items: (map['items'] as List).cast<String>(),
    );
  }
}
