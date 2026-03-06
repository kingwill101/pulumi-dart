// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides options w.r.t allocation and management w.r.t certain placement policies. These utilize capabilities provided by the underlying Azure infrastructure. They are typically used for high availability scenarios. E.g., distributing CGs across fault domains.
class PlacementProfileResponse {
  /// The number of fault domains to be used to spread CGs in the NGroups resource. This can only be specified during NGroup creation and is immutable after that.
  final pulumi.Input<int>? faultDomainCount;

  /// Creates a new [PlacementProfileResponse].
  /// [faultDomainCount] The number of fault domains to be used to spread CGs in the NGroups resource. This can only be specified during NGroup creation and is immutable after that.
  const PlacementProfileResponse({
    this.faultDomainCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'faultDomainCount': ?faultDomainCount,
    };
  }

  factory PlacementProfileResponse.fromMap(Map<String, dynamic> map) {
    return PlacementProfileResponse(
      faultDomainCount: (() { final guardedValue = map['faultDomainCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

