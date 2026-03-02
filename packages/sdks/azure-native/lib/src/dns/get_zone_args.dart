// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_zone_args_doc}
/// Arguments for getZone.
/// {@endtemplate}
/// {@macro pulumi_dns_get_zone_args_doc}
class GetZoneArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the DNS zone (without a terminating dot).
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetZoneArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [zoneName] The name of the DNS zone (without a terminating dot).
  GetZoneArgs({
    required this.resourceGroupName,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'zoneName': zoneName,
    };
  }

  factory GetZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      zoneName: (map['zoneName'] as String).input(),
    );
  }
}

