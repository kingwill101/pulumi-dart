// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTemplates.
class GetTemplatesArgs {
  /// AWS Region to which the quota increases apply.
  final pulumi.Input<String>? awsRegion;

  /// AWS Region to which the quota increases apply. Use `aws.getRegion` instead.
  final pulumi.Input<String>? region;

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
      awsRegion: pulumi.Input.asOptionalInput<String>(map['awsRegion']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
