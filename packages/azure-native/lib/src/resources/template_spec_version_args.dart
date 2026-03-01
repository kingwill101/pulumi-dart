// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_template_artifact.dart';

/// {@template pulumi_resources_template_spec_version_args_doc}
/// The set of arguments for TemplateSpecVersion.
/// {@endtemplate}
/// {@macro pulumi_resources_template_spec_version_args_doc}
class TemplateSpecVersionArgs {
  /// Template Spec version description.
  final pulumi.Input<String>? description;
  /// An array of linked template artifacts.
  final pulumi.Input<List<LinkedTemplateArtifact>>? linkedTemplates;
  /// The location of the Template Spec Version. It must match the location of the parent Template Spec.
  final pulumi.Input<String>? location;
  /// The main Azure Resource Manager template content.
  final pulumi.Input<dynamic>? mainTemplate;
  /// The version metadata. Metadata is an open-ended object and is typically a collection of key-value pairs.
  final pulumi.Input<dynamic>? metadata;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the Template Spec.
  final pulumi.Input<String> templateSpecName;
  /// The version of the Template Spec.
  final pulumi.Input<String>? templateSpecVersion;
  /// The Azure Resource Manager template UI definition content.
  final pulumi.Input<dynamic>? uiFormDefinition;

  /// Creates a new [TemplateSpecVersionArgs].
  /// [description] Template Spec version description.
  /// [linkedTemplates] An array of linked template artifacts.
  /// [location] The location of the Template Spec Version. It must match the location of the parent Template Spec.
  /// [mainTemplate] The main Azure Resource Manager template content.
  /// [metadata] The version metadata. Metadata is an open-ended object and is typically a collection of key-value pairs.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [templateSpecName] Name of the Template Spec.
  /// [templateSpecVersion] The version of the Template Spec.
  /// [uiFormDefinition] The Azure Resource Manager template UI definition content.
  TemplateSpecVersionArgs({
    String? description,
    List<LinkedTemplateArtifact>? linkedTemplates,
    String? location,
    dynamic mainTemplate,
    dynamic metadata,
    required String resourceGroupName,
    Map<String, String>? tags,
    required String templateSpecName,
    String? templateSpecVersion,
    dynamic uiFormDefinition,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      linkedTemplates = pulumi.Input.asOptionalInput<List<LinkedTemplateArtifact>>(linkedTemplates),
      location = pulumi.Input.asOptionalInput<String>(location),
      mainTemplate = pulumi.Input.asOptionalInput<dynamic>(mainTemplate),
      metadata = pulumi.Input.asOptionalInput<dynamic>(metadata),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateSpecName = pulumi.Input.asInput<String>(templateSpecName),
      templateSpecVersion = pulumi.Input.asOptionalInput<String>(templateSpecVersion),
      uiFormDefinition = pulumi.Input.asOptionalInput<dynamic>(uiFormDefinition);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'linkedTemplates': ?pulumi.Input.mapOptionalInputValue<List<LinkedTemplateArtifact>, List<Map<String, dynamic>>>(linkedTemplates, (value) => pulumi.Input.encodeList<LinkedTemplateArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'mainTemplate': ?mainTemplate,
      'metadata': ?metadata,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'templateSpecName': templateSpecName,
      'templateSpecVersion': ?templateSpecVersion,
      'uiFormDefinition': ?uiFormDefinition,
    };
  }

  factory TemplateSpecVersionArgs.fromMap(Map<String, dynamic> map) {
    return TemplateSpecVersionArgs(
      description: map['description'] == null ? null : map['description'] as String,
      linkedTemplates: map['linkedTemplates'] == null ? null : pulumi.Input.decodeList<LinkedTemplateArtifact>(map['linkedTemplates'], (value) => LinkedTemplateArtifact.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      mainTemplate: map['mainTemplate'] == null ? null : map['mainTemplate'],
      metadata: map['metadata'] == null ? null : map['metadata'],
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      templateSpecName: map['templateSpecName'] as String,
      templateSpecVersion: map['templateSpecVersion'] == null ? null : map['templateSpecVersion'] as String,
      uiFormDefinition: map['uiFormDefinition'] == null ? null : map['uiFormDefinition'],
    );
  }
}

