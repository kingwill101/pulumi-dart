// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticache_get_serverless_cache_get_serverless_cache_args_doc}
/// Arguments for getServerlessCache.
/// {@endtemplate}
/// {@macro pulumi_elasticache_get_serverless_cache_get_serverless_cache_args_doc}
class GetServerlessCacheArgs {
  /// Identifier for the serverless cache.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetServerlessCacheArgs].
  /// [name] Identifier for the serverless cache.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetServerlessCacheArgs({
    required String name,
    String? region,
  })  : name = pulumi.Input.asInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetServerlessCacheArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessCacheArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
