// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnets_subnet.dart';

/// Result data returned by getSubnets.
class GetSubnetsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Subnets.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// Resource Group ID.
  final String? resourceGroupId;
  /// The status of the resource.
  final String? status;
  /// The Eflo subnet ID.
  final String? subnetId;
  /// The Subnet name.
  final String? subnetName;
  /// A list of Subnet Entries. Each element contains the following attributes:
  final List<GetSubnetsSubnet> subnets;
  /// Eflo subnet usage type.
  final String? type;
  /// Eflo VPD ID.
  final String? vpdId;
  /// The zone ID of the resource.
  final String? zoneId;

  /// Creates a new [GetSubnetsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of name of Subnets.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] Resource Group ID.
  /// [status] The status of the resource.
  /// [subnetId] The Eflo subnet ID.
  /// [subnetName] The Subnet name.
  /// [subnets] A list of Subnet Entries. Each element contains the following attributes:
  /// [type] Eflo subnet usage type.
  /// [vpdId] Eflo VPD ID.
  /// [zoneId] The zone ID of the resource.
  GetSubnetsResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.resourceGroupId,
    this.status,
    this.subnetId,
    this.subnetName,
    required this.subnets,
    this.type,
    this.vpdId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'subnetId': ?subnetId,
      'subnetName': ?subnetName,
      'subnets': pulumi.Input.encodeList<GetSubnetsSubnet, Map<String, dynamic>>(subnets, (value) => value.toMap()),
      'type': ?type,
      'vpdId': ?vpdId,
      'zoneId': ?zoneId,
    };
  }

  factory GetSubnetsResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId']! as String,
      subnetName: map['subnetName'] == null ? null : map['subnetName']! as String,
      subnets: pulumi.Input.decodeList<GetSubnetsSubnet>(map['subnets'], (value) => GetSubnetsSubnet.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type']! as String,
      vpdId: map['vpdId'] == null ? null : map['vpdId']! as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId']! as String,
    );
  }
}

