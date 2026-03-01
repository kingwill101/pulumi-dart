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
    String? experimentName,
    ExperimentIdentity? identity,
    String? location,
    required ExperimentProperties properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      experimentName = pulumi.Input.asOptionalInput<String>(experimentName),
      identity = pulumi.Input.asOptionalInput<ExperimentIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<ExperimentProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      experimentName: map['experimentName'] == null ? null : map['experimentName'] as String,
      identity: map['identity'] == null ? null : ExperimentIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      properties: ExperimentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

