// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionDefaultCacheBehaviorAllowedMethods {
  /// Controls whether CloudFront caches the response to requests using the specified HTTP methods.
  final pulumi.Input<List<String>> cachedMethods;
  final pulumi.Input<List<String>> items;

  /// Creates a new [MultitenantDistributionDefaultCacheBehaviorAllowedMethods].
  /// [cachedMethods] Controls whether CloudFront caches the response to requests using the specified HTTP methods.
  /// [items] Required.
  MultitenantDistributionDefaultCacheBehaviorAllowedMethods({
    required this.cachedMethods,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachedMethods': cachedMethods,
      'items': items,
    };
  }

  factory MultitenantDistributionDefaultCacheBehaviorAllowedMethods.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionDefaultCacheBehaviorAllowedMethods(
      cachedMethods: pulumi.Input.fromValue((map['cachedMethods'] as List).cast<String>()),
      items: pulumi.Input.fromValue((map['items'] as List).cast<String>()),
    );
  }
}

