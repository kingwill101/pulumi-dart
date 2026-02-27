// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHostedZoneId.
class GetHostedZoneIdElbArgs {
  /// Name of the Region whose AWS ELB HostedZoneId is desired. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetHostedZoneIdElbArgs({
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

  factory GetHostedZoneIdElbArgs.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneIdElbArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
