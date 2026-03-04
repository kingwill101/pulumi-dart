// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_networks_vpc.dart';

/// Result data returned by getNetworks.
class GetNetworksResult {
  /// CIDR block of the VPC.
  final String? cidrBlock;

  /// The ID of the DHCP options set.
  final String? dhcpOptionsSetId;
  final bool? dryRun;
  final bool? enableDetails;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of VPC IDs.
  final List<String> ids;

  /// Whether the VPC is the default VPC in the region.
  final bool? isDefault;
  final String? nameRegex;

  /// A list of VPC names.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? resourceGroupId;

  /// Status of the VPC.
  final String? status;

  /// A map of tags assigned to the VPC.
  final Map<String, String>? tags;
  final int totalCount;

  /// Name of the VPC.
  final String? vpcName;
  final int? vpcOwnerId;

  /// A list of VPCs. Each element contains the following attributes:
  final List<GetNetworksVpc> vpcs;
  final String? vswitchId;

  /// Creates a new [GetNetworksResult].
  /// [cidrBlock] CIDR block of the VPC.
  /// [dhcpOptionsSetId] The ID of the DHCP options set.
  /// [dryRun] Optional.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of VPC IDs.
  /// [isDefault] Whether the VPC is the default VPC in the region.
  /// [nameRegex] Optional.
  /// [names] A list of VPC names.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] Optional.
  /// [status] Status of the VPC.
  /// [tags] A map of tags assigned to the VPC.
  /// [totalCount] Required.
  /// [vpcName] Name of the VPC.
  /// [vpcOwnerId] Optional.
  /// [vpcs] A list of VPCs. Each element contains the following attributes:
  /// [vswitchId] Optional.
  GetNetworksResult({
    this.cidrBlock,
    this.dhcpOptionsSetId,
    this.dryRun,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.isDefault,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.resourceGroupId,
    this.status,
    this.tags,
    required this.totalCount,
    this.vpcName,
    this.vpcOwnerId,
    required this.vpcs,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'dhcpOptionsSetId': ?dhcpOptionsSetId,
      'dryRun': ?dryRun,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'isDefault': ?isDefault,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'totalCount': totalCount,
      'vpcName': ?vpcName,
      'vpcOwnerId': ?vpcOwnerId,
      'vpcs': pulumi.Input.encodeList<GetNetworksVpc, Map<String, dynamic>>(
        vpcs,
        (value) => value.toMap(),
      ),
      'vswitchId': ?vswitchId,
    };
  }

  factory GetNetworksResult.fromMap(Map<String, dynamic> map) {
    return GetNetworksResult(
      cidrBlock: (() {
        final guardedValue = map['cidrBlock'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      dhcpOptionsSetId: (() {
        final guardedValue = map['dhcpOptionsSetId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      isDefault: (() {
        final guardedValue = map['isDefault'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      totalCount: map['totalCount'] as int,
      vpcName: (() {
        final guardedValue = map['vpcName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      vpcOwnerId: (() {
        final guardedValue = map['vpcOwnerId'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      vpcs: pulumi.Input.decodeList<GetNetworksVpc>(
        map['vpcs']!,
        (value) =>
            GetNetworksVpc.fromMap((value as Map).cast<String, dynamic>()),
      ),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
