// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'router_nat_subnetwork_to_nat_source_ip_ranges_to_nat_item3.dart';

/// Defines the IP ranges that want to use NAT for a subnetwork.
class RouterNatSubnetworkToNat3 {
  /// URL for the subnetwork resource that will use NAT.
  final String? name;

  /// A list of the secondary ranges of the Subnetwork that are allowed to use NAT. This can be populated only if "LIST_OF_SECONDARY_IP_RANGES" is one of the values in source_ip_ranges_to_nat.
  final List<String>? secondaryIpRangeNames;

  /// Specify the options for NAT ranges in the Subnetwork. All options of a single value are valid except NAT_IP_RANGE_OPTION_UNSPECIFIED. The only valid option with multiple values is: ["PRIMARY_IP_RANGE", "LIST_OF_SECONDARY_IP_RANGES"] Default: [ALL_IP_RANGES]
  final List<RouterNatSubnetworkToNatSourceIpRangesToNatItem3>?
      sourceIpRangesToNat;

  RouterNatSubnetworkToNat3({
    this.name,
    this.secondaryIpRangeNames,
    this.sourceIpRangesToNat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final secondaryIpRangeNamesValue = secondaryIpRangeNames;
    if (secondaryIpRangeNamesValue != null) {
      map['secondaryIpRangeNames'] = secondaryIpRangeNamesValue;
    }
    final sourceIpRangesToNatValue = sourceIpRangesToNat;
    if (sourceIpRangesToNatValue != null) {
      map['sourceIpRangesToNat'] = Input.encodeList<
          RouterNatSubnetworkToNatSourceIpRangesToNatItem3,
          String>(sourceIpRangesToNatValue, (value) => value.value);
    }
    return map;
  }

  factory RouterNatSubnetworkToNat3.fromMap(Map<String, dynamic> map) {
    return RouterNatSubnetworkToNat3(
      name: map['name'] == null ? null : map['name'] as String,
      secondaryIpRangeNames: map['secondaryIpRangeNames'] == null
          ? null
          : (map['secondaryIpRangeNames'] as List).cast<String>(),
      sourceIpRangesToNat: map['sourceIpRangesToNat'] == null
          ? null
          : Input.decodeList<RouterNatSubnetworkToNatSourceIpRangesToNatItem3>(
              map['sourceIpRangesToNat'],
              (value) =>
                  RouterNatSubnetworkToNatSourceIpRangesToNatItem3.fromValue(
                      value as String)),
    );
  }
}
