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
    required pulumi.Output<String> communityName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? transitHubName,
    pulumi.Output<TransitOption>? transitOption,
  }) :
      communityName = pulumi.Input.asInput<String>(communityName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitHubName = pulumi.Input.asOptionalInput<String>(transitHubName),
      transitOption = pulumi.Input.asOptionalInput<TransitOption>(transitOption);

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
      communityName: pulumi.Output.create<String>(map['communityName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transitHubName: map['transitHubName'] == null ? null : pulumi.Output.create<String>(map['transitHubName'] as String),
      transitOption: map['transitOption'] == null ? null : pulumi.Output.create<TransitOption>(TransitOption.fromMap((map['transitOption'] as Map).cast<String, dynamic>())),
    );
  }
}

