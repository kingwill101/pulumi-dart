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
    pulumi.Output<String>? annotation,
    pulumi.Output<String>? ipExtendedCommunityName,
    required pulumi.Output<List<IpExtendedCommunityRule>> ipExtendedCommunityRules,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      annotation = pulumi.Input.asOptionalInput<String>(annotation),
      ipExtendedCommunityName = pulumi.Input.asOptionalInput<String>(ipExtendedCommunityName),
      ipExtendedCommunityRules = pulumi.Input.asInput<List<IpExtendedCommunityRule>>(ipExtendedCommunityRules),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      annotation: map['annotation'] == null ? null : pulumi.Output.create<String>(map['annotation'] as String),
      ipExtendedCommunityName: map['ipExtendedCommunityName'] == null ? null : pulumi.Output.create<String>(map['ipExtendedCommunityName'] as String),
      ipExtendedCommunityRules: pulumi.Output.create<List<IpExtendedCommunityRule>>(pulumi.Input.decodeList<IpExtendedCommunityRule>(map['ipExtendedCommunityRules'], (value) => IpExtendedCommunityRule.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

