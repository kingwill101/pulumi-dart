// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetworkPeeringConnections.
class GetNetworkPeeringConnectionsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetNetworkPeeringConnectionsArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetNetworkPeeringConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringConnectionsArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
