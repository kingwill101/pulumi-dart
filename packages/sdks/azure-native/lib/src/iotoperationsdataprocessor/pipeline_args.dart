// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'pipeline_input.dart';
import 'pipeline_stage.dart';

/// {@template pulumi_iotoperationsdataprocessor_pipeline_args_doc}
/// The set of arguments for Pipeline.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsdataprocessor_pipeline_args_doc}
class PipelineArgs {
  /// Detailed description of the Pipeline.
  final pulumi.Input<String>? description;

  /// Flag indicating whether the pipeline should be running or not.
  final pulumi.Input<bool> enabled;

  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;

  /// Information about where to pull input data from.
  final pulumi.Input<PipelineInput> input;

  /// Name of instance.
  final pulumi.Input<String> instanceName;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Name of pipeline
  final pulumi.Input<String>? pipelineName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Map of stage ids to stage configurations for all pipeline processing and output stages.
  final pulumi.Input<Map<String, PipelineStage>> stages;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PipelineArgs].
  /// [description] Detailed description of the Pipeline.
  /// [enabled] Flag indicating whether the pipeline should be running or not.
  /// [extendedLocation] Edge location of the resource.
  /// [input] Information about where to pull input data from.
  /// [instanceName] Name of instance.
  /// [location] The geo-location where the resource lives
  /// [pipelineName] Name of pipeline
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [stages] Map of stage ids to stage configurations for all pipeline processing and output stages.
  /// [tags] Resource tags.
  PipelineArgs({
    this.description,
    required this.enabled,
    required this.extendedLocation,
    required this.input,
    required this.instanceName,
    this.location,
    this.pipelineName,
    required this.resourceGroupName,
    required this.stages,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enabled': enabled,
      'extendedLocation':
          pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(
            extendedLocation,
            (value) => value.toMap(),
          ),
      'input': pulumi.Input.mapInputValue<PipelineInput, Map<String, dynamic>>(
        input,
        (value) => value.toMap(),
      ),
      'instanceName': instanceName,
      'location': ?location,
      'pipelineName': ?pipelineName,
      'resourceGroupName': resourceGroupName,
      'stages':
          pulumi.Input.mapInputValue<
            Map<String, PipelineStage>,
            Map<String, Map<String, dynamic>>
          >(
            stages,
            (value) =>
                pulumi.Input.encodeMapValues<
                  PipelineStage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': ?tags,
    };
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      extendedLocation: pulumi.Input.fromValue(
        ExtendedLocation.fromMap(
          (map['extendedLocation']! as Map).cast<String, dynamic>(),
        ),
      ),
      input: pulumi.Input.fromValue(
        PipelineInput.fromMap((map['input']! as Map).cast<String, dynamic>()),
      ),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pipelineName: (() {
        final guardedValue = map['pipelineName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      stages: pulumi.Input.fromValue(
        pulumi.Input.decodeMapValues<PipelineStage>(
          map['stages']!,
          (value) =>
              PipelineStage.fromMap((value as Map).cast<String, dynamic>()),
        ),
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
