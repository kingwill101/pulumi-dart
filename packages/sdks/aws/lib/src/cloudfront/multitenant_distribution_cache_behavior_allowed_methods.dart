// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionCacheBehaviorAllowedMethods {
  /// Controls whether CloudFront caches the response to requests using the specified HTTP methods.
  final pulumi.Input<List<String>> cachedMethods;
  final pulumi.Input<List<String>> items;

  /// Creates a new [MultitenantDistributionCacheBehaviorAllowedMethods].
  /// [cachedMethods] Controls whether CloudFront caches the response to requests using the specified HTTP methods.
  /// [items] Required.
  MultitenantDistributionCacheBehaviorAllowedMethods({
    required this.cachedMethods,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachedMethods': cachedMethods,
      'items': items,
    };
  }

  factory MultitenantDistributionCacheBehaviorAllowedMethods.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionCacheBehaviorAllowedMethods(
      cachedMethods: ((map['cachedMethods'] as List).cast<String>()).input(),
      items: ((map['items'] as List).cast<String>()).input(),
    );
  }
}

