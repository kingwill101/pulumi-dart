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
    List<String>? ids,
    String? nameRegex,
    String? networkAclName,
    String? outputFile,
    String? resourceId,
    String? resourceType,
    String? status,
    String? vpcId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      networkAclName = pulumi.Input.asOptionalInput<String>(networkAclName),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      networkAclName: map['networkAclName'] == null ? null : map['networkAclName'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

