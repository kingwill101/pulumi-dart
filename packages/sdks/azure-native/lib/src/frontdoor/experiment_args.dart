// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint.dart';

/// {@template pulumi_frontdoor_experiment_args_doc}
/// The set of arguments for Experiment.
/// {@endtemplate}
/// {@macro pulumi_frontdoor_experiment_args_doc}
class ExperimentArgs {
  /// The description of the details or intents of the Experiment
  final pulumi.Input<String>? description;
  /// The state of the Experiment
  final pulumi.Input<String>? enabledState;
  /// The endpoint A of an experiment
  final pulumi.Input<Endpoint>? endpointA;
  /// The endpoint B of an experiment
  final pulumi.Input<Endpoint>? endpointB;
  /// The Experiment identifier associated with the Experiment
  final pulumi.Input<String>? experimentName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The Profile identifier associated with the Tenant and Partner
  final pulumi.Input<String> profileName;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ExperimentArgs].
  /// [description] The description of the details or intents of the Experiment
  /// [enabledState] The state of the Experiment
  /// [endpointA] The endpoint A of an experiment
  /// [endpointB] The endpoint B of an experiment
  /// [experimentName] The Experiment identifier associated with the Experiment
  /// [location] Resource location.
  /// [profileName] The Profile identifier associated with the Tenant and Partner
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  /// [tags] Resource tags.
  const ExperimentArgs({
    this.description,
    this.enabledState,
    this.endpointA,
    this.endpointB,
    this.experimentName,
    this.location,
    required this.profileName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enabledState': ?enabledState,
      'endpointA': ?pulumi.Input.mapOptionalInputValue<Endpoint, Map<String, dynamic>>(endpointA, (value) => value.toMap()),
      'endpointB': ?pulumi.Input.mapOptionalInputValue<Endpoint, Map<String, dynamic>>(endpointB, (value) => value.toMap()),
      'experimentName': ?experimentName,
      'location': ?location,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ExperimentArgs.fromMap(Map<String, dynamic> map) {
    return ExperimentArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabledState: (() { final guardedValue = map['enabledState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointA: (() { final guardedValue = map['endpointA']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Endpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointB: (() { final guardedValue = map['endpointB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Endpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      experimentName: (() { final guardedValue = map['experimentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

