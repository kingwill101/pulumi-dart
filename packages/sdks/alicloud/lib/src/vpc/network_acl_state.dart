// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_egress_acl_entry.dart';
import 'network_acl_ingress_acl_entry.dart';
import 'network_acl_resource.dart';

/// Input properties used for looking up and filtering NetworkAcl resources.
class NetworkAclState {
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// The description of the network ACL. The description must be 1 to 256 characters in length, and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// Out direction rule information. See `egress_acl_entries` below.
  final pulumi.Input<List<NetworkAclEgressAclEntry>>? egressAclEntries;
  /// Inward direction rule information. See `ingress_acl_entries` below.
  final pulumi.Input<List<NetworkAclIngressAclEntry>>? ingressAclEntries;
  /// . Field 'name' has been deprecated from provider version 1.122.0. New field 'network_acl_name' instead.
  final pulumi.Input<String>? name;
  /// The name of the network ACL.
  /// The name must be 1 to 128 characters in length and cannot start with http:// or https.
  final pulumi.Input<String>? networkAclName;
  /// The associated resource. See `resources` below.
  final pulumi.Input<List<NetworkAclResource>>? resources;
  /// SOURCE NetworkAcl specified by CopyNetworkAclEntries
  final pulumi.Input<String>? sourceNetworkAclId;
  /// The state of the network ACL.
  final pulumi.Input<String>? status;
  /// The tags of this resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the associated VPC.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? vpcId;

  /// Creates a new [NetworkAclState].
  /// [createTime] The creation time of the resource.
  /// [description] The description of the network ACL. The description must be 1 to 256 characters in length, and cannot start with `http://` or `https://`.
  /// [egressAclEntries] Out direction rule information. See `egress_acl_entries` below.
  /// [ingressAclEntries] Inward direction rule information. See `ingress_acl_entries` below.
  /// [name] . Field 'name' has been deprecated from provider version 1.122.0. New field 'network_acl_name' instead.
  /// [networkAclName] The name of the network ACL.
  /// [resources] The associated resource. See `resources` below.
  /// [sourceNetworkAclId] SOURCE NetworkAcl specified by CopyNetworkAclEntries
  /// [status] The state of the network ACL.
  /// [tags] The tags of this resource.
  /// [vpcId] The ID of the associated VPC.
  const NetworkAclState({
    this.createTime,
    this.description,
    this.egressAclEntries,
    this.ingressAclEntries,
    this.name,
    this.networkAclName,
    this.resources,
    this.sourceNetworkAclId,
    this.status,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'egressAclEntries': ?pulumi.Input.mapOptionalInputValue<List<NetworkAclEgressAclEntry>, List<Map<String, dynamic>>>(egressAclEntries, (value) => pulumi.Input.encodeList<NetworkAclEgressAclEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingressAclEntries': ?pulumi.Input.mapOptionalInputValue<List<NetworkAclIngressAclEntry>, List<Map<String, dynamic>>>(ingressAclEntries, (value) => pulumi.Input.encodeList<NetworkAclIngressAclEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'networkAclName': ?networkAclName,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<NetworkAclResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<NetworkAclResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceNetworkAclId': ?sourceNetworkAclId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory NetworkAclState.fromMap(Map<String, dynamic> map) {
    return NetworkAclState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egressAclEntries: (() { final guardedValue = map['egressAclEntries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkAclEgressAclEntry>(guardedValue, (value) => NetworkAclEgressAclEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ingressAclEntries: (() { final guardedValue = map['ingressAclEntries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkAclIngressAclEntry>(guardedValue, (value) => NetworkAclIngressAclEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAclName: (() { final guardedValue = map['networkAclName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkAclResource>(guardedValue, (value) => NetworkAclResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceNetworkAclId: (() { final guardedValue = map['sourceNetworkAclId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

