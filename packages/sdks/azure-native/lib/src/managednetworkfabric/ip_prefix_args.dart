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
    this.annotation,
    this.ipPrefixName,
    required this.ipPrefixRules,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'ipPrefixName': ?ipPrefixName,
      'ipPrefixRules':
          pulumi.Input.mapInputValue<
            List<IpPrefixRule>,
            List<Map<String, dynamic>>
          >(
            ipPrefixRules,
            (value) =>
                pulumi.Input.encodeList<IpPrefixRule, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory IpPrefixArgs.fromMap(Map<String, dynamic> map) {
    return IpPrefixArgs(
      annotation: (() {
        final guardedValue = map['annotation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipPrefixName: (() {
        final guardedValue = map['ipPrefixName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipPrefixRules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<IpPrefixRule>(
          map['ipPrefixRules']!,
          (value) =>
              IpPrefixRule.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
