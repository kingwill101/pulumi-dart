// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicequotas_get_templates_get_templates_args_doc}
/// Arguments for getTemplates.
/// {@endtemplate}
/// {@macro pulumi_servicequotas_get_templates_get_templates_args_doc}
class GetTemplatesArgs {
  /// AWS Region to which the quota increases apply.
  final pulumi.Input<String>? awsRegion;

  /// AWS Region to which the quota increases apply. Use `aws.getRegion` instead.
  final pulumi.Input<String>? region;

  /// Creates a new [GetTemplatesArgs].
  /// [awsRegion] AWS Region to which the quota increases apply.
  /// [region] AWS Region to which the quota increases apply. Use `aws.getRegion` instead.
  GetTemplatesArgs({
    String? awsRegion,
    String? region,
  })  : awsRegion = pulumi.Input.asOptionalInput<String>(awsRegion),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsRegionValue = awsRegion;
    if (awsRegionValue != null) {
      map['awsRegion'] = awsRegionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetTemplatesArgs.fromMap(Map<String, dynamic> map) {
    return GetTemplatesArgs(
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
