// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_groups_group.dart';

/// Result data returned by getSecurityGroups.
class GetSecurityGroupsResult {
  final bool? enableDetails;
  /// A list of Security Groups. Each element contains the following attributes:
  final List<GetSecurityGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Security Group IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of Security Group names.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The Id of resource group which the security_group belongs.
  final String? resourceGroupId;
  /// A map of tags assigned to the ECS instance.
  final Map<String, String>? tags;
  final int totalCount;
  /// The ID of the VPC that owns the security group.
  final String? vpcId;

  /// Creates a new [GetSecurityGroupsResult].
  /// [enableDetails] Optional.
  /// [groups] A list of Security Groups. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Security Group IDs.
  /// [nameRegex] Optional.
  /// [names] A list of Security Group names.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] The Id of resource group which the security_group belongs.
  /// [tags] A map of tags assigned to the ECS instance.
  /// [totalCount] Required.
  /// [vpcId] The ID of the VPC that owns the security group.
  GetSecurityGroupsResult({
    this.enableDetails,
    required this.groups,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.resourceGroupId,
    this.tags,
    required this.totalCount,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'groups': pulumi.Input.encodeList<GetSecurityGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'totalCount': totalCount,
      'vpcId': ?vpcId,
    };
  }

  factory GetSecurityGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupsResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      groups: pulumi.Input.decodeList<GetSecurityGroupsGroup>(map['groups'], (value) => GetSecurityGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      totalCount: map['totalCount'] as int,
      vpcId: map['vpcId'] == null ? null : map['vpcId']! as String,
    );
  }
}

