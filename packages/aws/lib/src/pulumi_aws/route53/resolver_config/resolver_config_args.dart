// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ResolverConfig.
class ResolverConfigArgs {
  /// Indicates whether or not the Resolver will create autodefined rules for reverse DNS lookups. Valid values: `ENABLE`, `DISABLE`.
  final pulumi.Input<String> autodefinedReverseFlag;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the VPC that the configuration is for.
  final pulumi.Input<String> resourceId;

  ResolverConfigArgs({
    required this.autodefinedReverseFlag,
    this.region,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autodefinedReverseFlag'] = autodefinedReverseFlag;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceId'] = resourceId;
    return map;
  }

  factory ResolverConfigArgs.fromMap(Map<String, dynamic> map) {
    return ResolverConfigArgs(
      autodefinedReverseFlag:
          pulumi.Input.asInput<String>(map['autodefinedReverseFlag']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceId: pulumi.Input.asInput<String>(map['resourceId']),
    );
  }
}
