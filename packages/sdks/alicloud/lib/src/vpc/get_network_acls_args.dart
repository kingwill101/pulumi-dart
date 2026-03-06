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
  const GetNetworkAclsArgs({
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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAclName: (() { final guardedValue = map['networkAclName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

