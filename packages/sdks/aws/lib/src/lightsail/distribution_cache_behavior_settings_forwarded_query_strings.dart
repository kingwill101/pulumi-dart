// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionCacheBehaviorSettingsForwardedQueryStrings {
  /// Whether the distribution forwards and caches based on query strings.
  final pulumi.Input<bool>? option;
  /// Specific query strings that the distribution forwards to the origin.
  final pulumi.Input<List<String>>? queryStringsAllowedLists;

  /// Creates a new [DistributionCacheBehaviorSettingsForwardedQueryStrings].
  /// [option] Whether the distribution forwards and caches based on query strings.
  /// [queryStringsAllowedLists] Specific query strings that the distribution forwards to the origin.
  DistributionCacheBehaviorSettingsForwardedQueryStrings({
    this.option,
    this.queryStringsAllowedLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'option': ?option,
      'queryStringsAllowedLists': ?queryStringsAllowedLists,
    };
  }

  factory DistributionCacheBehaviorSettingsForwardedQueryStrings.fromMap(Map<String, dynamic> map) {
    return DistributionCacheBehaviorSettingsForwardedQueryStrings(
      option: map['option'] == null ? null : (map['option'] as bool).input(),
      queryStringsAllowedLists: map['queryStringsAllowedLists'] == null ? null : ((map['queryStringsAllowedLists'] as List).cast<String>()).input(),
    );
  }
}

