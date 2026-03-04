// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_template_scratches_scratch_preference_parameter.dart';
import 'get_template_scratches_scratch_source_resource.dart';
import 'get_template_scratches_scratch_source_resource_group.dart';
import 'get_template_scratches_scratch_source_tag.dart';
import 'get_template_scratches_scratch_stack.dart';

class GetTemplateScratchesScratch {
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;

  /// The description of the Template Scratch.
  final pulumi.Input<String> description;

  /// The ID of the Template Scratch.
  final pulumi.Input<String> id;

  /// The Logical ID generation strategy of the Template Scratch.
  final pulumi.Input<String> logicalIdStrategy;

  /// Priority parameter.
  final pulumi.Input<List<GetTemplateScratchesScratchPreferenceParameter>>
  preferenceParameters;

  /// Source resource grouping.
  final pulumi.Input<List<GetTemplateScratchesScratchSourceResourceGroup>>
  sourceResourceGroups;

  /// Source resource.
  final pulumi.Input<List<GetTemplateScratchesScratchSourceResource>>
  sourceResources;

  /// The Source label list.
  final pulumi.Input<List<GetTemplateScratchesScratchSourceTag>> sourceTags;

  /// A list of resource stacks associated with the resource scene.
  final pulumi.Input<List<GetTemplateScratchesScratchStack>> stacks;

  /// The status of the resource.
  final pulumi.Input<String> status;

  /// The ID of the Template Scratch.
  final pulumi.Input<String> templateScratchId;

  /// The type of the Template Scratch.
  final pulumi.Input<String> templateScratchType;

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
      'preferenceParameters':
          pulumi.Input.mapInputValue<
            List<GetTemplateScratchesScratchPreferenceParameter>,
            List<Map<String, dynamic>>
          >(
            preferenceParameters,
            (value) =>
                pulumi.Input.encodeList<
                  GetTemplateScratchesScratchPreferenceParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sourceResourceGroups':
          pulumi.Input.mapInputValue<
            List<GetTemplateScratchesScratchSourceResourceGroup>,
            List<Map<String, dynamic>>
          >(
            sourceResourceGroups,
            (value) =>
                pulumi.Input.encodeList<
                  GetTemplateScratchesScratchSourceResourceGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sourceResources':
          pulumi.Input.mapInputValue<
            List<GetTemplateScratchesScratchSourceResource>,
            List<Map<String, dynamic>>
          >(
            sourceResources,
            (value) =>
                pulumi.Input.encodeList<
                  GetTemplateScratchesScratchSourceResource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sourceTags':
          pulumi.Input.mapInputValue<
            List<GetTemplateScratchesScratchSourceTag>,
            List<Map<String, dynamic>>
          >(
            sourceTags,
            (value) =>
                pulumi.Input.encodeList<
                  GetTemplateScratchesScratchSourceTag,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'stacks':
          pulumi.Input.mapInputValue<
            List<GetTemplateScratchesScratchStack>,
            List<Map<String, dynamic>>
          >(
            stacks,
            (value) =>
                pulumi.Input.encodeList<
                  GetTemplateScratchesScratchStack,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'status': status,
      'templateScratchId': templateScratchId,
      'templateScratchType': templateScratchType,
    };
  }

  factory GetTemplateScratchesScratch.fromMap(Map<String, dynamic> map) {
    return GetTemplateScratchesScratch(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      logicalIdStrategy: pulumi.Input.fromValue(
        map['logicalIdStrategy'] as String,
      ),
      preferenceParameters: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetTemplateScratchesScratchPreferenceParameter>(
          map['preferenceParameters']!,
          (value) => GetTemplateScratchesScratchPreferenceParameter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      sourceResourceGroups: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetTemplateScratchesScratchSourceResourceGroup>(
          map['sourceResourceGroups']!,
          (value) => GetTemplateScratchesScratchSourceResourceGroup.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      sourceResources: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetTemplateScratchesScratchSourceResource>(
          map['sourceResources']!,
          (value) => GetTemplateScratchesScratchSourceResource.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      sourceTags: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetTemplateScratchesScratchSourceTag>(
          map['sourceTags']!,
          (value) => GetTemplateScratchesScratchSourceTag.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      stacks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetTemplateScratchesScratchStack>(
          map['stacks']!,
          (value) => GetTemplateScratchesScratchStack.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
      templateScratchId: pulumi.Input.fromValue(
        map['templateScratchId'] as String,
      ),
      templateScratchType: pulumi.Input.fromValue(
        map['templateScratchType'] as String,
      ),
    );
  }
}
