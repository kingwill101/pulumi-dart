// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_resolver_config_resolver_config_args_doc}
/// The set of arguments for ResolverConfig.
/// {@endtemplate}
/// {@macro pulumi_route53_resolver_config_resolver_config_args_doc}
class ResolverConfigArgs {
  /// Indicates whether or not the Resolver will create autodefined rules for reverse DNS lookups. Valid values: `ENABLE`, `DISABLE`.
  final pulumi.Input<String> autodefinedReverseFlag;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC that the configuration is for.
  final pulumi.Input<String> resourceId;

  /// Creates a new [ResolverConfigArgs].
  /// [autodefinedReverseFlag] Indicates whether or not the Resolver will create autodefined rules for reverse DNS lookups. Valid values: `ENABLE`, `DISABLE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] The ID of the VPC that the configuration is for.
  const ResolverConfigArgs({
    required this.autodefinedReverseFlag,
    this.region,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autodefinedReverseFlag': autodefinedReverseFlag,
      'region': ?region,
      'resourceId': resourceId,
    };
  }

  factory ResolverConfigArgs.fromMap(Map<String, dynamic> map) {
    return ResolverConfigArgs(
      autodefinedReverseFlag: pulumi.Input.fromValue(map['autodefinedReverseFlag'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}
