// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_templates_template.dart';

/// Result data returned by getTemplates.
class GetTemplatesResult {
  final String? awsRegion;
  final String? id;
  /// AWS Region to which the template applies.
  final String? region;
  /// A list of quota increase templates for specified region. See `templates`.
  final List<GetTemplatesTemplate>? templates;

  /// Creates a new [GetTemplatesResult].
  /// [awsRegion] Optional.
  /// [id] Optional.
  /// [region] AWS Region to which the template applies.
  /// [templates] A list of quota increase templates for specified region. See `templates`.
  const GetTemplatesResult({
    this.awsRegion,
    this.id,
    this.region,
    this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegion': ?awsRegion,
      'id': ?id,
      'region': ?region,
      'templates': ?(() { final guardedValue = templates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetTemplatesTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetTemplatesResult(
      awsRegion: (() { final guardedValue = map['awsRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetTemplatesTemplate>(guardedValue, (value) => GetTemplatesTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
