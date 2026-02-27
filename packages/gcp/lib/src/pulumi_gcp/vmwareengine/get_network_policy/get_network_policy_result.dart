// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_network_policy_external_ip/get_network_policy_external_ip.dart';
import '../get_network_policy_internet_access/get_network_policy_internet_access.dart';

/// Result data returned by getNetworkPolicy.
class GetNetworkPolicyResult {
  final String createTime;
  final String description;
  final String edgeServicesCidr;
  final List<GetNetworkPolicyExternalIp> externalIps;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetNetworkPolicyInternetAccess> internetAccesses;
  final String location;
  final String name;
  final String? project;
  final String uid;
  final String updateTime;
  final String vmwareEngineNetwork;
  final String vmwareEngineNetworkCanonical;

  GetNetworkPolicyResult({
    required this.createTime,
    required this.description,
    required this.edgeServicesCidr,
    required this.externalIps,
    required this.id,
    required this.internetAccesses,
    required this.location,
    required this.name,
    this.project,
    required this.uid,
    required this.updateTime,
    required this.vmwareEngineNetwork,
    required this.vmwareEngineNetworkCanonical,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['edgeServicesCidr'] = edgeServicesCidr;
    map['externalIps'] = pulumi.Input.encodeList<GetNetworkPolicyExternalIp,
        Map<String, dynamic>>(externalIps, (value) => value.toMap());
    map['id'] = id;
    map['internetAccesses'] = pulumi.Input.encodeList<
        GetNetworkPolicyInternetAccess,
        Map<String, dynamic>>(internetAccesses, (value) => value.toMap());
    map['location'] = location;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    map['vmwareEngineNetwork'] = vmwareEngineNetwork;
    map['vmwareEngineNetworkCanonical'] = vmwareEngineNetworkCanonical;
    return map;
  }

  factory GetNetworkPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPolicyResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      edgeServicesCidr: map['edgeServicesCidr'] as String,
      externalIps: pulumi.Input.decodeList<GetNetworkPolicyExternalIp>(
          map['externalIps'],
          (value) => GetNetworkPolicyExternalIp.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      internetAccesses: pulumi.Input.decodeList<GetNetworkPolicyInternetAccess>(
          map['internetAccesses'],
          (value) => GetNetworkPolicyInternetAccess.fromMap(
              (value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      vmwareEngineNetwork: map['vmwareEngineNetwork'] as String,
      vmwareEngineNetworkCanonical:
          map['vmwareEngineNetworkCanonical'] as String,
    );
  }
}
