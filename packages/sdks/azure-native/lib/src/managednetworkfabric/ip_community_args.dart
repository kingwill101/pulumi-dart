// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_community_rule.dart';

/// {@template pulumi_managednetworkfabric_ip_community_args_doc}
/// The set of arguments for IpCommunity.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_ip_community_args_doc}
class IpCommunityArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// Name of the IP Community.
  final pulumi.Input<String>? ipCommunityName;
  /// List of IP Community Rules.
  final pulumi.Input<List<IpCommunityRule>> ipCommunityRules;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpCommunityArgs].
  /// [annotation] Switch configuration description.
  /// [ipCommunityName] Name of the IP Community.
  /// [ipCommunityRules] List of IP Community Rules.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  IpCommunityArgs({
    this.annotation,
    this.ipCommunityName,
    required this.ipCommunityRules,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'ipCommunityName': ?ipCommunityName,
      'ipCommunityRules': pulumi.Input.mapInputValue<List<IpCommunityRule>, List<Map<String, dynamic>>>(ipCommunityRules, (value) => pulumi.Input.encodeList<IpCommunityRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IpCommunityArgs.fromMap(Map<String, dynamic> map) {
    return IpCommunityArgs(
      annotation: map['annotation'] == null ? null : (map['annotation']! as String).input(),
      ipCommunityName: map['ipCommunityName'] == null ? null : (map['ipCommunityName']! as String).input(),
      ipCommunityRules: (pulumi.Input.decodeList<IpCommunityRule>(map['ipCommunityRules'], (value) => IpCommunityRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

