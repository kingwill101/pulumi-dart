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
  const GetTemplatesResult({
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
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareType: (() { final guardedValue = map['shareType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      templates: pulumi.Input.decodeList<GetTemplatesTemplate>(map['templates']!, (value) => GetTemplatesTemplate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

