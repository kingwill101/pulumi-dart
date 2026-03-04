// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_ipam_ipam_ipam_ipam_args_doc}
/// The set of arguments for IpamIpam.
/// {@endtemplate}
/// {@macro pulumi_vpc_ipam_ipam_ipam_ipam_args_doc}
class IpamIpamArgs {
  /// The description of IPAM.
  /// It must be 2 to 256 characters in length and must start with an uppercase letter or a Chinese character, but cannot start with 'http: // 'or 'https. If the description is not filled in, it is blank. The default value is blank.
  final pulumi.Input<String>? ipamDescription;

  /// The name of the resource.
  final pulumi.Input<String>? ipamName;

  /// List of IPAM effective regions.
  final pulumi.Input<List<String>> operatingRegionLists;

  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;

  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpamIpamArgs].
  /// [ipamDescription] The description of IPAM.
  /// [ipamName] The name of the resource.
  /// [operatingRegionLists] List of IPAM effective regions.
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tag of the resource.
  IpamIpamArgs({
    this.ipamDescription,
    this.ipamName,
    required this.operatingRegionLists,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipamDescription': ?ipamDescription,
      'ipamName': ?ipamName,
      'operatingRegionLists': operatingRegionLists,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory IpamIpamArgs.fromMap(Map<String, dynamic> map) {
    return IpamIpamArgs(
      ipamDescription: (() {
        final guardedValue = map['ipamDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipamName: (() {
        final guardedValue = map['ipamName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      operatingRegionLists: pulumi.Input.fromValue(
        (map['operatingRegionLists'] as List).cast<String>(),
      ),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
