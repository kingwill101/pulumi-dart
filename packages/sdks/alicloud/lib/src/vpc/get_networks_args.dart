// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_networks_get_networks_args_doc}
/// Arguments for getNetworks.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_networks_get_networks_args_doc}
class GetNetworksArgs {
  /// Filter results by a specific CIDR block. For example: "172.16.0.0/12".
  final pulumi.Input<String>? cidrBlock;
  /// The ID of dhcp options set.
  final pulumi.Input<String>? dhcpOptionsSetId;
  /// Indicates whether to check this request only. Valid values: `true` and `false`.
  final pulumi.Input<bool>? dryRun;
  /// Default to `true`. Set it to true can output the `route_table_id`.
  final pulumi.Input<bool>? enableDetails;
  /// A list of VPC IDs.
  final pulumi.Input<List<String>>? ids;
  /// Indicate whether the VPC is the default one in the specified region.
  final pulumi.Input<bool>? isDefault;
  /// A regex string to filter VPCs by name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The Id of resource group which VPC belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// Filter results by a specific status. Valid value are `Pending` and `Available`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the VPC.
  final pulumi.Input<String>? vpcName;
  /// The owner ID of VPC.
  final pulumi.Input<int>? vpcOwnerId;
  /// Filter results by the specified vSwitch.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GetNetworksArgs].
  /// [cidrBlock] Filter results by a specific CIDR block. For example: "172.16.0.0/12".
  /// [dhcpOptionsSetId] The ID of dhcp options set.
  /// [dryRun] Indicates whether to check this request only. Valid values: `true` and `false`.
  /// [enableDetails] Default to `true`. Set it to true can output the `route_table_id`.
  /// [ids] A list of VPC IDs.
  /// [isDefault] Indicate whether the VPC is the default one in the specified region.
  /// [nameRegex] A regex string to filter VPCs by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] The Id of resource group which VPC belongs.
  /// [status] Filter results by a specific status. Valid value are `Pending` and `Available`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcName] The name of the VPC.
  /// [vpcOwnerId] The owner ID of VPC.
  /// [vswitchId] Filter results by the specified vSwitch.
  GetNetworksArgs({
    this.cidrBlock,
    this.dhcpOptionsSetId,
    this.dryRun,
    this.enableDetails,
    this.ids,
    this.isDefault,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vpcName,
    this.vpcOwnerId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'dhcpOptionsSetId': ?dhcpOptionsSetId,
      'dryRun': ?dryRun,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'isDefault': ?isDefault,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcName': ?vpcName,
      'vpcOwnerId': ?vpcOwnerId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetNetworksArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworksArgs(
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dhcpOptionsSetId: (() { final guardedValue = map['dhcpOptionsSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcName: (() { final guardedValue = map['vpcName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcOwnerId: (() { final guardedValue = map['vpcOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

