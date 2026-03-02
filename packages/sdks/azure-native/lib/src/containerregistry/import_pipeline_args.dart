// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_properties.dart';
import 'import_pipeline_source_properties.dart';
import 'pipeline_trigger_properties.dart';

/// {@template pulumi_containerregistry_import_pipeline_args_doc}
/// The set of arguments for ImportPipeline.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_import_pipeline_args_doc}
class ImportPipelineArgs {
  /// The identity of the import pipeline.
  final pulumi.Input<IdentityProperties>? identity;
  /// The name of the import pipeline.
  final pulumi.Input<String>? importPipelineName;
  /// The location of the import pipeline.
  final pulumi.Input<String>? location;
  /// The list of all options configured for the pipeline.
  final pulumi.Input<List<String>>? options;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The source properties of the import pipeline.
  final pulumi.Input<ImportPipelineSourceProperties> source;
  /// The properties that describe the trigger of the import pipeline.
  final pulumi.Input<PipelineTriggerProperties>? trigger;

  /// Creates a new [ImportPipelineArgs].
  /// [identity] The identity of the import pipeline.
  /// [importPipelineName] The name of the import pipeline.
  /// [location] The location of the import pipeline.
  /// [options] The list of all options configured for the pipeline.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [source] The source properties of the import pipeline.
  /// [trigger] The properties that describe the trigger of the import pipeline.
  ImportPipelineArgs({
    this.identity,
    this.importPipelineName,
    this.location,
    this.options,
    required this.registryName,
    required this.resourceGroupName,
    required this.source,
    this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityProperties, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'importPipelineName': ?importPipelineName,
      'location': ?location,
      'options': ?options,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'source': pulumi.Input.mapInputValue<ImportPipelineSourceProperties, Map<String, dynamic>>(source, (value) => value.toMap()),
      'trigger': ?pulumi.Input.mapOptionalInputValue<PipelineTriggerProperties, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory ImportPipelineArgs.fromMap(Map<String, dynamic> map) {
    return ImportPipelineArgs(
      identity: map['identity'] == null ? null : (IdentityProperties.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      importPipelineName: map['importPipelineName'] == null ? null : (map['importPipelineName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      options: map['options'] == null ? null : ((map['options']! as List).cast<String>()).input(),
      registryName: (map['registryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      source: (ImportPipelineSourceProperties.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      trigger: map['trigger'] == null ? null : (PipelineTriggerProperties.fromMap((map['trigger']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

