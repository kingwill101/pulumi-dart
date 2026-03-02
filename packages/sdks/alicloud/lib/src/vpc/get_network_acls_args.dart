// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_network_acls_get_network_acls_args_doc}
/// Arguments for getNetworkAcls.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_network_acls_get_network_acls_args_doc}
class GetNetworkAclsArgs {
  /// A list of Network Acl ID.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Network Acl name.
  final pulumi.Input<String>? nameRegex;
  /// The name of the network ACL.
  final pulumi.Input<String>? networkAclName;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the associated resource.
  final pulumi.Input<String>? resourceId;
  /// The type of the associated resource. Valid values `VSwitch`. `resource_type` and `resource_id` need to be specified at the same time to take effect.
  final pulumi.Input<String>? resourceType;
  /// The state of the network ACL. Valid values: `Available` and `Modifying`.
  final pulumi.Input<String>? status;
  /// The ID of the associated VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetNetworkAclsArgs].
  /// [ids] A list of Network Acl ID.
  /// [nameRegex] A regex string to filter results by Network Acl name.
  /// [networkAclName] The name of the network ACL.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceId] The ID of the associated resource.
  /// [resourceType] The type of the associated resource. Valid values `VSwitch`. `resource_type` and `resource_id` need to be specified at the same time to take effect.
  /// [status] The state of the network ACL. Valid values: `Available` and `Modifying`.
  /// [vpcId] The ID of the associated VPC.
  GetNetworkAclsArgs({
    this.ids,
    this.nameRegex,
    this.networkAclName,
    this.outputFile,
    this.resourceId,
    this.resourceType,
    this.status,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'networkAclName': ?networkAclName,
      'outputFile': ?outputFile,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory GetNetworkAclsArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkAclsArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      networkAclName: map['networkAclName'] == null ? null : (map['networkAclName'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

