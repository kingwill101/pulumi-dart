// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties that define a Azure Arc PrivateLinkScope resource.
class HybridComputePrivateLinkScopeProperties {
  /// Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints.
  final pulumi.Input<String>? publicNetworkAccess;

  /// Creates a new [HybridComputePrivateLinkScopeProperties].
  /// [publicNetworkAccess] Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints.
  HybridComputePrivateLinkScopeProperties({this.publicNetworkAccess});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'publicNetworkAccess': ?publicNetworkAccess};
  }

  factory HybridComputePrivateLinkScopeProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return HybridComputePrivateLinkScopeProperties(
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
