// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_zone.dart';

/// Definition of Subnet
class Subnet {
  /// &lt;p&gt;The Availability Zone of the subnet.&lt;/p&gt;
  final pulumi.Input<AvailabilityZone?>? subnetAvailabilityZone;
  /// &lt;p&gt;The subnet identifier.&lt;/p&gt;
  final pulumi.Input<String?>? subnetIdentifier;
  /// &lt;p&gt;The status of the subnet.&lt;/p&gt;
  final pulumi.Input<String?>? subnetStatus;

  /// Creates a new [Subnet].
  /// [subnetAvailabilityZone] &lt;p&gt;The Availability Zone of the subnet.&lt;/p&gt;
  /// [subnetIdentifier] &lt;p&gt;The subnet identifier.&lt;/p&gt;
  /// [subnetStatus] &lt;p&gt;The status of the subnet.&lt;/p&gt;
  const Subnet({
    this.subnetAvailabilityZone,
    this.subnetIdentifier,
    this.subnetStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetAvailabilityZone': ?pulumi.Input.mapOptionalInputValue<AvailabilityZone, Map<String, dynamic>>(subnetAvailabilityZone, (value) => value.toMap()),
      'subnetIdentifier': ?subnetIdentifier,
      'subnetStatus': ?subnetStatus,
    };
  }

  factory Subnet.fromMap(Map<String, dynamic> map) {
    return Subnet(
      subnetAvailabilityZone: (() { final guardedValue = map['subnetAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AvailabilityZone.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnetIdentifier: (() { final guardedValue = map['subnetIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetStatus: (() { final guardedValue = map['subnetStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
