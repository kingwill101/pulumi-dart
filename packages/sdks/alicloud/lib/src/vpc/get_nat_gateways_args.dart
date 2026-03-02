// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_nat_gateways_get_nat_gateways_args_doc}
/// Arguments for getNatGateways.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_nat_gateways_get_nat_gateways_args_doc}
class GetNatGatewaysArgs {
  /// Specifies whether to only precheck the request.
  final pulumi.Input<bool>? dryRun;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of NAT gateways IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter nat gateways by name.
  final pulumi.Input<String>? nameRegex;
  /// The name of NAT gateway.
  final pulumi.Input<String>? natGatewayName;
  /// The nat type of NAT gateway. Valid values `Enhanced` and `Normal`.
  final pulumi.Input<String>? natType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The payment type of NAT gateway. Valid values `PayAsYouGo` and `Subscription`.
  final pulumi.Input<String>? paymentType;
  /// The resource group id of NAT gateway.
  final pulumi.Input<String>? resourceGroupId;
  /// The specification of NAT gateway. Valid values `Middle`, `Large`, `Small` and `XLarge.1`. Default value is `Small`.
  final pulumi.Input<String>? specification;
  /// The status of NAT gateway. Valid values `Available`, `Converting`, `Creating`, `Deleting` and `Modifying`.
  final pulumi.Input<String>? status;
  /// The tags of NAT gateway.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetNatGatewaysArgs].
  /// [dryRun] Specifies whether to only precheck the request.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of NAT gateways IDs.
  /// [nameRegex] A regex string to filter nat gateways by name.
  /// [natGatewayName] The name of NAT gateway.
  /// [natType] The nat type of NAT gateway. Valid values `Enhanced` and `Normal`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [paymentType] The payment type of NAT gateway. Valid values `PayAsYouGo` and `Subscription`.
  /// [resourceGroupId] The resource group id of NAT gateway.
  /// [specification] The specification of NAT gateway. Valid values `Middle`, `Large`, `Small` and `XLarge.1`. Default value is `Small`.
  /// [status] The status of NAT gateway. Valid values `Available`, `Converting`, `Creating`, `Deleting` and `Modifying`.
  /// [tags] The tags of NAT gateway.
  /// [vpcId] The ID of the VPC.
  GetNatGatewaysArgs({
    this.dryRun,
    this.enableDetails,
    this.ids,
    this.nameRegex,
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
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
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
      'vpcId': ?vpcId,
    };
  }

  factory GetNatGatewaysArgs.fromMap(Map<String, dynamic> map) {
    return GetNatGatewaysArgs(
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      natGatewayName: map['natGatewayName'] == null ? null : (map['natGatewayName']! as String).input(),
      natType: map['natType'] == null ? null : (map['natType']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      specification: map['specification'] == null ? null : (map['specification']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

