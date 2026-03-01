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
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<String>? dhcpOptionsSetId,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcName,
    pulumi.Output<int>? vpcOwnerId,
    pulumi.Output<String>? vswitchId,
  }) :
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      dhcpOptionsSetId = pulumi.Input.asOptionalInput<String>(dhcpOptionsSetId),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcName = pulumi.Input.asOptionalInput<String>(vpcName),
      vpcOwnerId = pulumi.Input.asOptionalInput<int>(vpcOwnerId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      dhcpOptionsSetId: map['dhcpOptionsSetId'] == null ? null : pulumi.Output.create<String>(map['dhcpOptionsSetId'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcName: map['vpcName'] == null ? null : pulumi.Output.create<String>(map['vpcName'] as String),
      vpcOwnerId: map['vpcOwnerId'] == null ? null : pulumi.Output.create<int>(map['vpcOwnerId'] as int),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

