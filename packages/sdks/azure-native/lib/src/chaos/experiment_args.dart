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
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ExperimentIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'properties':
          pulumi.Input.mapInputValue<
            ExperimentProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ExperimentArgs.fromMap(Map<String, dynamic> map) {
    return ExperimentArgs(
      experimentName: (() {
        final guardedValue = map['experimentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExperimentIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: pulumi.Input.fromValue(
        ExperimentProperties.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
