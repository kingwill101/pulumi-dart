// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicequotas_get_templates_get_templates_args_doc}
/// Arguments for getTemplates.
/// {@endtemplate}
/// {@macro pulumi_servicequotas_get_templates_get_templates_args_doc}
class GetTemplatesArgs {
  /// AWS Region to which the quota increases apply.
  final pulumi.Input<String?>? awsRegion;
  /// AWS Region to which the quota increases apply. Use `aws.getRegion` instead.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetTemplatesArgs].
  /// [awsRegion] AWS Region to which the quota increases apply.
  /// [region] AWS Region to which the quota increases apply. Use `aws.getRegion` instead.
  const GetTemplatesArgs({
    this.awsRegion,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegion': ?awsRegion,
      'region': ?region,
    };
  }

  factory GetTemplatesArgs.fromMap(Map<String, dynamic> map) {
    return GetTemplatesArgs(
      awsRegion: (() { final guardedValue = map['awsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
