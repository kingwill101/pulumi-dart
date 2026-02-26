// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPullThroughCacheRule.
class GetPullThroughCacheRuleArgs {
  /// The repository name prefix to use when caching images from the source registry.
  final Input<String> ecrRepositoryPrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetPullThroughCacheRuleArgs({
    required this.ecrRepositoryPrefix,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ecrRepositoryPrefix'] = ecrRepositoryPrefix;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetPullThroughCacheRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetPullThroughCacheRuleArgs(
      ecrRepositoryPrefix: Input.asInput<String>(map['ecrRepositoryPrefix']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
