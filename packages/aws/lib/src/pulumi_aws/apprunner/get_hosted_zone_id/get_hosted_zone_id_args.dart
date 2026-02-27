// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHostedZoneId.
class GetHostedZoneIdArgs {
  /// Name of the Region whose AWS App Runner service HostedZoneId is desired. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetHostedZoneIdArgs({
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

  factory GetHostedZoneIdArgs.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneIdArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
