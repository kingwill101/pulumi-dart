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
  TemplateScratchArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? executionMode,
    pulumi.Output<String>? logicalIdStrategy,
    pulumi.Output<List<TemplateScratchPreferenceParameter>>? preferenceParameters,
    pulumi.Output<TemplateScratchSourceResourceGroup>? sourceResourceGroup,
    pulumi.Output<List<TemplateScratchSourceResource>>? sourceResources,
    pulumi.Output<TemplateScratchSourceTag>? sourceTag,
    required pulumi.Output<String> templateScratchType,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      executionMode = pulumi.Input.asOptionalInput<String>(executionMode),
      logicalIdStrategy = pulumi.Input.asOptionalInput<String>(logicalIdStrategy),
      preferenceParameters = pulumi.Input.asOptionalInput<List<TemplateScratchPreferenceParameter>>(preferenceParameters),
      sourceResourceGroup = pulumi.Input.asOptionalInput<TemplateScratchSourceResourceGroup>(sourceResourceGroup),
      sourceResources = pulumi.Input.asOptionalInput<List<TemplateScratchSourceResource>>(sourceResources),
      sourceTag = pulumi.Input.asOptionalInput<TemplateScratchSourceTag>(sourceTag),
      templateScratchType = pulumi.Input.asInput<String>(templateScratchType);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      executionMode: map['executionMode'] == null ? null : pulumi.Output.create<String>(map['executionMode'] as String),
      logicalIdStrategy: map['logicalIdStrategy'] == null ? null : pulumi.Output.create<String>(map['logicalIdStrategy'] as String),
      preferenceParameters: map['preferenceParameters'] == null ? null : pulumi.Output.create<List<TemplateScratchPreferenceParameter>>(pulumi.Input.decodeList<TemplateScratchPreferenceParameter>(map['preferenceParameters'], (value) => TemplateScratchPreferenceParameter.fromMap((value as Map).cast<String, dynamic>()))),
      sourceResourceGroup: map['sourceResourceGroup'] == null ? null : pulumi.Output.create<TemplateScratchSourceResourceGroup>(TemplateScratchSourceResourceGroup.fromMap((map['sourceResourceGroup'] as Map).cast<String, dynamic>())),
      sourceResources: map['sourceResources'] == null ? null : pulumi.Output.create<List<TemplateScratchSourceResource>>(pulumi.Input.decodeList<TemplateScratchSourceResource>(map['sourceResources'], (value) => TemplateScratchSourceResource.fromMap((value as Map).cast<String, dynamic>()))),
      sourceTag: map['sourceTag'] == null ? null : pulumi.Output.create<TemplateScratchSourceTag>(TemplateScratchSourceTag.fromMap((map['sourceTag'] as Map).cast<String, dynamic>())),
      templateScratchType: pulumi.Output.create<String>(map['templateScratchType'] as String),
    );
  }
}

