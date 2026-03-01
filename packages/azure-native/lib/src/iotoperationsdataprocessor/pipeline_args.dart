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
    String? description,
    required bool enabled,
    required ExtendedLocation extendedLocation,
    required PipelineInput input,
    required String instanceName,
    String? location,
    String? pipelineName,
    required String resourceGroupName,
    required Map<String, PipelineStage> stages,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asInput<bool>(enabled),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      input = pulumi.Input.asInput<PipelineInput>(input),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      location = pulumi.Input.asOptionalInput<String>(location),
      pipelineName = pulumi.Input.asOptionalInput<String>(pipelineName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      stages = pulumi.Input.asInput<Map<String, PipelineStage>>(stages),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enabled': enabled,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'input': pulumi.Input.mapInputValue<PipelineInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'instanceName': instanceName,
      'location': ?location,
      'pipelineName': ?pipelineName,
      'resourceGroupName': resourceGroupName,
      'stages': pulumi.Input.mapInputValue<Map<String, PipelineStage>, Map<String, Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeMapValues<PipelineStage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory PipelineArgs.fromMap(Map<String, dynamic> map) {
    return PipelineArgs(
      description: map['description'] == null ? null : map['description'] as String,
      enabled: map['enabled'] as bool,
      extendedLocation: ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      input: PipelineInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      instanceName: map['instanceName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      pipelineName: map['pipelineName'] == null ? null : map['pipelineName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      stages: pulumi.Input.decodeMapValues<PipelineStage>(map['stages'], (value) => PipelineStage.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

