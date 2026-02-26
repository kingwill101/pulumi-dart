// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getHostedZone.
class GetHostedZoneArgs {
  /// Name of the Region whose hosted zone is desired. Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetHostedZoneArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetHostedZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneArgs(
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
