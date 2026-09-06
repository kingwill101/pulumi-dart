// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'community_endpoint_destination_rule.dart';

/// {@template pulumi_mission_community_endpoint_args_doc}
/// The set of arguments for CommunityEndpoint.
/// {@endtemplate}
/// {@macro pulumi_mission_community_endpoint_args_doc}
class CommunityEndpointArgs {
  /// The name of the Community Endpoint Resource
  final pulumi.Input<String?>? communityEndpointName;
  /// The name of the communityResource Resource
  final pulumi.Input<String> communityName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Community Endpoint Rule Collection.
  final pulumi.Input<List<CommunityEndpointDestinationRule>> ruleCollection;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [CommunityEndpointArgs].
  /// [communityEndpointName] The name of the Community Endpoint Resource
  /// [communityName] The name of the communityResource Resource
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleCollection] Community Endpoint Rule Collection.
  /// [tags] Resource tags.
  const CommunityEndpointArgs({
    this.communityEndpointName,
    required this.communityName,
    this.location,
    required this.resourceGroupName,
    required this.ruleCollection,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityEndpointName': ?communityEndpointName,
      'communityName': communityName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'ruleCollection': pulumi.Input.mapInputValue<List<CommunityEndpointDestinationRule>, List<Map<String, dynamic>>>(ruleCollection, (value) => pulumi.Input.encodeList<CommunityEndpointDestinationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory CommunityEndpointArgs.fromMap(Map<String, dynamic> map) {
    return CommunityEndpointArgs(
      communityEndpointName: (() { final guardedValue = map['communityEndpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      communityName: pulumi.Input.fromValue(map['communityName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleCollection: pulumi.Input.fromValue(pulumi.Input.decodeList<CommunityEndpointDestinationRule>(map['ruleCollection']!, (value) => CommunityEndpointDestinationRule.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
