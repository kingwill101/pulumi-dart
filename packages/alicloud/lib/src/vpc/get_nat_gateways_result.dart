// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nat_gateways_gateway.dart';

/// Result data returned by getNatGateways.
class GetNatGatewaysResult {
  final bool? dryRun;
  final bool? enableDetails;
  /// A list of Nat gateways. Each element contains the following attributes:
  final List<GetNatGatewaysGateway> gateways;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (Optional) A list of Nat gateways IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of Nat gateways names.
  final List<String> names;
  /// The name of the NAT gateway.
  final String? natGatewayName;
  /// The type of the NAT gateway.
  final String? natType;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The billing method of the NAT gateway.
  final String? paymentType;
  /// The ID of the resource group.
  final String? resourceGroupId;
  /// The specification of the NAT gateway.
  final String? specification;
  /// The status of the NAT gateway.
  final String? status;
  /// The tags of NAT gateway.
  final Map<String, String>? tags;
  final int totalCount;
  /// The ID of the VPC.
  final String? vpcId;

  /// Creates a new [GetNatGatewaysResult].
  /// [dryRun] Optional.
  /// [enableDetails] Optional.
  /// [gateways] A list of Nat gateways. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] (Optional) A list of Nat gateways IDs.
  /// [nameRegex] Optional.
  /// [names] A list of Nat gateways names.
  /// [natGatewayName] The name of the NAT gateway.
  /// [natType] The type of the NAT gateway.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [paymentType] The billing method of the NAT gateway.
  /// [resourceGroupId] The ID of the resource group.
  /// [specification] The specification of the NAT gateway.
  /// [status] The status of the NAT gateway.
  /// [tags] The tags of NAT gateway.
  /// [totalCount] Required.
  /// [vpcId] The ID of the VPC.
  GetNatGatewaysResult({
    this.dryRun,
    this.enableDetails,
    required this.gateways,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.natGatewayName,
    this.natType,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.paymentType,
    this.resourceGroupId,
    this.specification,
    this.status,
    this.tags,
    required this.totalCount,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'enableDetails': ?enableDetails,
      'gateways': pulumi.Input.encodeList<GetNatGatewaysGateway, Map<String, dynamic>>(gateways, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'natGatewayName': ?natGatewayName,
      'natType': ?natType,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'paymentType': ?paymentType,
      'resourceGroupId': ?resourceGroupId,
      'specification': ?specification,
      'status': ?status,
      'tags': ?tags,
      'totalCount': totalCount,
      'vpcId': ?vpcId,
    };
  }

  factory GetNatGatewaysResult.fromMap(Map<String, dynamic> map) {
    return GetNatGatewaysResult(
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      gateways: pulumi.Input.decodeList<GetNatGatewaysGateway>(map['gateways'], (value) => GetNatGatewaysGateway.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      natGatewayName: map['natGatewayName'] == null ? null : map['natGatewayName'] as String,
      natType: map['natType'] == null ? null : map['natType'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      specification: map['specification'] == null ? null : map['specification'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      totalCount: map['totalCount'] as int,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

