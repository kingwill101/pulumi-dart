// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mission_dedicated_hub_args_doc}
/// The set of arguments for DedicatedHub.
/// {@endtemplate}
/// {@macro pulumi_mission_dedicated_hub_args_doc}
class DedicatedHubArgs {
  /// The name of the communityResource Resource
  final pulumi.Input<String> communityName;
  /// The name of the Dedicated Hub Resource
  final pulumi.Input<String?>? dedicatedHubName;
  /// Designation of hub resource allocation (Pooled or Reserved)
  final pulumi.Input<dynamic>? designation;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DedicatedHubArgs].
  /// [communityName] The name of the communityResource Resource
  /// [dedicatedHubName] The name of the Dedicated Hub Resource
  /// [designation] Designation of hub resource allocation (Pooled or Reserved)
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const DedicatedHubArgs({
    required this.communityName,
    this.dedicatedHubName,
    this.designation,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityName': communityName,
      'dedicatedHubName': ?dedicatedHubName,
      'designation': ?designation,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DedicatedHubArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedHubArgs(
      communityName: pulumi.Input.fromValue(map['communityName'] as String),
      dedicatedHubName: (() { final guardedValue = map['dedicatedHubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      designation: (() { final guardedValue = map['designation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
