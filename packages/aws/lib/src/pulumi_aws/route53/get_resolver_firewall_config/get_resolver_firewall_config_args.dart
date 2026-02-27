// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getResolverFirewallConfig.
class GetResolverFirewallConfigArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the VPC from Amazon VPC that the configuration is for.
  final pulumi.Input<String> resourceId;

  GetResolverFirewallConfigArgs({
    this.region,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceId'] = resourceId;
    return map;
  }

  factory GetResolverFirewallConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallConfigArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceId: pulumi.Input.asInput<String>(map['resourceId']),
    );
  }
}
