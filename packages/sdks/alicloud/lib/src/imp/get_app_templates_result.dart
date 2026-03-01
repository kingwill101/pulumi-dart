// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_templates_template.dart';

/// Result data returned by getAppTemplates.
class GetAppTemplatesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;
  final List<GetAppTemplatesTemplate> templates;

  /// Creates a new [GetAppTemplatesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [templates] Required.
  GetAppTemplatesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    required this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'templates': pulumi.Input.encodeList<GetAppTemplatesTemplate, Map<String, dynamic>>(templates, (value) => value.toMap()),
    };
  }

  factory GetAppTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetAppTemplatesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      templates: pulumi.Input.decodeList<GetAppTemplatesTemplate>(map['templates'], (value) => GetAppTemplatesTemplate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

