// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_scratch_preference_parameter.dart';
import 'template_scratch_source_resource.dart';
import 'template_scratch_source_resource_group.dart';
import 'template_scratch_source_tag.dart';

/// {@template pulumi_ros_template_scratch_template_scratch_args_doc}
/// The set of arguments for TemplateScratch.
/// {@endtemplate}
/// {@macro pulumi_ros_template_scratch_template_scratch_args_doc}
class TemplateScratchArgs {
  /// The Description of the Template Scratch.
  final pulumi.Input<String>? description;
  /// The execution mode. Valid Values: `Async` or `Sync`.
  final pulumi.Input<String>? executionMode;
  /// Logical ID generation strategy. Valid Values: `LongTypePrefixAndIndexSuffix`, `LongTypePrefixAndHashSuffix` and `ShortTypePrefixAndHashSuffix`.
  final pulumi.Input<String>? logicalIdStrategy;
  /// Priority parameter. See the following `Block preference_parameters`.
  final pulumi.Input<List<TemplateScratchPreferenceParameter>>? preferenceParameters;
  /// Source resource grouping. See the following `Block source_resource_group`.
  final pulumi.Input<TemplateScratchSourceResourceGroup>? sourceResourceGroup;
  /// Source resource. See the following `Block source_resources`.
  final pulumi.Input<List<TemplateScratchSourceResource>>? sourceResources;
  /// Source tag. See the following `Block source_tag`.
  final pulumi.Input<TemplateScratchSourceTag>? sourceTag;
  /// The type of the Template scan. Valid Values: `ResourceImport` or `ArchitectureReplication`.
  final pulumi.Input<String> templateScratchType;

  /// Creates a new [TemplateScratchArgs].
  /// [description] The Description of the Template Scratch.
  /// [executionMode] The execution mode. Valid Values: `Async` or `Sync`.
  /// [logicalIdStrategy] Logical ID generation strategy. Valid Values: `LongTypePrefixAndIndexSuffix`, `LongTypePrefixAndHashSuffix` and `ShortTypePrefixAndHashSuffix`.
  /// [preferenceParameters] Priority parameter. See the following `Block preference_parameters`.
  /// [sourceResourceGroup] Source resource grouping. See the following `Block source_resource_group`.
  /// [sourceResources] Source resource. See the following `Block source_resources`.
  /// [sourceTag] Source tag. See the following `Block source_tag`.
  /// [templateScratchType] The type of the Template scan. Valid Values: `ResourceImport` or `ArchitectureReplication`.
  const TemplateScratchArgs({
    this.description,
    this.executionMode,
    this.logicalIdStrategy,
    this.preferenceParameters,
    this.sourceResourceGroup,
    this.sourceResources,
    this.sourceTag,
    required this.templateScratchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'executionMode': ?executionMode,
      'logicalIdStrategy': ?logicalIdStrategy,
      'preferenceParameters': ?pulumi.Input.mapOptionalInputValue<List<TemplateScratchPreferenceParameter>, List<Map<String, dynamic>>>(preferenceParameters, (value) => pulumi.Input.encodeList<TemplateScratchPreferenceParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceResourceGroup': ?pulumi.Input.mapOptionalInputValue<TemplateScratchSourceResourceGroup, Map<String, dynamic>>(sourceResourceGroup, (value) => value.toMap()),
      'sourceResources': ?pulumi.Input.mapOptionalInputValue<List<TemplateScratchSourceResource>, List<Map<String, dynamic>>>(sourceResources, (value) => pulumi.Input.encodeList<TemplateScratchSourceResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceTag': ?pulumi.Input.mapOptionalInputValue<TemplateScratchSourceTag, Map<String, dynamic>>(sourceTag, (value) => value.toMap()),
      'templateScratchType': templateScratchType,
    };
  }

  factory TemplateScratchArgs.fromMap(Map<String, dynamic> map) {
    return TemplateScratchArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionMode: (() { final guardedValue = map['executionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logicalIdStrategy: (() { final guardedValue = map['logicalIdStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferenceParameters: (() { final guardedValue = map['preferenceParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TemplateScratchPreferenceParameter>(guardedValue, (value) => TemplateScratchPreferenceParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceResourceGroup: (() { final guardedValue = map['sourceResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateScratchSourceResourceGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceResources: (() { final guardedValue = map['sourceResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TemplateScratchSourceResource>(guardedValue, (value) => TemplateScratchSourceResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceTag: (() { final guardedValue = map['sourceTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateScratchSourceTag.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      templateScratchType: pulumi.Input.fromValue(map['templateScratchType'] as String),
    );
  }
}

