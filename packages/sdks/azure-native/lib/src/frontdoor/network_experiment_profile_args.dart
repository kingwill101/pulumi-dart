// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_frontdoor_network_experiment_profile_args_doc}
/// The set of arguments for NetworkExperimentProfile.
/// {@endtemplate}
/// {@macro pulumi_frontdoor_network_experiment_profile_args_doc}
class NetworkExperimentProfileArgs {
  /// The state of the Experiment
  final pulumi.Input<String>? enabledState;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the Profile
  final pulumi.Input<String>? name;
  /// The Profile identifier associated with the Tenant and Partner
  final pulumi.Input<String>? profileName;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkExperimentProfileArgs].
  /// [enabledState] The state of the Experiment
  /// [location] Resource location.
  /// [name] The name of the Profile
  /// [profileName] The Profile identifier associated with the Tenant and Partner
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  /// [tags] Resource tags.
  const NetworkExperimentProfileArgs({
    this.enabledState,
    this.location,
    this.name,
    this.profileName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledState': ?enabledState,
      'location': ?location,
      'name': ?name,
      'profileName': ?profileName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkExperimentProfileArgs.fromMap(Map<String, dynamic> map) {
    return NetworkExperimentProfileArgs(
      enabledState: (() { final guardedValue = map['enabledState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileName: (() { final guardedValue = map['profileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

