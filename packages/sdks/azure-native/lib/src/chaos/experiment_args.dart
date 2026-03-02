// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_identity.dart';
import 'experiment_properties.dart';

/// {@template pulumi_chaos_experiment_args_doc}
/// The set of arguments for Experiment.
/// {@endtemplate}
/// {@macro pulumi_chaos_experiment_args_doc}
class ExperimentArgs {
  /// String that represents a Experiment resource name.
  final pulumi.Input<String>? experimentName;
  /// The identity of the experiment resource.
  final pulumi.Input<ExperimentIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The properties of the experiment resource.
  final pulumi.Input<ExperimentProperties> properties;
  /// String that represents an Azure resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ExperimentArgs].
  /// [experimentName] String that represents a Experiment resource name.
  /// [identity] The identity of the experiment resource.
  /// [location] The geo-location where the resource lives
  /// [properties] The properties of the experiment resource.
  /// [resourceGroupName] String that represents an Azure resource group.
  /// [tags] Resource tags.
  ExperimentArgs({
    this.experimentName,
    this.identity,
    this.location,
    required this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'experimentName': ?experimentName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ExperimentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<ExperimentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ExperimentArgs.fromMap(Map<String, dynamic> map) {
    return ExperimentArgs(
      experimentName: map['experimentName'] == null ? null : (map['experimentName'] as String).input(),
      identity: map['identity'] == null ? null : (ExperimentIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: (ExperimentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

