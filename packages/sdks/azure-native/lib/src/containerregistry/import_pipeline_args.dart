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
  const ImportPipelineArgs({
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
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      importPipelineName: (() { final guardedValue = map['importPipelineName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      source: pulumi.Input.fromValue(ImportPipelineSourceProperties.fromMap((map['source']! as Map).cast<String, dynamic>())),
      trigger: (() { final guardedValue = map['trigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineTriggerProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

