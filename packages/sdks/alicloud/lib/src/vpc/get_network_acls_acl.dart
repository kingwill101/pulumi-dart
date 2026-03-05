// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_acls_acl_egress_acl_entry.dart';
import 'get_network_acls_acl_ingress_acl_entry.dart';
import 'get_network_acls_acl_resource.dart';

class GetNetworkAclsAcl {
  /// Description of network ACL information.
  final pulumi.Input<String> description;
  /// Output direction rule information.
  final pulumi.Input<List<GetNetworkAclsAclEgressAclEntry>> egressAclEntries;
  /// The ID of the Network Acl.
  final pulumi.Input<String> id;
  /// Entry direction rule information.
  final pulumi.Input<List<GetNetworkAclsAclIngressAclEntry>> ingressAclEntries;
  /// The first ID of the resource.
  final pulumi.Input<String> networkAclId;
  /// The name of the network ACL.
  final pulumi.Input<String> networkAclName;
  /// The associated resource.
  final pulumi.Input<List<GetNetworkAclsAclResource>> resources;
  /// The state of the network ACL.
  final pulumi.Input<String> status;
  /// The ID of the associated VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetNetworkAclsAcl].
  /// [description] Description of network ACL information.
  /// [egressAclEntries] Output direction rule information.
  /// [id] The ID of the Network Acl.
  /// [ingressAclEntries] Entry direction rule information.
  /// [networkAclId] The first ID of the resource.
  /// [networkAclName] The name of the network ACL.
  /// [resources] The associated resource.
  /// [status] The state of the network ACL.
  /// [vpcId] The ID of the associated VPC.
  GetNetworkAclsAcl({
    required this.description,
    required this.egressAclEntries,
    required this.id,
    required this.ingressAclEntries,
    required this.networkAclId,
    required this.networkAclName,
    required this.resources,
    required this.status,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'egressAclEntries': pulumi.Input.mapInputValue<List<GetNetworkAclsAclEgressAclEntry>, List<Map<String, dynamic>>>(egressAclEntries, (value) => pulumi.Input.encodeList<GetNetworkAclsAclEgressAclEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'ingressAclEntries': pulumi.Input.mapInputValue<List<GetNetworkAclsAclIngressAclEntry>, List<Map<String, dynamic>>>(ingressAclEntries, (value) => pulumi.Input.encodeList<GetNetworkAclsAclIngressAclEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkAclId': networkAclId,
      'networkAclName': networkAclName,
      'resources': pulumi.Input.mapInputValue<List<GetNetworkAclsAclResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<GetNetworkAclsAclResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'vpcId': vpcId,
    };
  }

  factory GetNetworkAclsAcl.fromMap(Map<String, dynamic> map) {
    return GetNetworkAclsAcl(
      description: pulumi.Input.fromValue(map['description'] as String),
      egressAclEntries: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkAclsAclEgressAclEntry>(map['egressAclEntries']!, (value) => GetNetworkAclsAclEgressAclEntry.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      ingressAclEntries: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkAclsAclIngressAclEntry>(map['ingressAclEntries']!, (value) => GetNetworkAclsAclIngressAclEntry.fromMap((value as Map).cast<String, dynamic>()))),
      networkAclId: pulumi.Input.fromValue(map['networkAclId'] as String),
      networkAclName: pulumi.Input.fromValue(map['networkAclName'] as String),
      resources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkAclsAclResource>(map['resources']!, (value) => GetNetworkAclsAclResource.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

