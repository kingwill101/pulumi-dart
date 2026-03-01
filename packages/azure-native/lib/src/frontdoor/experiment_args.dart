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
  ExperimentArgs({
    String? description,
    String? enabledState,
    Endpoint? endpointA,
    Endpoint? endpointB,
    String? experimentName,
    String? location,
    required String profileName,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      enabledState = pulumi.Input.asOptionalInput<String>(enabledState),
      endpointA = pulumi.Input.asOptionalInput<Endpoint>(endpointA),
      endpointB = pulumi.Input.asOptionalInput<Endpoint>(endpointB),
      experimentName = pulumi.Input.asOptionalInput<String>(experimentName),
      location = pulumi.Input.asOptionalInput<String>(location),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      description: map['description'] == null ? null : map['description'] as String,
      enabledState: map['enabledState'] == null ? null : map['enabledState'] as String,
      endpointA: map['endpointA'] == null ? null : Endpoint.fromMap((map['endpointA'] as Map).cast<String, dynamic>()),
      endpointB: map['endpointB'] == null ? null : Endpoint.fromMap((map['endpointB'] as Map).cast<String, dynamic>()),
      experimentName: map['experimentName'] == null ? null : map['experimentName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

