// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_scratch_preference_parameter.dart';
import 'template_scratch_source_resource.dart';
import 'template_scratch_source_resource_group.dart';
import 'template_scratch_source_tag.dart';

/// Input properties used for looking up and filtering TemplateScratch resources.
class TemplateScratchState {
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
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The type of the Template scan. Valid Values: `ResourceImport` or `ArchitectureReplication`.
  final pulumi.Input<String>? templateScratchType;

  /// Creates a new [TemplateScratchState].
  /// [description] The Description of the Template Scratch.
  /// [executionMode] The execution mode. Valid Values: `Async` or `Sync`.
  /// [logicalIdStrategy] Logical ID generation strategy. Valid Values: `LongTypePrefixAndIndexSuffix`, `LongTypePrefixAndHashSuffix` and `ShortTypePrefixAndHashSuffix`.
  /// [preferenceParameters] Priority parameter. See the following `Block preference_parameters`.
  /// [sourceResourceGroup] Source resource grouping. See the following `Block source_resource_group`.
  /// [sourceResources] Source resource. See the following `Block source_resources`.
  /// [sourceTag] Source tag. See the following `Block source_tag`.
  /// [status] The status of the resource.
  /// [templateScratchType] The type of the Template scan. Valid Values: `ResourceImport` or `ArchitectureReplication`.
  TemplateScratchState({
    this.description,
    this.executionMode,
    this.logicalIdStrategy,
    this.preferenceParameters,
    this.sourceResourceGroup,
    this.sourceResources,
    this.sourceTag,
    this.status,
    this.templateScratchType,
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
      'status': ?status,
      'templateScratchType': ?templateScratchType,
    };
  }

  factory TemplateScratchState.fromMap(Map<String, dynamic> map) {
    return TemplateScratchState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      executionMode: map['executionMode'] == null ? null : (map['executionMode'] as String).input(),
      logicalIdStrategy: map['logicalIdStrategy'] == null ? null : (map['logicalIdStrategy'] as String).input(),
      preferenceParameters: map['preferenceParameters'] == null ? null : (pulumi.Input.decodeList<TemplateScratchPreferenceParameter>(map['preferenceParameters'], (value) => TemplateScratchPreferenceParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceResourceGroup: map['sourceResourceGroup'] == null ? null : (TemplateScratchSourceResourceGroup.fromMap((map['sourceResourceGroup'] as Map).cast<String, dynamic>())).input(),
      sourceResources: map['sourceResources'] == null ? null : (pulumi.Input.decodeList<TemplateScratchSourceResource>(map['sourceResources'], (value) => TemplateScratchSourceResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceTag: map['sourceTag'] == null ? null : (TemplateScratchSourceTag.fromMap((map['sourceTag'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      templateScratchType: map['templateScratchType'] == null ? null : (map['templateScratchType'] as String).input(),
    );
  }
}

