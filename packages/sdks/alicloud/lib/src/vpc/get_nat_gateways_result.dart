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
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      gateways: pulumi.Input.decodeList<GetNatGatewaysGateway>(map['gateways']!, (value) => GetNatGatewaysGateway.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      natGatewayName: (() { final guardedValue = map['natGatewayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      natType: (() { final guardedValue = map['natType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      totalCount: map['totalCount'] as int,
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

