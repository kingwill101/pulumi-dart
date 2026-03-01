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
  NetworkAclState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<List<NetworkAclEgressAclEntry>>? egressAclEntries,
    pulumi.Output<List<NetworkAclIngressAclEntry>>? ingressAclEntries,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkAclName,
    pulumi.Output<List<NetworkAclResource>>? resources,
    pulumi.Output<String>? sourceNetworkAclId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      egressAclEntries = pulumi.Input.asOptionalInput<List<NetworkAclEgressAclEntry>>(egressAclEntries),
      ingressAclEntries = pulumi.Input.asOptionalInput<List<NetworkAclIngressAclEntry>>(ingressAclEntries),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkAclName = pulumi.Input.asOptionalInput<String>(networkAclName),
      resources = pulumi.Input.asOptionalInput<List<NetworkAclResource>>(resources),
      sourceNetworkAclId = pulumi.Input.asOptionalInput<String>(sourceNetworkAclId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      egressAclEntries: map['egressAclEntries'] == null ? null : pulumi.Output.create<List<NetworkAclEgressAclEntry>>(pulumi.Input.decodeList<NetworkAclEgressAclEntry>(map['egressAclEntries'], (value) => NetworkAclEgressAclEntry.fromMap((value as Map).cast<String, dynamic>()))),
      ingressAclEntries: map['ingressAclEntries'] == null ? null : pulumi.Output.create<List<NetworkAclIngressAclEntry>>(pulumi.Input.decodeList<NetworkAclIngressAclEntry>(map['ingressAclEntries'], (value) => NetworkAclIngressAclEntry.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkAclName: map['networkAclName'] == null ? null : pulumi.Output.create<String>(map['networkAclName'] as String),
      resources: map['resources'] == null ? null : pulumi.Output.create<List<NetworkAclResource>>(pulumi.Input.decodeList<NetworkAclResource>(map['resources'], (value) => NetworkAclResource.fromMap((value as Map).cast<String, dynamic>()))),
      sourceNetworkAclId: map['sourceNetworkAclId'] == null ? null : pulumi.Output.create<String>(map['sourceNetworkAclId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

