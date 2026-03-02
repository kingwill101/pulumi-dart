// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_extended_community_rule.dart';

/// {@template pulumi_managednetworkfabric_ip_extended_community_args_doc}
/// The set of arguments for IpExtendedCommunity.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_ip_extended_community_args_doc}
class IpExtendedCommunityArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// Name of the IP Extended Community.
  final pulumi.Input<String>? ipExtendedCommunityName;
  /// List of IP Extended Community Rules.
  final pulumi.Input<List<IpExtendedCommunityRule>> ipExtendedCommunityRules;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpExtendedCommunityArgs].
  /// [annotation] Switch configuration description.
  /// [ipExtendedCommunityName] Name of the IP Extended Community.
  /// [ipExtendedCommunityRules] List of IP Extended Community Rules.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  IpExtendedCommunityArgs({
    this.annotation,
    this.ipExtendedCommunityName,
    required this.ipExtendedCommunityRules,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'ipExtendedCommunityName': ?ipExtendedCommunityName,
      'ipExtendedCommunityRules': pulumi.Input.mapInputValue<List<IpExtendedCommunityRule>, List<Map<String, dynamic>>>(ipExtendedCommunityRules, (value) => pulumi.Input.encodeList<IpExtendedCommunityRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IpExtendedCommunityArgs.fromMap(Map<String, dynamic> map) {
    return IpExtendedCommunityArgs(
      annotation: map['annotation'] == null ? null : (map['annotation']! as String).input(),
      ipExtendedCommunityName: map['ipExtendedCommunityName'] == null ? null : (map['ipExtendedCommunityName']! as String).input(),
      ipExtendedCommunityRules: (pulumi.Input.decodeList<IpExtendedCommunityRule>(map['ipExtendedCommunityRules'], (value) => IpExtendedCommunityRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

