// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_templates_template.dart';

/// Result data returned by getTemplates.
class GetTemplatesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? shareType;
  final Map<String, String>? tags;
  final String? templateName;
  final List<GetTemplatesTemplate> templates;

  /// Creates a new [GetTemplatesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [shareType] Optional.
  /// [tags] Optional.
  /// [templateName] Optional.
  /// [templates] Required.
  GetTemplatesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.shareType,
    this.tags,
    this.templateName,
    required this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'shareType': ?shareType,
      'tags': ?tags,
      'templateName': ?templateName,
      'templates': pulumi.Input.encodeList<GetTemplatesTemplate, Map<String, dynamic>>(templates, (value) => value.toMap()),
    };
  }

  factory GetTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetTemplatesResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      shareType: map['shareType'] == null ? null : map['shareType'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      templateName: map['templateName'] == null ? null : map['templateName'] as String,
      templates: pulumi.Input.decodeList<GetTemplatesTemplate>(map['templates'], (value) => GetTemplatesTemplate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

