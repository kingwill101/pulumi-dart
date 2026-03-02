// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_option.dart';

/// {@template pulumi_mission_transit_hub_args_doc}
/// The set of arguments for TransitHub.
/// {@endtemplate}
/// {@macro pulumi_mission_transit_hub_args_doc}
class TransitHubArgs {
  /// The name of the communityResource Resource
  final pulumi.Input<String> communityName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The state of the transitHub.
  final pulumi.Input<String>? state;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the TransitHub Resource
  final pulumi.Input<String>? transitHubName;
  /// The TransitOption of the transitHub.
  final pulumi.Input<TransitOption>? transitOption;

  /// Creates a new [TransitHubArgs].
  /// [communityName] The name of the communityResource Resource
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [state] The state of the transitHub.
  /// [tags] Resource tags.
  /// [transitHubName] The name of the TransitHub Resource
  /// [transitOption] The TransitOption of the transitHub.
  TransitHubArgs({
    required this.communityName,
    this.location,
    required this.resourceGroupName,
    this.state,
    this.tags,
    this.transitHubName,
    this.transitOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityName': communityName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'state': ?state,
      'tags': ?tags,
      'transitHubName': ?transitHubName,
      'transitOption': ?pulumi.Input.mapOptionalInputValue<TransitOption, Map<String, dynamic>>(transitOption, (value) => value.toMap()),
    };
  }

  factory TransitHubArgs.fromMap(Map<String, dynamic> map) {
    return TransitHubArgs(
      communityName: (map['communityName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      transitHubName: map['transitHubName'] == null ? null : (map['transitHubName']! as String).input(),
      transitOption: map['transitOption'] == null ? null : (TransitOption.fromMap((map['transitOption']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

