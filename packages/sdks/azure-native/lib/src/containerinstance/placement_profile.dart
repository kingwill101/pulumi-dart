// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Provides options w.r.t allocation and management w.r.t certain placement policies. These utilize capabilities provided by the underlying Azure infrastructure. They are typically used for high availability scenarios. E.g., distributing CGs across fault domains.
class PlacementProfile {
  /// The number of fault domains to be used to spread CGs in the NGroups resource. This can only be specified during NGroup creation and is immutable after that.
  final pulumi.Input<int>? faultDomainCount;

  /// Creates a new [PlacementProfile].
  /// [faultDomainCount] The number of fault domains to be used to spread CGs in the NGroups resource. This can only be specified during NGroup creation and is immutable after that.
  PlacementProfile({
    this.faultDomainCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'faultDomainCount': ?faultDomainCount,
    };
  }

  factory PlacementProfile.fromMap(Map<String, dynamic> map) {
    return PlacementProfile(
      faultDomainCount: map['faultDomainCount'] == null ? null : (map['faultDomainCount']! as int).input(),
    );
  }
}

