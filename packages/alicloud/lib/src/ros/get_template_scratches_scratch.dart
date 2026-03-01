// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_template_scratches_scratch_preference_parameter.dart';
import 'get_template_scratches_scratch_source_resource.dart';
import 'get_template_scratches_scratch_source_resource_group.dart';
import 'get_template_scratches_scratch_source_tag.dart';
import 'get_template_scratches_scratch_stack.dart';

class GetTemplateScratchesScratch {
  /// The creation time of the resource.
  final String createTime;
  /// The description of the Template Scratch.
  final String description;
  /// The ID of the Template Scratch.
  final String id;
  /// The Logical ID generation strategy of the Template Scratch.
  final String logicalIdStrategy;
  /// Priority parameter.
  final List<GetTemplateScratchesScratchPreferenceParameter> preferenceParameters;
  /// Source resource grouping.
  final List<GetTemplateScratchesScratchSourceResourceGroup> sourceResourceGroups;
  /// Source resource.
  final List<GetTemplateScratchesScratchSourceResource> sourceResources;
  /// The Source label list.
  final List<GetTemplateScratchesScratchSourceTag> sourceTags;
  /// A list of resource stacks associated with the resource scene.
  final List<GetTemplateScratchesScratchStack> stacks;
  /// The status of the resource.
  final String status;
  /// The ID of the Template Scratch.
  final String templateScratchId;
  /// The type of the Template Scratch.
  final String templateScratchType;

  /// Creates a new [GetTemplateScratchesScratch].
  /// [createTime] The creation time of the resource.
  /// [description] The description of the Template Scratch.
  /// [id] The ID of the Template Scratch.
  /// [logicalIdStrategy] The Logical ID generation strategy of the Template Scratch.
  /// [preferenceParameters] Priority parameter.
  /// [sourceResourceGroups] Source resource grouping.
  /// [sourceResources] Source resource.
  /// [sourceTags] The Source label list.
  /// [stacks] A list of resource stacks associated with the resource scene.
  /// [status] The status of the resource.
  /// [templateScratchId] The ID of the Template Scratch.
  /// [templateScratchType] The type of the Template Scratch.
  GetTemplateScratchesScratch({
    required this.createTime,
    required this.description,
    required this.id,
    required this.logicalIdStrategy,
    required this.preferenceParameters,
    required this.sourceResourceGroups,
    required this.sourceResources,
    required this.sourceTags,
    required this.stacks,
    required this.status,
    required this.templateScratchId,
    required this.templateScratchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'id': id,
      'logicalIdStrategy': logicalIdStrategy,
      'preferenceParameters': pulumi.Input.encodeList<GetTemplateScratchesScratchPreferenceParameter, Map<String, dynamic>>(preferenceParameters, (value) => value.toMap()),
      'sourceResourceGroups': pulumi.Input.encodeList<GetTemplateScratchesScratchSourceResourceGroup, Map<String, dynamic>>(sourceResourceGroups, (value) => value.toMap()),
      'sourceResources': pulumi.Input.encodeList<GetTemplateScratchesScratchSourceResource, Map<String, dynamic>>(sourceResources, (value) => value.toMap()),
      'sourceTags': pulumi.Input.encodeList<GetTemplateScratchesScratchSourceTag, Map<String, dynamic>>(sourceTags, (value) => value.toMap()),
      'stacks': pulumi.Input.encodeList<GetTemplateScratchesScratchStack, Map<String, dynamic>>(stacks, (value) => value.toMap()),
      'status': status,
      'templateScratchId': templateScratchId,
      'templateScratchType': templateScratchType,
    };
  }

  factory GetTemplateScratchesScratch.fromMap(Map<String, dynamic> map) {
    return GetTemplateScratchesScratch(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      logicalIdStrategy: map['logicalIdStrategy'] as String,
      preferenceParameters: pulumi.Input.decodeList<GetTemplateScratchesScratchPreferenceParameter>(map['preferenceParameters'], (value) => GetTemplateScratchesScratchPreferenceParameter.fromMap((value as Map).cast<String, dynamic>())),
      sourceResourceGroups: pulumi.Input.decodeList<GetTemplateScratchesScratchSourceResourceGroup>(map['sourceResourceGroups'], (value) => GetTemplateScratchesScratchSourceResourceGroup.fromMap((value as Map).cast<String, dynamic>())),
      sourceResources: pulumi.Input.decodeList<GetTemplateScratchesScratchSourceResource>(map['sourceResources'], (value) => GetTemplateScratchesScratchSourceResource.fromMap((value as Map).cast<String, dynamic>())),
      sourceTags: pulumi.Input.decodeList<GetTemplateScratchesScratchSourceTag>(map['sourceTags'], (value) => GetTemplateScratchesScratchSourceTag.fromMap((value as Map).cast<String, dynamic>())),
      stacks: pulumi.Input.decodeList<GetTemplateScratchesScratchStack>(map['stacks'], (value) => GetTemplateScratchesScratchStack.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      templateScratchId: map['templateScratchId'] as String,
      templateScratchType: map['templateScratchType'] as String,
    );
  }
}

