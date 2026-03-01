// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_templates_template.dart';

/// Result data returned by getTemplates.
class GetTemplatesResult {
  final String? awsRegion;
  final String id;

  /// AWS Region to which the template applies.
  final String? region;

  /// A list of quota increase templates for specified region. See `templates`.
  final List<GetTemplatesTemplate> templates;

  /// Creates a new [GetTemplatesResult].
  /// [awsRegion] Optional.
  /// [id] Required.
  /// [region] AWS Region to which the template applies.
  /// [templates] A list of quota increase templates for specified region. See `templates`.
  GetTemplatesResult({
    this.awsRegion,
    required this.id,
    this.region,
    required this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegion': ?awsRegion,
      'id': id,
      'region': ?region,
      'templates':
          pulumi.Input.encodeList<GetTemplatesTemplate, Map<String, dynamic>>(
            templates,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetTemplatesResult(
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      id: map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      templates: pulumi.Input.decodeList<GetTemplatesTemplate>(
        map['templates'],
        (value) => GetTemplatesTemplate.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
