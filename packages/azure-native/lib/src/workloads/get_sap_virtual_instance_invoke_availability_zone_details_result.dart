// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sapavailability_zone_pair_response.dart';

/// Result data returned by getSapVirtualInstanceInvokeAvailabilityZoneDetails.
class GetSapVirtualInstanceInvokeAvailabilityZoneDetailsResult {
  /// Gets the list of availability zone pairs.
  final List<SAPAvailabilityZonePairResponse>? availabilityZonePairs;

  /// Creates a new [GetSapVirtualInstanceInvokeAvailabilityZoneDetailsResult].
  /// [availabilityZonePairs] Gets the list of availability zone pairs.
  GetSapVirtualInstanceInvokeAvailabilityZoneDetailsResult({
    this.availabilityZonePairs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZonePairs': ?availabilityZonePairs == null ? null : pulumi.Input.encodeList<SAPAvailabilityZonePairResponse, Map<String, dynamic>>(availabilityZonePairs!, (value) => value.toMap()),
    };
  }

  factory GetSapVirtualInstanceInvokeAvailabilityZoneDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetSapVirtualInstanceInvokeAvailabilityZoneDetailsResult(
      availabilityZonePairs: map['availabilityZonePairs'] == null ? null : pulumi.Input.decodeList<SAPAvailabilityZonePairResponse>(map['availabilityZonePairs'], (value) => SAPAvailabilityZonePairResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

