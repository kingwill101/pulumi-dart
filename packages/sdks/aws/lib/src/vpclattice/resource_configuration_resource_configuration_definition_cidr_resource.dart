// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceConfigurationResourceConfigurationDefinitionCidrResource {
  /// Set of 1 to 10 IPv4 and/or IPv6 CIDR ranges (prefix length required), for example `10.0.0.0/16`. `0.0.0.0/0` and `::/0` are only allowed as the sole range. Reserved ranges such as `169.254.0.0/16`, `100.64.0.0/10`, `224.0.0.0/4`, `fe80::/10` and `ff00::/8` are rejected by AWS.
  final pulumi.Input<List<String>> cidrRanges;

  /// Creates a new [ResourceConfigurationResourceConfigurationDefinitionCidrResource].
  /// [cidrRanges] Set of 1 to 10 IPv4 and/or IPv6 CIDR ranges (prefix length required), for example `10.0.0.0/16`. `0.0.0.0/0` and `::/0` are only allowed as the sole range. Reserved ranges such as `169.254.0.0/16`, `100.64.0.0/10`, `224.0.0.0/4`, `fe80::/10` and `ff00::/8` are rejected by AWS.
  const ResourceConfigurationResourceConfigurationDefinitionCidrResource({
    required this.cidrRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrRanges': cidrRanges,
    };
  }

  factory ResourceConfigurationResourceConfigurationDefinitionCidrResource.fromMap(Map<String, dynamic> map) {
    return ResourceConfigurationResourceConfigurationDefinitionCidrResource(
      cidrRanges: pulumi.Input.fromValue((map['cidrRanges'] as List).cast<String>()),
    );
  }
}
