// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_segment.dart';

/// Result data returned by getNetwork.
class GetNetworkResult {
  /// The administrative state of the network.
  final String adminStateUp;
  /// The set of string tags applied on the network.
  final List<String> allTags;
  /// The availability zone candidates for the network.
  final List<String> availabilityZoneHints;
  /// See Argument Reference above.
  final String? description;
  /// The network DNS domain. Available, when Neutron DNS extension
  /// is enabled
  final String dnsDomain;
  /// See Argument Reference above.
  final bool? external;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? matchingSubnetCidr;
  /// See Argument Reference above.
  final int? mtu;
  /// See Argument Reference above.
  final String? name;
  final String? networkId;
  /// See Argument Reference above.
  final String region;
  /// An array of one or more provider segment objects.
  final List<GetNetworkSegment> segments;
  /// Specifies whether the network resource can be accessed by any
  /// tenant or not.
  final String shared;
  final String? status;
  /// A list of subnet IDs belonging to the network.
  final List<String> subnets;
  final List<String>? tags;
  final String? tenantId;
  /// See Argument Reference above.
  final bool? transparentVlan;

  /// Creates a new [GetNetworkResult].
  /// [adminStateUp] The administrative state of the network.
  /// [allTags] The set of string tags applied on the network.
  /// [availabilityZoneHints] The availability zone candidates for the network.
  /// [description] See Argument Reference above.
  /// [dnsDomain] The network DNS domain. Available, when Neutron DNS extension
  /// [external] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [matchingSubnetCidr] Optional.
  /// [mtu] See Argument Reference above.
  /// [name] See Argument Reference above.
  /// [networkId] Optional.
  /// [region] See Argument Reference above.
  /// [segments] An array of one or more provider segment objects.
  /// [shared] Specifies whether the network resource can be accessed by any
  /// [status] Optional.
  /// [subnets] A list of subnet IDs belonging to the network.
  /// [tags] Optional.
  /// [tenantId] Optional.
  /// [transparentVlan] See Argument Reference above.
  GetNetworkResult({
    required this.adminStateUp,
    required this.allTags,
    required this.availabilityZoneHints,
    this.description,
    required this.dnsDomain,
    this.external,
    required this.id,
    this.matchingSubnetCidr,
    this.mtu,
    this.name,
    this.networkId,
    required this.region,
    required this.segments,
    required this.shared,
    this.status,
    required this.subnets,
    this.tags,
    this.tenantId,
    this.transparentVlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': adminStateUp,
      'allTags': allTags,
      'availabilityZoneHints': availabilityZoneHints,
      'description': ?description,
      'dnsDomain': dnsDomain,
      'external': ?external,
      'id': id,
      'matchingSubnetCidr': ?matchingSubnetCidr,
      'mtu': ?mtu,
      'name': ?name,
      'networkId': ?networkId,
      'region': region,
      'segments': pulumi.Input.encodeList<GetNetworkSegment, Map<String, dynamic>>(segments, (value) => value.toMap()),
      'shared': shared,
      'status': ?status,
      'subnets': subnets,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'transparentVlan': ?transparentVlan,
    };
  }

  factory GetNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkResult(
      adminStateUp: map['adminStateUp'] as String,
      allTags: (map['allTags'] as List).cast<String>(),
      availabilityZoneHints: (map['availabilityZoneHints'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      dnsDomain: map['dnsDomain'] as String,
      external: map['external'] == null ? null : map['external'] as bool,
      id: map['id'] as String,
      matchingSubnetCidr: map['matchingSubnetCidr'] == null ? null : map['matchingSubnetCidr'] as String,
      mtu: map['mtu'] == null ? null : map['mtu'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      networkId: map['networkId'] == null ? null : map['networkId'] as String,
      region: map['region'] as String,
      segments: pulumi.Input.decodeList<GetNetworkSegment>(map['segments'], (value) => GetNetworkSegment.fromMap((value as Map).cast<String, dynamic>())),
      shared: map['shared'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      subnets: (map['subnets'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      transparentVlan: map['transparentVlan'] == null ? null : map['transparentVlan'] as bool,
    );
  }
}

