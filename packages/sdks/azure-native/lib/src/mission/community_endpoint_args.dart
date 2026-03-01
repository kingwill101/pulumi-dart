// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'community_endpoint_destination_rule.dart';

/// {@template pulumi_mission_community_endpoint_args_doc}
/// The set of arguments for CommunityEndpoint.
/// {@endtemplate}
/// {@macro pulumi_mission_community_endpoint_args_doc}
class CommunityEndpointArgs {
  /// The name of the Community Endpoint Resource
  final pulumi.Input<String>? communityEndpointName;
  /// The name of the communityResource Resource
  final pulumi.Input<String> communityName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Community Endpoint Rule Collection.
  final pulumi.Input<List<CommunityEndpointDestinationRule>> ruleCollection;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CommunityEndpointArgs].
  /// [communityEndpointName] The name of the Community Endpoint Resource
  /// [communityName] The name of the communityResource Resource
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleCollection] Community Endpoint Rule Collection.
  /// [tags] Resource tags.
  CommunityEndpointArgs({
    pulumi.Output<String>? communityEndpointName,
    required pulumi.Output<String> communityName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<List<CommunityEndpointDestinationRule>> ruleCollection,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      communityEndpointName = pulumi.Input.asOptionalInput<String>(communityEndpointName),
      communityName = pulumi.Input.asInput<String>(communityName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleCollection = pulumi.Input.asInput<List<CommunityEndpointDestinationRule>>(ruleCollection),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      communityEndpointName: map['communityEndpointName'] == null ? null : pulumi.Output.create<String>(map['communityEndpointName'] as String),
      communityName: pulumi.Output.create<String>(map['communityName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleCollection: pulumi.Output.create<List<CommunityEndpointDestinationRule>>(pulumi.Input.decodeList<CommunityEndpointDestinationRule>(map['ruleCollection'], (value) => CommunityEndpointDestinationRule.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

