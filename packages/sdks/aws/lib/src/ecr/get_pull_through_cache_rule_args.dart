// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecr_get_pull_through_cache_rule_get_pull_through_cache_rule_args_doc}
/// Arguments for getPullThroughCacheRule.
/// {@endtemplate}
/// {@macro pulumi_ecr_get_pull_through_cache_rule_get_pull_through_cache_rule_args_doc}
class GetPullThroughCacheRuleArgs {
  /// The repository name prefix to use when caching images from the source registry.
  final pulumi.Input<String> ecrRepositoryPrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetPullThroughCacheRuleArgs].
  /// [ecrRepositoryPrefix] The repository name prefix to use when caching images from the source registry.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetPullThroughCacheRuleArgs({
    required this.ecrRepositoryPrefix,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecrRepositoryPrefix': ecrRepositoryPrefix,
      'region': ?region,
    };
  }

  factory GetPullThroughCacheRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetPullThroughCacheRuleArgs(
      ecrRepositoryPrefix: pulumi.Input.fromValue(map['ecrRepositoryPrefix'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

