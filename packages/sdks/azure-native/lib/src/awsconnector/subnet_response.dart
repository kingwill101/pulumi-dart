// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_zone_response.dart';

/// Definition of Subnet
class SubnetResponse {
  /// &lt;p&gt;The Availability Zone of the subnet.&lt;/p&gt;
  final pulumi.Input<AvailabilityZoneResponse>? subnetAvailabilityZone;
  /// &lt;p&gt;The subnet identifier.&lt;/p&gt;
  final pulumi.Input<String>? subnetIdentifier;
  /// &lt;p&gt;The status of the subnet.&lt;/p&gt;
  final pulumi.Input<String>? subnetStatus;

  /// Creates a new [SubnetResponse].
  /// [subnetAvailabilityZone] &lt;p&gt;The Availability Zone of the subnet.&lt;/p&gt;
  /// [subnetIdentifier] &lt;p&gt;The subnet identifier.&lt;/p&gt;
  /// [subnetStatus] &lt;p&gt;The status of the subnet.&lt;/p&gt;
  SubnetResponse({
    this.subnetAvailabilityZone,
    this.subnetIdentifier,
    this.subnetStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetAvailabilityZone': ?pulumi.Input.mapOptionalInputValue<AvailabilityZoneResponse, Map<String, dynamic>>(subnetAvailabilityZone, (value) => value.toMap()),
      'subnetIdentifier': ?subnetIdentifier,
      'subnetStatus': ?subnetStatus,
    };
  }

  factory SubnetResponse.fromMap(Map<String, dynamic> map) {
    return SubnetResponse(
      subnetAvailabilityZone: (() { final guardedValue = map['subnetAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AvailabilityZoneResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnetIdentifier: (() { final guardedValue = map['subnetIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetStatus: (() { final guardedValue = map['subnetStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

