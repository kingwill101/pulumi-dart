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
      'vpcs': pulumi.Input.encodeList<GetNetworksVpc, Map<String, dynamic>>(vpcs, (value) => value.toMap()),
      'vswitchId': ?vswitchId,
    };
  }

  factory GetNetworksResult.fromMap(Map<String, dynamic> map) {
    return GetNetworksResult(
      cidrBlock: map['cidrBlock'] == null ? null : map['cidrBlock']! as String,
      dhcpOptionsSetId: map['dhcpOptionsSetId'] == null ? null : map['dhcpOptionsSetId']! as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun']! as bool,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      isDefault: map['isDefault'] == null ? null : map['isDefault']! as bool,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      totalCount: map['totalCount'] as int,
      vpcName: map['vpcName'] == null ? null : map['vpcName']! as String,
      vpcOwnerId: map['vpcOwnerId'] == null ? null : map['vpcOwnerId']! as int,
      vpcs: pulumi.Input.decodeList<GetNetworksVpc>(map['vpcs'], (value) => GetNetworksVpc.fromMap((value as Map).cast<String, dynamic>())),
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId']! as String,
    );
  }
}

