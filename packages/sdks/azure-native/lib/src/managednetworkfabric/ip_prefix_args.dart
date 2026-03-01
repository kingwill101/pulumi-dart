// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_prefix_rule.dart';

/// {@template pulumi_managednetworkfabric_ip_prefix_args_doc}
/// The set of arguments for IpPrefix.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_ip_prefix_args_doc}
class IpPrefixArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// Name of the IP Prefix.
  final pulumi.Input<String>? ipPrefixName;
  /// The list of IP Prefix Rules.
  final pulumi.Input<List<IpPrefixRule>> ipPrefixRules;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpPrefixArgs].
  /// [annotation] Switch configuration description.
  /// [ipPrefixName] Name of the IP Prefix.
  /// [ipPrefixRules] The list of IP Prefix Rules.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  IpPrefixArgs({
    pulumi.Output<String>? annotation,
    pulumi.Output<String>? ipPrefixName,
    required pulumi.Output<List<IpPrefixRule>> ipPrefixRules,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      annotation = pulumi.Input.asOptionalInput<String>(annotation),
      ipPrefixName = pulumi.Input.asOptionalInput<String>(ipPrefixName),
      ipPrefixRules = pulumi.Input.asInput<List<IpPrefixRule>>(ipPrefixRules),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'ipPrefixName': ?ipPrefixName,
      'ipPrefixRules': pulumi.Input.mapInputValue<List<IpPrefixRule>, List<Map<String, dynamic>>>(ipPrefixRules, (value) => pulumi.Input.encodeList<IpPrefixRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IpPrefixArgs.fromMap(Map<String, dynamic> map) {
    return IpPrefixArgs(
      annotation: map['annotation'] == null ? null : pulumi.Output.create<String>(map['annotation'] as String),
      ipPrefixName: map['ipPrefixName'] == null ? null : pulumi.Output.create<String>(map['ipPrefixName'] as String),
      ipPrefixRules: pulumi.Output.create<List<IpPrefixRule>>(pulumi.Input.decodeList<IpPrefixRule>(map['ipPrefixRules'], (value) => IpPrefixRule.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

