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
  NetworkExperimentProfileArgs({
    pulumi.Output<String>? enabledState,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? profileName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      enabledState = pulumi.Input.asOptionalInput<String>(enabledState),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      profileName = pulumi.Input.asOptionalInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      enabledState: map['enabledState'] == null ? null : pulumi.Output.create<String>(map['enabledState'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      profileName: map['profileName'] == null ? null : pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

