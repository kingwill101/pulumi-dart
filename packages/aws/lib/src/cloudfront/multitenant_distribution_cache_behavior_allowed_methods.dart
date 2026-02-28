// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionCacheBehaviorAllowedMethods {
  /// Controls whether CloudFront caches the response to requests using the specified HTTP methods.
  final List<String> cachedMethods;
  final List<String> items;

  /// Creates a new [MultitenantDistributionCacheBehaviorAllowedMethods].
  /// [cachedMethods] Controls whether CloudFront caches the response to requests using the specified HTTP methods.
  /// [items] Required.
  MultitenantDistributionCacheBehaviorAllowedMethods({
    required this.cachedMethods,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cachedMethods'] = cachedMethods;
    map['items'] = items;
    return map;
  }

  factory MultitenantDistributionCacheBehaviorAllowedMethods.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionCacheBehaviorAllowedMethods(
      cachedMethods: (map['cachedMethods'] as List).cast<String>(),
      items: (map['items'] as List).cast<String>(),
    );
  }
}
