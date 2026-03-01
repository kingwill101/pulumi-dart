// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_egress_acl_entry.dart';
import 'network_acl_ingress_acl_entry.dart';
import 'network_acl_resource.dart';

/// {@template pulumi_vpc_network_acl_network_acl_args_doc}
/// The set of arguments for NetworkAcl.
/// {@endtemplate}
/// {@macro pulumi_vpc_network_acl_network_acl_args_doc}
class NetworkAclArgs {
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
  /// The tags of this resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the associated VPC.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String> vpcId;

  /// Creates a new [NetworkAclArgs].
  /// [description] The description of the network ACL. The description must be 1 to 256 characters in length, and cannot start with `http://` or `https://`.
  /// [egressAclEntries] Out direction rule information. See `egress_acl_entries` below.
  /// [ingressAclEntries] Inward direction rule information. See `ingress_acl_entries` below.
  /// [name] . Field 'name' has been deprecated from provider version 1.122.0. New field 'network_acl_name' instead.
  /// [networkAclName] The name of the network ACL.
  /// [resources] The associated resource. See `resources` below.
  /// [sourceNetworkAclId] SOURCE NetworkAcl specified by CopyNetworkAclEntries
  /// [tags] The tags of this resource.
  /// [vpcId] The ID of the associated VPC.
  NetworkAclArgs({
    String? description,
    List<NetworkAclEgressAclEntry>? egressAclEntries,
    List<NetworkAclIngressAclEntry>? ingressAclEntries,
    String? name,
    String? networkAclName,
    List<NetworkAclResource>? resources,
    String? sourceNetworkAclId,
    Map<String, String>? tags,
    required String vpcId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      egressAclEntries = pulumi.Input.asOptionalInput<List<NetworkAclEgressAclEntry>>(egressAclEntries),
      ingressAclEntries = pulumi.Input.asOptionalInput<List<NetworkAclIngressAclEntry>>(ingressAclEntries),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkAclName = pulumi.Input.asOptionalInput<String>(networkAclName),
      resources = pulumi.Input.asOptionalInput<List<NetworkAclResource>>(resources),
      sourceNetworkAclId = pulumi.Input.asOptionalInput<String>(sourceNetworkAclId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'egressAclEntries': ?pulumi.Input.mapOptionalInputValue<List<NetworkAclEgressAclEntry>, List<Map<String, dynamic>>>(egressAclEntries, (value) => pulumi.Input.encodeList<NetworkAclEgressAclEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingressAclEntries': ?pulumi.Input.mapOptionalInputValue<List<NetworkAclIngressAclEntry>, List<Map<String, dynamic>>>(ingressAclEntries, (value) => pulumi.Input.encodeList<NetworkAclIngressAclEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'networkAclName': ?networkAclName,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<NetworkAclResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<NetworkAclResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceNetworkAclId': ?sourceNetworkAclId,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory NetworkAclArgs.fromMap(Map<String, dynamic> map) {
    return NetworkAclArgs(
      description: map['description'] == null ? null : map['description'] as String,
      egressAclEntries: map['egressAclEntries'] == null ? null : pulumi.Input.decodeList<NetworkAclEgressAclEntry>(map['egressAclEntries'], (value) => NetworkAclEgressAclEntry.fromMap((value as Map).cast<String, dynamic>())),
      ingressAclEntries: map['ingressAclEntries'] == null ? null : pulumi.Input.decodeList<NetworkAclIngressAclEntry>(map['ingressAclEntries'], (value) => NetworkAclIngressAclEntry.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      networkAclName: map['networkAclName'] == null ? null : map['networkAclName'] as String,
      resources: map['resources'] == null ? null : pulumi.Input.decodeList<NetworkAclResource>(map['resources'], (value) => NetworkAclResource.fromMap((value as Map).cast<String, dynamic>())),
      sourceNetworkAclId: map['sourceNetworkAclId'] == null ? null : map['sourceNetworkAclId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}

