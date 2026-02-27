// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTemplates.
class GetTemplatesArgs {
  /// AWS Region to which the quota increases apply.
  final Input<String>? awsRegion;

  /// AWS Region to which the quota increases apply. Use `aws.getRegion` instead.
  final Input<String>? region;

  GetTemplatesArgs({
    this.awsRegion,
    this.region,
  });

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
      awsRegion: Input.asOptionalInput<String>(map['awsRegion']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
