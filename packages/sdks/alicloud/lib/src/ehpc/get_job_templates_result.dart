// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_templates_template.dart';

/// Result data returned by getJobTemplates.
class GetJobTemplatesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  /// A list of Ehpc Job Templates. Each element contains the following attributes:
  final List<GetJobTemplatesTemplate> templates;

  /// Creates a new [GetJobTemplatesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [templates] A list of Ehpc Job Templates. Each element contains the following attributes:
  const GetJobTemplatesResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'templates': pulumi.Input.encodeList<GetJobTemplatesTemplate, Map<String, dynamic>>(templates, (value) => value.toMap()),
    };
  }

  factory GetJobTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetJobTemplatesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      templates: pulumi.Input.decodeList<GetJobTemplatesTemplate>(map['templates']!, (value) => GetJobTemplatesTemplate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

