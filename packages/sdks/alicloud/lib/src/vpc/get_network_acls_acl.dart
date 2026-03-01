// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_acls_acl_egress_acl_entry.dart';
import 'get_network_acls_acl_ingress_acl_entry.dart';
import 'get_network_acls_acl_resource.dart';

class GetNetworkAclsAcl {
  /// Description of network ACL information.
  final String description;
  /// Output direction rule information.
  final List<GetNetworkAclsAclEgressAclEntry> egressAclEntries;
  /// The ID of the Network Acl.
  final String id;
  /// Entry direction rule information.
  final List<GetNetworkAclsAclIngressAclEntry> ingressAclEntries;
  /// The first ID of the resource.
  final String networkAclId;
  /// The name of the network ACL.
  final String networkAclName;
  /// The associated resource.
  final List<GetNetworkAclsAclResource> resources;
  /// The state of the network ACL.
  final String status;
  /// The ID of the associated VPC.
  final String vpcId;

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
      'egressAclEntries': pulumi.Input.encodeList<GetNetworkAclsAclEgressAclEntry, Map<String, dynamic>>(egressAclEntries, (value) => value.toMap()),
      'id': id,
      'ingressAclEntries': pulumi.Input.encodeList<GetNetworkAclsAclIngressAclEntry, Map<String, dynamic>>(ingressAclEntries, (value) => value.toMap()),
      'networkAclId': networkAclId,
      'networkAclName': networkAclName,
      'resources': pulumi.Input.encodeList<GetNetworkAclsAclResource, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'status': status,
      'vpcId': vpcId,
    };
  }

  factory GetNetworkAclsAcl.fromMap(Map<String, dynamic> map) {
    return GetNetworkAclsAcl(
      description: map['description'] as String,
      egressAclEntries: pulumi.Input.decodeList<GetNetworkAclsAclEgressAclEntry>(map['egressAclEntries'], (value) => GetNetworkAclsAclEgressAclEntry.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ingressAclEntries: pulumi.Input.decodeList<GetNetworkAclsAclIngressAclEntry>(map['ingressAclEntries'], (value) => GetNetworkAclsAclIngressAclEntry.fromMap((value as Map).cast<String, dynamic>())),
      networkAclId: map['networkAclId'] as String,
      networkAclName: map['networkAclName'] as String,
      resources: pulumi.Input.decodeList<GetNetworkAclsAclResource>(map['resources'], (value) => GetNetworkAclsAclResource.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

