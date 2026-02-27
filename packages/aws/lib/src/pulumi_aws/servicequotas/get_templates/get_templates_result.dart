// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_templates_template/get_templates_template.dart';

/// Result data returned by getTemplates.
class GetTemplatesResult {
  final String? awsRegion;
  final String id;

  /// AWS Region to which the template applies.
  final String? region;

  /// A list of quota increase templates for specified region. See `templates`.
  final List<GetTemplatesTemplate> templates;

  GetTemplatesResult({
    this.awsRegion,
    required this.id,
    this.region,
    required this.templates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsRegionValue = awsRegion;
    if (awsRegionValue != null) {
      map['awsRegion'] = awsRegionValue;
    }
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['templates'] =
        pulumi.Input.encodeList<GetTemplatesTemplate, Map<String, dynamic>>(
            templates, (value) => value.toMap());
    return map;
  }

  factory GetTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetTemplatesResult(
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      id: map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      templates: pulumi.Input.decodeList<GetTemplatesTemplate>(
          map['templates'],
          (value) => GetTemplatesTemplate.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
