// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnetworks_subnetwork.dart';

/// Result data returned by getSubnetworks.
class GetSubnetworksResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? project;
  final String? region;
  /// A list of all retrieved GCE subnetworks. Structure is defined below.
  final List<GetSubnetworksSubnetwork> subnetworks;

  /// Creates a new [GetSubnetworksResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  /// [region] Optional.
  /// [subnetworks] A list of all retrieved GCE subnetworks. Structure is defined below.
  GetSubnetworksResult({
    this.filter,
    required this.id,
    this.project,
    this.region,
    required this.subnetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': id,
      'project': ?project,
      'region': ?region,
      'subnetworks': pulumi.Input.encodeList<GetSubnetworksSubnetwork, Map<String, dynamic>>(subnetworks, (value) => value.toMap()),
    };
  }

  factory GetSubnetworksResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetworksResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      subnetworks: pulumi.Input.decodeList<GetSubnetworksSubnetwork>(map['subnetworks'], (value) => GetSubnetworksSubnetwork.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

